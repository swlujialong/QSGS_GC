if _LinkShowed ~= "1" then
	if _LinkEntered == "1" then
		Image.SetSize("LinkBG", 10, 548);
		Image.SetPos("LinkBG", 780, 31);
		Image.SetSize("LinkBG", 20, 548);
		Image.SetPos("LinkBG", 770, 31);
		Image.SetSize("LinkBG", 30, 548);
		Image.SetPos("LinkBG", 760, 31);
		Image.SetSize("LinkBG", 40, 548);
		Image.SetPos("LinkBG", 750, 31);
		Image.SetSize("LinkBG", 50, 548);
		Image.SetPos("LinkBG", 740, 31);
		Image.SetSize("LinkBG", 60, 548);
		Image.SetPos("LinkBG", 730, 31);
		Image.SetSize("LinkBG", 70, 548);
		Image.SetPos("LinkBG", 720, 31);
		Image.SetSize("LinkBG", 80, 548);
		Image.SetPos("LinkBG", 710, 31);
		Image.SetVisible("Search", false);
		Paragraph.SetVisible("MetroText1", false);
		Image.SetVisible("Compatible", false);
		Paragraph.SetVisible("MetroText2", false);
		Image.SetVisible("Share", false);
		Paragraph.SetVisible("MetroText3", false);
		Image.SetVisible("Help", true);
		Paragraph.SetVisible("MetroText4", true);
		Image.SetVisible("Option", true);
		Paragraph.SetVisible("MetroText5", true);
		_LinkShowed = "1";
	end else
		if _LinkEntered ~= "1" then
		Paragraph.SetVisible("MetroText5", false);
		Image.SetVisible("Option", false);
		Paragraph.SetVisible("MetroText4", false);
		Image.SetVisible("Help", false);
		Paragraph.SetVisible("MetroText3", false);
		Image.SetVisible("Share", false);
		Paragraph.SetVisible("MetroText2", false);
		Image.SetVisible("Compatible", false);
		Paragraph.SetVisible("MetroText1", false);
		Image.SetVisible("Search", false);
		Image.SetSize("LinkBG", 80, 548);
		Image.SetPos("LinkBG", 710, 31);
		Image.SetSize("LinkBG", 70, 548);
		Image.SetPos("LinkBG", 720, 31);
		Image.SetSize("LinkBG", 60, 548);
		Image.SetPos("LinkBG", 730, 31);
		Image.SetSize("LinkBG", 50, 548);
		Image.SetPos("LinkBG", 740, 31);
		Image.SetSize("LinkBG", 40, 548);
		Image.SetPos("LinkBG", 750, 31);
		Image.SetSize("LinkBG", 30, 548);
		Image.SetPos("LinkBG", 760, 31);
		Image.SetSize("LinkBG", 20, 548);
		Image.SetPos("LinkBG", 770, 31);
		Image.SetSize("LinkBG", 10, 548);
		Image.SetPos("LinkBG", 780, 31);
		Image.SetSize("LinkBG", 5, 548);
		Image.SetPos("LinkBG", 785, 31);
		_LinkShowed = "0";
	end
end