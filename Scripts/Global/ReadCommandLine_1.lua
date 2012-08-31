if _NewCommand == "-SkillEditor" then
Page.Jump("SkillEditor"); end
if _NewCommand == "-Help" then
DialogEx.Show("Help", true, nil, nil); end
if _NewCommand == "-Option" then
DialogEx.Show("Option", true, nil, nil); end
if _NewCommand == "-About" then
DialogEx.Show("About", true, nil, nil); end
if _NewCommand == "-CloseDevelop" then
INIFile.SetValue("Config\\Config.ini", "Info", "Develop", "0"); end
if _NewCommand == "-IntoDevelop" then
INIFile.SetValue("Config\\Config.ini", "Info", "Develop", "1"); end
if _NewCommand == "-Mainpage" then
Page.Jump("Mainpage"); end