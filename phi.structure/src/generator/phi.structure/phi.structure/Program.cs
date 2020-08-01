using GeneratorLibrary;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using phi.structure.helpers;
using RepositoryApi;
using RepositoryApi.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;

namespace phi.structure
{
    class Program
    {
        const string remoteUrl = "https://github.com/Arcensoth/mcdata.git";
        const string blockMapFileName = "blockmap.json";

        static bool TryRequestVersionTag(RepoApi api, [MaybeNullWhen(false)] out string tag)
        {
            tag = null;
            ReadonlyHashset<string> tags = api.Tags;
            do
            {
                Console.Write("> ");
                var answer = Console.ReadLine().Trim();
                if(string.IsNullOrEmpty(answer))
                {
                    return false;
                }

                if(tags.Contains(answer))
                {
                    tag = answer;
                    return true;
                }

                Console.WriteLine("No exact match found, closest matches:");
                ILookup<int, string> grouped = tags.ToLookup(t =>
                    t.StartsWith(answer)
                    ? 0
                    : t.Contains(answer)
                    ? 1
                    : 2
                );

                Console.WriteLine(string.Join(", ",
                    grouped[0].Concat(grouped[1]).Concat(
                        grouped[2]
                        .Select(
                            t => (
                                tag: t,
                                dist: StringHelpers.EditDistance(answer, t)
                            )
                        )
                        .Where(t => t.dist < 4)
                        .OrderBy(t => t.dist)
                        .Select(t => t.tag)
                    )
                ));
            } while (true);
        }

        static void Main(string[] _)
        {
            // TODO: Catch excptions

            if (!ModulesList.TryLoadFromConsole(out ModulesList? modules, out string path))
            {
                Console.WriteLine("Generation cancelled");
                return;
            }
            Console.WriteLine("modules.json successfully loaded");

            if(!modules.TryGetLocalModule(ref path, "phi.structure", out Module? structureModule, "datapack"))
            {
                Console.WriteLine("The phi.structure module does not exist as a local module in this project, cancelling generation");
                return;
            }

            Console.WriteLine("phi.structure module successfully located");

            Console.WriteLine("Fetching MCData");
            using var api = RepoApi.Load(remoteUrl, "mcdata");
            Console.WriteLine("MCData succesfully loaded");

            var blockMapFile = Path.Combine(path, "src", blockMapFileName);

            BlockMap blockMap;
            
            if(!File.Exists(blockMapFile))
            {
                Console.WriteLine("No existing block map file, please enter first version to support");
                if(!TryRequestVersionTag(api, out string? latestVersion))
                {
                    Console.WriteLine("Cancelling generation");
                    return;
                }
                blockMap = new BlockMap
                {
                    LatestVersion = latestVersion
                };
            }
            else
            {
                BlockMap? loadedBlockMap = JsonConvert.DeserializeObject<BlockMap>(File.ReadAllText(blockMapFile), new JsonSerializerSettings
                {
                    ContractResolver = new DefaultContractResolver
                    {
                        NamingStrategy = new SnakeCaseNamingStrategy()
                    }
                });
                if(loadedBlockMap == null)
                {
                    Console.WriteLine("Invalid block map file, cancelling generation");
                    return;
                }

                blockMap = loadedBlockMap;
            }

            Console.WriteLine("Please enter the last version to support");
            if(!TryRequestVersionTag(api, out string? lastVersion))
            {
                Console.WriteLine("Cancelling generation");
                return;
            }
            
            

            //ILookup<ObjectId, Tag> commitToTag =
            //    repo.Tags
            //    .Select(t =>
            //        (
            //            tag: t,
            //            commit: t.PeeledTarget as Commit
            //        )
            //    )
            //    .Where(
            //        t => t.commit != null
            //    )
            //    .ToLookup(
            //        t => t.commit!.Id,
            //        t => t.tag
            //    );

            //IEnumerable<LogEntry> history = repo.Commits.QueryBy("generated/reports/blocks.json");
        }
    }
}
