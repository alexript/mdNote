using IniParser;
using IniParser.Model;


namespace mdNodeConfig
{
    class Config
    {

        public Config()
        {

            var parser = new FileIniDataParser();
            IniData data = parser.ReadFile(".mdNote.ini");
        }
    }
}