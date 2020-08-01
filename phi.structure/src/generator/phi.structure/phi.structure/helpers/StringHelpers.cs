using System;
using System.Collections.Generic;
using System.Text;

namespace phi.structure.helpers
{
    public static class StringHelpers
    {
        /// <summary>
        /// Calculate the Damerau-Levenshtein Distance of two strings
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static int EditDistance(string a, string b)
        {
            int Height = a.Length + 1;
            int Width = b.Length + 1;

            int[,] matrix = new int[Height, Width];

            for (int height = 0; height < Height; height++)
            { 
                matrix[height, 0] = height; 
            }

            for (int width = 0; width < Width; width++)
            {
                matrix[0, width] = width;
            }

            for (int height = 1; height < Height; height++)
            {
                for (int width = 1; width < Width; width++)
                {
                    int cost = (a[height - 1] == b[width - 1]) ? 0 : 1;
                    int insertion = matrix[height, width - 1] + 1;
                    int deletion = matrix[height - 1, width] + 1;
                    int substitution = matrix[height - 1, width - 1] + cost;

                    int distance = Math.Min(insertion, Math.Min(deletion, substitution));

                    if (height > 1 && width > 1 && a[height - 1] == b[width - 2] && a[height - 2] == b[width - 1])
                    {
                        distance = Math.Min(distance, matrix[height - 2, width - 2] + cost);
                    }

                    matrix[height, width] = distance;
                }
            }

            return matrix[Height - 1, Width - 1];
        }
    }
}
