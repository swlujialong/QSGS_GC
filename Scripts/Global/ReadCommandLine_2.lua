if _NewCommand == "-FullScreen" then
Window.SetSize(Application.GetWndHandle(), System.GetDisplayInfo().Width, System.GetDisplayInfo().Height);
Window.SetPos(Application.GetWndHandle(), 0, 0); end
if _NewCommand == "-Minimize" then
Application.Minimize(); end