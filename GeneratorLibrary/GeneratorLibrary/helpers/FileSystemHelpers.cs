using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace GeneratorLibrary.helpers
{
    public static class FileSystemHelpers
    {
        public static string AsFullDirectoryPath(this string path)
        {
            path = Path.GetFullPath(path);
            return File.Exists(path) ? Path.GetDirectoryName(path) : path;
        }
    }
}
