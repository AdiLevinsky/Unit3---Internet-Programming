using System;
using System.Data;
using System.Data.SqlClient;

namespace MyFirstWebSite
{
    public class SqlDBHelper
    {
        public const string dbFileName = "MyFirstDB.mdf"; //TODO - לשנות לשם קובץ מסד הנתונים שלכם

        public const string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                          + dbFileName + ";Integrated Security=True";

        public static bool IsExist(string query)
        {
            DataTable dataTable = ExecuteSelectQuery(query);
            return dataTable.Rows.Count > 0;
        }

        public static DataTable ExecuteSelectQuery(string query)
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(dataTable);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exception as needed
                Console.WriteLine("Error executing select query: " + ex.Message);
            }
            return dataTable;
        }

        public static bool ExecuteNonQuery(string query)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        return rowsAffected > 0;
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exception as needed
                Console.WriteLine("Error executing non-query: " + ex.Message);
                return false;
            }
        }

        public static string GetFieldValue(string query, string fieldName)
        {
            DataTable dataTable = ExecuteSelectQuery(query);
            if (dataTable.Rows.Count > 0 && dataTable.Columns.Contains(fieldName))
            {
                return dataTable.Rows[0][fieldName].ToString();
            }
            else
            {
                // Field not found or no rows returned
                return null;
            }
        }
    }
}