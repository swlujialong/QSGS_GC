if INIFile.GetValue("Config\\Config.ini", "Info", "Develop") ~= "1"
then
	Button.SetVisible("DevelopTap", false);
end
if INIFile.GetValue("Config\\Config.ini", "Info", "Develop") == "1"
then
	Button.SetVisible("DevelopTap", true);
	INIFile.SetValue("Config\\Config.ini", "Info", "Compile", INIFile.GetValue("Config\\Config.ini", "Info", "Compile") + 1);
end