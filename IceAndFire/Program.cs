using System;
using System.Data;
using System.Windows.Forms;
using System.IO;

namespace IceAndFire
{
	public class Program
	{
		public static void Main(string[] args)
		{
			// set up console
			Console.Title = "A Database of Ice and Fire";
			Console.WindowWidth = 150;
			Program.WriteLogo();

			// get the database filename
			Console.Write("Enter database filename: ");
			SendKeys.SendWait(@"..\..\..\IceAndFire.db");
			SQLiteDataUtility.DatabaseFilename = Path.GetFullPath(Console.ReadLine());
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
				Console.WriteLine("-- Type exit to quit.");
				Console.WriteLine();
				Console.Write("Enter choice: ");
				string choice = Console.ReadLine();
				switch (choice)
				{
					case "1":
						Program.LookUpCharacter();
						break;
					case "2":
						Program.LookUpHouse();
						break;
					case "exit":
						return;
					default:
						Console.WriteLine("Choice not recognized.");
						break;
				}
				
				// wait on user
				Console.WriteLine();
				Console.Write("Press enter to return to the menu...");
				Console.ReadLine();
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
			string namePattern = Console.ReadLine();
			Console.WriteLine();

			// query for characters
			string nameQuery = "SELECT * FROM Character JOIN House ON Character.HouseID=House.HouseID " +
							   "WHERE (IFNULL(FirstName,'') || IFNULL(MiddleName,'') || IFNULL(LastName,'')) LIKE '%" + namePattern + "%';";
			DataTable characterTable = SQLiteDataUtility.ExecuteQuery(nameQuery);
			
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
		}
	}
}