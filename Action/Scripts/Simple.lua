---------start script
Paragraph.SetText("Title", "示例动作");
Paragraph.SetText("Detail", "请填写上列信息以完成该动作。");

---------progress 1
_varDelListBoxItem = 1;
while (_varDelListBoxItem < 11) do
	ListBox.DeleteItem("Item", 1);
	_varDelListBoxItem = _varDelListBoxItem + 1;
end
_varResetComboBox = 1;
while (_varResetComboBox < 11) do
	ComboBox.ResetContent("ComboBox".._varResetComboBox);
	ComboBox.SetVisible("ComboBox".._varResetComboBox, false);
	_varResetComboBox = _varResetComboBox + 1;
end
_varResetInput = 1;
while (_varResetInput < 11) do
	Input.SetText("Input".._varResetInput, "");
	Input.SetVisible("Input".._varResetInput, false);
	_varResetInput = _varResetInput + 1;
end

---------progress 2
ListBox.AddItem("Item", "类型", "");
ListBox.AddItem("Item", "输出值", "");
ListBox.AddItem("Item", "类型", "");
ListBox.AddItem("Item", "类型", "");
ListBox.AddItem("Item", "类型", "");
ListBox.AddItem("Item", "输出值", "");
ListBox.AddItem("Item", "输出值", "");
ListBox.AddItem("Item", "输出值", "");

---------progress 3
ComboBox.SetVisible("ComboBox1", true);
ComboBox.SetVisible("ComboBox3", true);
ComboBox.SetVisible("ComboBox4", true);
ComboBox.SetVisible("ComboBox5", true);

---------progress 4
Input.SetVisible("Input2", true);
Input.SetVisible("Input6", true);
Input.SetVisible("Input7", true);
Input.SetVisible("Input8", true);

---------progress 5
ComboBox.AddItem("ComboBox1", "No.1", "");

---------progress 6
_NewOrderActionProDick = "";
DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialogEx.Close(0);");

---------progress 7
--DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialog.Message(\"Debug Info\", _ActionOutputText, MB_OK, MB_ICONNONE, MB_DEFBUTTON1);\r\nDialogEx.Close(0);");

---------end script
-------copyright information
_ActionCreator = "";
_ActionCopyright = "";
_ActionTrademarks = "";
_ActionPrivate = "";
_ActionSpecial = "";
_ActionCompany = "";
_ActionVersion = "";
_ActionCreateDate = "07/18/12";
_ActionAddon1 = "";
_ActionAddon2 = "";

-------all action finish