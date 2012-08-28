---------start script
Paragraph.SetText("Title", "视为技细节设定");
Paragraph.SetText("Detail", "对视为技进行细节设定。\r\n在此之前，请先使用“创建技能向导”创建一个视为技。");

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
DialogEx.SetObjectScript("ComboBox1", "On Click", " ");

---------progress 2
ListBox.AddItem("Item", "使用的卡牌数量", "");
ListBox.AddItem("Item", "卡牌的作用对象", "");
ListBox.AddItem("Item", "生效的卡牌范围", "");
ListBox.AddItem("Item", "花色限定", "");
ListBox.AddItem("Item", "生效后视为的卡牌", "");

---------progress 3
ComboBox.SetVisible("ComboBox2", true);
ComboBox.SetVisible("ComboBox3", true);
ComboBox.SetVisible("ComboBox4", true);
ComboBox.SetVisible("ComboBox5", true);

---------progress 4
Input.SetVisible("Input1", true);

---------progress 5
ComboBox.AddItem("ComboBox2", "自己", "");
ComboBox.AddItem("ComboBox3", "已选择的卡牌", "");
ComboBox.AddItem("ComboBox4", "红色", "");
ComboBox.AddItem("ComboBox4", "黑色", "");
ComboBox.AddItem("ComboBox4", "黑桃", "");
ComboBox.AddItem("ComboBox4", "草花(梅花)", "");
ComboBox.AddItem("ComboBox4", "方块", "");
ComboBox.AddItem("ComboBox4", "红桃", "");
ComboBox.AddItem("ComboBox5", "五谷丰登");
ComboBox.AddItem("ComboBox5", "酒");
ComboBox.AddItem("ComboBox5", "万箭齐发");
ComboBox.AddItem("ComboBox5", "贯石斧");
ComboBox.AddItem("ComboBox5", "青龙偃月刀");
ComboBox.AddItem("ComboBox5", "赤兔");
ComboBox.AddItem("ComboBox5", "借刀杀人");
ComboBox.AddItem("ComboBox5", "诸葛连弩");
ComboBox.AddItem("ComboBox5", "大宛");
ComboBox.AddItem("ComboBox5", "的卢");
ComboBox.AddItem("ComboBox5", "过河拆桥");
ComboBox.AddItem("ComboBox5", "雌雄双股剑");
ComboBox.AddItem("ComboBox5", "决斗");
ComboBox.AddItem("ComboBox5", "八卦阵");
ComboBox.AddItem("ComboBox5", "无中生有");
ComboBox.AddItem("ComboBox5", "朱雀羽扇");
ComboBox.AddItem("ComboBox5", "火攻");
ComboBox.AddItem("ComboBox5", "火杀");
ComboBox.AddItem("ComboBox5", "桃园结义");
ComboBox.AddItem("ComboBox5", "古锭刀");
ComboBox.AddItem("ComboBox5", "方天画戟");
ComboBox.AddItem("ComboBox5", "骅骝");
ComboBox.AddItem("ComboBox5", "寒冰剑");
ComboBox.AddItem("ComboBox5", "乐不思蜀");
ComboBox.AddItem("ComboBox5", "铁索连环");
ComboBox.AddItem("ComboBox5", "闪");
ComboBox.AddItem("ComboBox5", "绝影");
ComboBox.AddItem("ComboBox5", "麒麟弓");
ComboBox.AddItem("ComboBox5", "闪电");
ComboBox.AddItem("ComboBox5", "无懈可击");
ComboBox.AddItem("ComboBox5", "桃园结义");
ComboBox.AddItem("ComboBox5", "青釭剑");
ComboBox.AddItem("ComboBox5", "仁王盾");
ComboBox.AddItem("ComboBox5", "南蛮入侵");
ComboBox.AddItem("ComboBox5", "白银狮子");
ComboBox.AddItem("ComboBox5", "杀");
ComboBox.AddItem("ComboBox5", "顺手牵羊");
ComboBox.AddItem("ComboBox5", "丈八蛇矛");
ComboBox.AddItem("ComboBox5", "兵粮寸断");
ComboBox.AddItem("ComboBox5", "雷杀");
ComboBox.AddItem("ComboBox5", "藤甲");
ComboBox.AddItem("ComboBox5", "爪黄飞电");
ComboBox.AddItem("ComboBox5", "紫骍");

---------progress 6
_TempRestorePoint_1 = " ";
_TempRestorePoint_2 = " ";
_TempRestorePoint_3 = " ";
_TempRestorePoint_4 = " ";
_NewOrderActionProDick = "if _Combo2Stored == \"自己\" then _TempRestorePoint_1 = \"self, \"; end\r\nif _Combo3Stored == \"已选择的卡牌\" then _TempRestorePoint_2 = \"selected, \"; end\r\nif _Combo4Stored == \"红色\" then _TempRestorePoint_3 = \"to_select:isRed()\"; end\r\nif _Combo4Stored == \"黑色\" then _TempRestorePoint_3 = \"to_select:isBlack()\"; end\r\nif _Combo4Stored == \"黑桃\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Spade\"; end\r\nif _Combo4Stored == \"草花(梅花)\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Club\"; end\r\nif _Combo4Stored == \"方块\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Diamond\"; end\r\nif _Combo4Stored == \"红桃\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Heart\"; end\r\nif _Combo5Stored ~= \"\" then _TempRestorePoint_4 = INIFile.GetValue(\"Dict.ini\", \"Dict_5\", _Input1Stored); end\r\n_ActionOutputText = \"\\tn = \".._Input1Stored..\",\\r\\n\\tview_filter = function(\".._TempRestorePoint_1.._TempRestorePoint_2..\"to_select)\\r\\n\\t\\r\\n\\treturn \".._TempRestorePoint_3..\" and not to_select:isEquipped()\\r\\n\\t\\r\\n\\tend,\\r\\n\\t\\r\\n\\t\\r\\n\\t\\r\\n\\tview_as = function(\".._TempRestorePoint_1..\", cards)\\r\\n\\t\\r\\n\\t\\tif #cards == \".._Input1Stored..\" then\\r\\n\\t\\t\\r\\n\\t\\t\\tlocal card = cards[1]\\r\\n\\t\\t\\t\\r\\n\\t\\t\\tlocal new_card = sgs.Sanguosha:cloneCard(\\\"\".._TempRestorePoint_4..\"\\\", card:getSuit(), card:getNumber())\\r\\n\\t\\t\\t\\r\\n\\t\\t\\tnew_card:addSubcard(card:getId())\\r\\n\\t\\t\\tnew_card:setSkillName(self:objectName())\\r\\n\\t\\t\\treturn new_card\\r\\n\\t\\t\\tend\\r\\n\\t\\t\\tend\";"
DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialogEx.Close(0);");

---------progress 7
--DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialog.Message(\"Debug Info\", _ActionOutputText, MB_OK, MB_ICONNONE, MB_DEFBUTTON1);\r\nDialogEx.Close(0);");

---------end script
-------copyright information
_ActionCreator = "BroFrank";
_ActionCopyright = "Copyright 2012 BroFrank. All Rights Reserved.";
_ActionTrademarks = "Qsanguosha General Creator Action";
_ActionPrivate = "";
_ActionSpecial = "";
_ActionCompany = "";
_ActionVersion = "1.0.0.3";
_ActionCreateDate = "08/28/12";
_ActionAddon1 = "";
_ActionAddon2 = "";

-------all action finish