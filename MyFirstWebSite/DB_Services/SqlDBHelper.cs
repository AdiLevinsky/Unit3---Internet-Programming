using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace MyFirstWebSite
{
    public class SqlDBHelper
    {
        /// <summary> .
        /// <para>queryStr - String representation of the SQL query to execute.</para>
        /// <para>--- Only For SELECT queries ---</para>
        /// Executes the given query on the DB.
        /// </summary>
        /// <param name="queryStr"></param>
        /// <returns><b>True</b> - if there are rows in the DB for the given query string,
        /// <br/>otherwise - returns <b>False</b>.
        /// </returns>
        public static bool IsExist(string queryStr)
        {
            DataTable dataTable = ExecuteSelectQuery(queryStr);
            return dataTable.Rows.Count > 0;
        }

        /// <summary>
        /// <para>queryStr - String representation of the SQL query to execute.</para>
        /// <para>--- Only For SELECT queries ---</para>
        /// Executes the given query on the DB.
        /// </summary>
        /// <param name="queryStr"></param>
        /// <returns>Returns the relevant rows from the DB of the given query string as DataTable object.</returns>
        public static DataTable ExecuteSelectQuery(string queryStr)
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (SqlConnection connection = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand command = new SqlCommand(queryStr, connection))
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
                System.Diagnostics.Debug.WriteLine("Error executing select query: " + ex.Message);
                System.Diagnostics.Debug.WriteLine("queryStr: " + queryStr);
            }
            return dataTable;
        }

        /// <summary>
        /// <para>queryStr - String representation of the SQL query to execute.</para>
        /// <para>--- Only For INSERT / UPDATE / DELETE actions ---</para>
        /// Executes the given non-query on the DB.
        /// </summary>
        /// <param name="queryStr"></param>
        /// <returns>Returns <b>True</b> if the number of rows affected is greater than zero,
        /// <br/>otherwise - returns <b>False</b>.</returns>
        public static bool ExecuteNonQuery(string queryStr)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(GetConnectionString()))
                {
                    using (SqlCommand command = new SqlCommand(queryStr, connection))
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
                System.Diagnostics.Debug.WriteLine("Error executing non-query: " + ex.Message);
                System.Diagnostics.Debug.WriteLine("queryStr: " + queryStr);
                return false;
            }
        }

        /// <summary>
        /// <para>queryStr  - String representation of the SQL query to execute.</para>
        /// <para>fieldName - The field name as defined in the DB table.</para>
        /// <para>--- Only For SELECT queries ---</para>
        /// Executes the given query on the DB.
        /// </summary>
        /// <param name="queryStr"></param>
        /// <param name="fieldName"></param>
        /// <returns>Returns the value of the given field from the first returned row,
        /// <br/>or null - if the field is not found or there are no rows returned.</returns> 
        public static string GetFieldValue(string queryStr, string fieldName)
        {
            DataTable dataTable = ExecuteSelectQuery(queryStr);
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

        /// <summary>
        /// Creates a Connection String to the DataBase file located under the App_Data folder.
        /// <br/>If there are several .mdf files in the App_Data folder, 
        /// <br/>the method creates a Connection String for the <b>first file found</b>.
        /// <para><b>Make sure that the App_Data folder contains only one .mdf file!</b></para>
        /// </summary>
        /// <returns>Returns a string representation for the DB Connection String.</returns>
        public static string GetConnectionString()
        {
            string dataFileName = GetDataFileName();
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                              + dataFileName + ";Integrated Security=True";
            return connectionString;
        }

        private static string GetDataFileName()
        {
            string appDataFolderPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data");
            string[] mdfFiles = Directory.GetFiles(appDataFolderPath, "*.mdf");

            if (mdfFiles.Length == 0)
            {
                throw new Exception("No .mdf file found in the App_Data folder.");
            }

            // Assuming only one .mdf file exists in the App_Data folder
            return Path.GetFileName(mdfFiles[0]);
        }

    }
}