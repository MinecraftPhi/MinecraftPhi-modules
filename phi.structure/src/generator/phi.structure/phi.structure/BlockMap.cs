using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace phi.structure
{
    class BlockMap
    {
        [JsonRequired]
        public string LatestVersion { get; set; } = "";

        [JsonRequired]
        public List<VersionRange> SupportedVersions { get; set; } = new List<VersionRange>();
    }
}
