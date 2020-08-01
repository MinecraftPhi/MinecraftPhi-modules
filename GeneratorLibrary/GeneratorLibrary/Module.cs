using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace GeneratorLibrary
{
    public class Module
    {
        [JsonRequired]
        public string ID { get; set; } = "";

        [JsonRequired]
        public string Name { get; set; } = "";

        [JsonRequired]
        public string Description { get; set; } = "";

        [JsonRequired]
        public bool Distributable { get; set; }

        public string? Repo_URL { get; set; }

        public List<string>? Dependencies { get; set; }
    }
}
