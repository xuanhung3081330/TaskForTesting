using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestingTask.Common
{
    public class TraceLogWriter
    {
        public static void LogWriter(string route, string query)
        {
            DateTime time = DateTime.UtcNow;
            string format = "yyyy-mm-dd hh24:mi:ss.fff";
            string formattedTime = time.ToString(format);
            string fileName = $"Log.txt";
            if (string.IsNullOrEmpty(query))
            {
                using (FileStream fs = File.Create(fileName))
                {
                    Byte[] contentByte = new UTF8Encoding(true).GetBytes(formattedTime + $" - API endpoint called - /{route}");
                    fs.Write(contentByte, 0, contentByte.Length);
                }
            }
            else
            {
                using (FileStream fs = File.Create(fileName))
                {
                    Byte[] contentByte = new UTF8Encoding(true).GetBytes(formattedTime + $" - API endpoint called - /{route}?state={query}");
                    fs.Write(contentByte, 0, contentByte.Length);
                }
            }
        }
    }
}