using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Reflection;
using System.Text;

namespace phi.structure
{
    [JsonConverter(typeof(VersionRangeConverter))]
    class VersionRange
    {
        public string FirstVersion { get; set; } = "";

        public string LastVersion { get; set; } = "";
    }

    class VersionRangeConverter : JsonConverter<VersionRange>
    {
        public override VersionRange ReadJson(JsonReader reader, Type objectType, VersionRange? existingValue, bool hasExistingValue, JsonSerializer serializer)
        {
            switch(reader.TokenType)
            {
                case JsonToken.String:
                    {
                        var version = reader.Value!.ToString()!;
                        return new VersionRange
                        {
                            FirstVersion = version,
                            LastVersion = version
                        };
                    }
                case JsonToken.StartObject:
                    {
                        var res = new VersionRange();
                        serializer.Populate(reader, res);
                        return res;
                    }
                default:
                    return new VersionRange();
            }
        }

        public override void WriteJson(JsonWriter writer, VersionRange? value, JsonSerializer serializer)
        {
            if(value == null)
            {
                writer.WriteNull();
            }
            else if(value.FirstVersion == value.LastVersion)
            {
                writer.WriteValue(value.FirstVersion);
            }
            else
            {
                writer.WriteStartObject();
                foreach (PropertyInfo prop in value.GetType().GetProperties())
                {
                    var name = new DefaultNamingStrategy().GetPropertyName(prop.Name, false);
                    writer.WritePropertyName(name);
                    serializer.Serialize(writer, prop.GetValue(value));
                }
                writer.WriteEndObject();
            }
        }
    }
}
