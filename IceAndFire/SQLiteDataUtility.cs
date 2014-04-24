using System.Data;
using System.Data.SQLite;

namespace IceAndFire
{
	public static class SQLiteDataUtility
	{
		public static string DatabaseFilename
		{
			get;
			set;
		}

		public static DataTable ExecuteQuery(string sqlQuery)
		{
			string connectionString = string.Format("Data Source={0};Version=3;", SQLiteDataUtility.DatabaseFilename);
			using (SQLiteConnection connection = new SQLiteConnection(connectionString))
			{
				connection.Open();
				using (SQLiteCommand command = new SQLiteCommand(sqlQuery, connection))
				{
					SQLiteDataReader reader = command.ExecuteReader();
					DataTable table = new DataTable();
					table.Load(reader);
					return table;
				}
			}
		}

		public static void ExecuteCommand(string sqlCommand)
		{
			string connectionString = string.Format("Data Source={0};Version=3;", SQLiteDataUtility.DatabaseFilename);
			using (SQLiteConnection connection = new SQLiteConnection(connectionString))
			{
				connection.Open();
				using (SQLiteCommand command = new SQLiteCommand(sqlCommand, connection))
					command.ExecuteNonQuery();
			}
		}
	}
}
