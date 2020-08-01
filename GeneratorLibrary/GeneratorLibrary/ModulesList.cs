using GeneratorLibrary.helpers;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using System.Text;

namespace GeneratorLibrary
{
    public class ModulesList
    {
        [JsonRequired]
        public List<Module> Modules { get; set; } = new List<Module>();

        public bool TryGetLocalModule(ref string path, string moduleName, [MaybeNullWhen(false)] out Module module, params string[] types)
        {
            module = Modules.FirstOrDefault(m => m.ID == moduleName);
            if (module == null)
            {
                return false;
            }

            if(!string.IsNullOrEmpty(module.Repo_URL))
            {
                return false;
            }

            path = Path.Combine(path.AsFullDirectoryPath(), moduleName);
            var srcPath = Path.Combine(path, "src");
            if(!Directory.Exists(srcPath))
            {
                return false;
            }

            if(types.Length == 0)
            {
                types = new[] { "datapack", "resourcepack" };
            }

            return types.Any(
                d => File.Exists(Path.Combine(srcPath, d, "pack.mcmeta"))
            );
        }

        public static bool TryLoad(ref string path, [MaybeNullWhen(false)] out ModulesList modules)
        {
            path = path.AsFullDirectoryPath();

            while(!string.IsNullOrEmpty(path))
            {
                var modulePath = Path.Combine(path, "modules.json");
                if (File.Exists(modulePath))
                {
                    modules = JsonConvert.DeserializeObject<ModulesList>(File.ReadAllText(modulePath));
                    return true;
                }
                path = Path.GetDirectoryName(path);
            }

            modules = null;
            return false;
        }

        public static bool TryLoadFromConsole([MaybeNullWhen(false)] out ModulesList modules, out string path, bool includeCurrentDirectory = true)
        {
            modules = null;

            if(includeCurrentDirectory)
            {
                path = "modules.json";
            }
            else
            {
                Console.WriteLine("Please enter the path to a modules.json file");
                Console.Write("> ");
                path = Console.ReadLine();
            }

            while (!string.IsNullOrEmpty(path))
            {
                if(TryLoad(ref path, out modules))
                {
                    return true;
                }
                Console.WriteLine("modules.json not found in this directory or any parent, please enter the path to a modules.json file");
                Console.Write("> ");
                path = Console.ReadLine();
            }

            return false;
        }
    }
}
