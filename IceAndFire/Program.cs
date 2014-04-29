using System;
using System.Data;
using System.Windows.Forms;
using System.IO;

namespace IceAndFire
{
	public class Program
	{
		public static void Main (string[] args)
        {
            // set up console
			Console.Title = "A Database of Ice and Fire";
			Console.WindowWidth = 150;
			Program.WriteLogo();

			// get the database filename
			string dbFilename = ConsoleExtensions.DoEditField("Enter database filename", @"..\..\..\IceAndFire.db");
			SQLiteDataUtility.DatabaseFilename = Path.GetFullPath(dbFilename);
			Console.Title += string.Format(" - {0}", SQLiteDataUtility.DatabaseFilename);
			Console.WriteLine();

			// interactive menu
			while (true)
			{
				Console.Clear();
				Program.WriteLogo();
				Console.WriteLine("Select an option:");
				Console.WriteLine("1. Look up character.");
				Console.WriteLine("2. Look up house.");
				Console.WriteLine("3. Edit character.");
				Console.WriteLine("4. Delete character.");
				Console.WriteLine("-- Type exit to quit.");
				Console.WriteLine();
				Console.Write("Enter choice: ");
				string choice = ConsoleExtensions.ReadLine();
				switch (choice)
				{
					case "1":
						Program.LookUpCharacter();
						break;
					case "2":
						Program.LookUpHouse();
						break;
					case "3":
						Program.EditCharacter();
						break;
					case "4":
			                        Program.deleteChar();
			                        break;
					case "exit":
						return;
					default:
						Console.WriteLine("Choice not recognized.");
						break;
				}
				
				// wait on user
				Console.WriteLine();
				Console.Write("Press any key to return to the menu...");
				Console.ReadKey();
			}
		}

		private static void WriteLogo()
		{
			ConsoleExtensions.WriteCentered(" A Database of Ice and Fire ", '-');
			ConsoleExtensions.WriteCentered("by Kevin Phelps, Leo Tanoue, Kirk Tolleshaug, and Dylan Stark", '-');
			Console.WriteLine();
		}

		private static void LookUpCharacter()
		{
			// write info
			Console.Clear();
			Program.WriteLogo();
			ConsoleExtensions.WriteCentered("Task: Look up character");
			Console.WriteLine();

			// get name pattern
			Console.Write("Enter character name pattern: ");
			string characterNamePattern = ConsoleExtensions.ReadLine();
			Console.WriteLine();

			// query for characters
			string characterNameQuery = "SELECT * FROM Character JOIN House ON Character.HouseID=House.HouseID " +
										"WHERE (IFNULL(FirstName,'') || IFNULL(MiddleName,'') || IFNULL(LastName,'')) LIKE '%" + characterNamePattern + "%';";
			DataTable characterTable = SQLiteDataUtility.ExecuteQuery(characterNameQuery);
			
			// write table header
			Console.WriteLine("{0} character(s) found:", characterTable.Rows.Count);
			ConsoleExtensions.WritePadded("ID", 4);
			ConsoleExtensions.WritePadded("First Name", 20);
			ConsoleExtensions.WritePadded("Middle Name", 20);
			ConsoleExtensions.WritePadded("Last Name", 20);
			ConsoleExtensions.WritePadded("Alive", 6);
			ConsoleExtensions.WritePadded("Position", 20);
			ConsoleExtensions.WritePadded("Religion", 20);
			ConsoleExtensions.WritePadded("Organization", 20);
			ConsoleExtensions.WritePadded("House", 20);
			for (int i = 0; i < Console.WindowWidth; ++i)
				Console.Write('-');
			
			// write records
			foreach (DataRow characterRow in characterTable.Rows)
			{
				ConsoleExtensions.WritePadded(characterRow["CharID"].ToString(), 4);
				ConsoleExtensions.WritePadded(characterRow["FirstName"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["MiddleName"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["LastName"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["IsAlive"] != DBNull.Value ? ((string)characterRow["IsAlive"] == "Y" ? "Yes" : "No") : "", 6);
				ConsoleExtensions.WritePadded(characterRow["Position"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["Religion"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["Organization"].ToString(), 20);
				ConsoleExtensions.WritePadded(characterRow["HouseName"].ToString(), 20);
			}
		}

		private static void LookUpHouse()
		{
			// write info
			Console.Clear();
			Program.WriteLogo();
			ConsoleExtensions.WriteCentered("Task: Look up house");
			Console.WriteLine();

			// get name pattern
			Console.Write("Enter house name pattern: ");
			string houseNamePattern = ConsoleExtensions.ReadLine();
			Console.WriteLine();

			// query for characters
			string houseNameQuery = "SELECT * FROM House JOIN Location ON House.LocID=Location.LocID " +
									"WHERE HouseName LIKE '%" + houseNamePattern + "%';";
			DataTable houseTable = SQLiteDataUtility.ExecuteQuery(houseNameQuery);
			
			// write table header
			Console.WriteLine("{0} house(s) found:", houseTable.Rows.Count);
			ConsoleExtensions.WritePadded("ID", 5);
			ConsoleExtensions.WritePadded("House Name", 25);
			ConsoleExtensions.WritePadded("House Words", 30);
			ConsoleExtensions.WritePadded("House Sigil", 60);
			ConsoleExtensions.WritePadded("Location", 30);
			for (int i = 0; i < Console.WindowWidth; ++i)
				Console.Write('-');
			
			// write records
			foreach (DataRow houseRow in houseTable.Rows)
			{
				ConsoleExtensions.WritePadded(houseRow["HouseID"].ToString(), 5);
				ConsoleExtensions.WritePadded(houseRow["HouseName"].ToString(), 25);
				ConsoleExtensions.WritePadded(houseRow["HouseWords"].ToString(), 30);
				ConsoleExtensions.WritePadded(houseRow["HouseSigil"].ToString(), 60);
				ConsoleExtensions.WritePadded(houseRow["LocName"].ToString(), 30);
			}
		}

		private static void EditCharacter()
		{
			// write info
			Console.Clear();
			Program.WriteLogo();
			ConsoleExtensions.WriteCentered("Task: Edit character");
			Console.WriteLine();

			// get name pattern
			Console.Write("Enter character id (or exit if you need to look it up): ");
			string characterIDStr = ConsoleExtensions.ReadLine();
			Console.WriteLine();

			if (characterIDStr != "exit")
			{
				int characterID;
				if (int.TryParse(characterIDStr, out characterID))
				{
					string characterQuery = "SELECT * FROM Character JOIN House ON Character.HouseID=House.HouseID " +
											"WHERE CharID=" + characterID.ToString() + ";";
					DataTable characterTable = SQLiteDataUtility.ExecuteQuery(characterQuery);
					if (characterTable.Rows.Count == 1)
					{
						DataRow characterRow = characterTable.Rows[0];

						// write character
						ConsoleExtensions.WritePadded("ID", 4);
						ConsoleExtensions.WritePadded("First Name", 20);
						ConsoleExtensions.WritePadded("Middle Name", 20);
						ConsoleExtensions.WritePadded("Last Name", 20);
						ConsoleExtensions.WritePadded("Alive", 6);
						ConsoleExtensions.WritePadded("Position", 20);
						ConsoleExtensions.WritePadded("Religion", 20);
						ConsoleExtensions.WritePadded("Organization", 20);
						ConsoleExtensions.WritePadded("House", 20);
						for (int i = 0; i < Console.WindowWidth; ++i)
							Console.Write('-');
						ConsoleExtensions.WritePadded(characterRow["CharID"].ToString(), 4);
						ConsoleExtensions.WritePadded(characterRow["FirstName"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["MiddleName"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["LastName"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["IsAlive"] != DBNull.Value ? ((string)characterRow["IsAlive"] == "Y" ? "Yes" : "No") : "", 6);
						ConsoleExtensions.WritePadded(characterRow["Position"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["Religion"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["Organization"].ToString(), 20);
						ConsoleExtensions.WritePadded(characterRow["HouseName"].ToString(), 20);
						Console.WriteLine();

						// take new values
						Console.WriteLine("Enter new values:");
						string firstName = ConsoleExtensions.DoEditField("First Name", characterRow["FirstName"].ToString());
						string middleName = ConsoleExtensions.DoEditField("Middle Name", characterRow["MiddleName"].ToString());
						string lastName = ConsoleExtensions.DoEditField("Last Name", characterRow["LastName"].ToString());
						string isAlive = ConsoleExtensions.DoEditField("Is Alive (Y, N, or blank)", characterRow["IsAlive"].ToString());
						while ((isAlive != "") && (isAlive != "Y") && (isAlive != "N"))
						{
							Console.WriteLine("ERROR: Invalid Entry!");
							isAlive = ConsoleExtensions.DoEditField("Is Alive (Y, N, or blank)", characterRow["IsAlive"].ToString());
						}
						string position = ConsoleExtensions.DoEditField("Position", characterRow["Position"].ToString());
						string religion = ConsoleExtensions.DoEditField("Religion", characterRow["Religion"].ToString());
						string organization = ConsoleExtensions.DoEditField("Organization", characterRow["Organization"].ToString());
						string houseName = ConsoleExtensions.DoEditField("House Name", characterRow["HouseName"].ToString());

						// update all values but house
						Console.WriteLine("\nUpdating all values except house...");
						string updateCharacterSQL = "UPDATE Character SET " +
													"FirstName='" + firstName.Replace("'", "''") + "', " +
													"MiddleName='" + middleName.Replace("'", "''") + "', " +
													"LastName='" + lastName.Replace("'", "''") + "', " +
													"IsAlive='" + isAlive + "', " +
													"Position='" + position.Replace("'", "''") + "', " +
													"Religion='" + religion.Replace("'", "''") + "', " +
													"Organization='" + organization.Replace("'", "''") + "' " +
													"WHERE CharID=" + characterID.ToString() + ";";
						SQLiteDataUtility.ExecuteCommand(updateCharacterSQL);
						Console.WriteLine("Update of all values except house successful.");

						// lookup HouseID
						Console.WriteLine("Querying HouseID...");
						string houseIDQuery = "SELECT HouseID FROM House WHERE HouseName='" + houseName.Replace("'", "''") + "';";
						object houseID = SQLiteDataUtility.ExecuteScalar(houseIDQuery);
						if (houseID != null)
						{
							Console.WriteLine("House ID ({0}) found. Updating house...", houseID);
							string updateCharacterHouseSQL = "UPDATE Character SET " +
															 "HouseID=" + houseID.ToString() + " " +
															 "WHERE CharID=" + characterID.ToString() + ";";
							SQLiteDataUtility.ExecuteCommand(updateCharacterHouseSQL);
							Console.WriteLine("Update of house successful.\n");
						}
						else
							Console.WriteLine("House not found... quitting...");
					}
					else
						Console.WriteLine("ERROR: Character not found.");
				}
				else
					Console.WriteLine("ERROR: Please enter a number or exit.");
			}
		}
		
	        protected static void deleteChar()
	        {
	            Console.Clear();
	            Program.WriteLogo();
	            ConsoleExtensions.WriteCentered("Task: Delete character");
	            Console.WriteLine();
	
	            // get name pattern
	            Console.Write("Enter character id (or exit if you need to look it up): ");
	            string characterIDStr = ConsoleExtensions.ReadLine();
	            Console.WriteLine();
	
	            if (characterIDStr != "exit")
	            {
	                int characterID;
	                if (int.TryParse(characterIDStr, out characterID))
	                {
	                    string isCharacter = String.Format("SELECT * FROM Character WHERE CharID = {0}", characterID);
	                    DataTable charDataTable = SQLiteDataUtility.ExecuteQuery(isCharacter);
	                    if (charDataTable.Rows.Count != 0)
	                    {
	                        string DeleteQuery = String.Format("DELETE FROM Character WHERE CharID={0}", characterID);
	                        SQLiteDataUtility.ExecuteCommand(DeleteQuery);
	
	                        Console.WriteLine("Character succesfully deleted.");
	                    }
	                    else
	                    {
	                        Console.WriteLine("ERROR: Character not found.");
	                    }
	                }
	            }
	        }
	}
}
