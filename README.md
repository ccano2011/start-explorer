# start-explorer
This is a batch file meant to be added as a "Non-Steam game" to exit Big Picture Mode, start explorer and then restart Steam.

Specifically used for whenever Steam is set to be the start-up shell as shown in the following resource: 
https://superuser.com/questions/1805533/change-windows-shell

## Prerequisites
- `start-explorer.bat` must be Whitelisted from Windows Smart Screen, otherwise it would fail to launch
  - This can be done by just running it once manually and allowing it
- Disable Steam on start-up
- Ensure that Big Picture Mode is NOT enabled
- **Most importantly**, have auto logon enabled on the Windows PC's Account being used

## Steps
- Add `start-explorer.bat` as a non-Steam game after whitelisting the batch file
  - It may be easier to add another random `.exe` file, edit the Properties and changing the path to wherever `start-explorer.bat` is saved
  - Test that it executes from Steam properly. It should just restart Steam
- After ensuring that it works open Registry Editor and navigate to `HKEY_CURRENT_USER\Software\Microsoft\WindowsNT\CurrentVersion\Winlogon`
- Create a new string entry called "Shell"
- Steam must be added as the start up shell with `-tenfoot` argument. Assuming Steam was installed in the default location, the full string value would be `"C:\Program Files (x86)\Steam\Steam.exe" -tenfoot`

## Post-setup
- Use SGBoop to add Windows banner/art from SteamGridDB so it would be asthetically pleasing

## Resources:
- For autologon, navigate here: https://learn.microsoft.com/en-us/sysinternals/downloads/autologon
