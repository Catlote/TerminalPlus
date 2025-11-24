# Terminal+

Originally created to have 1 function, cleanup (wich clears the terminal). The MacOS terminal already had a terminal command to clear the terminal, but it didnt fully clear it.
Then the project expanded, and is what it is today, whit more commands than just cleanup.

Made for MacOS.
Works for Linux but requires moving more files.
May work for Windows but requires a lot of changes.

# Setup for MacOS:

Download the repository (https://github.com/Catlote/TerminalPlus)

Check if the downloaded TerminalPus folder is in:
Users/youAppleAccount/
If not, move it to Users/yourAppleAccount/

Then open the folder.
You should see 2 files:
* **tp**
* **tp.sh**

Open tp.sh whit a text or code editor
Change yourAppleAccount whit your actual account.
To find your apple account open Settings and click on your profile.
MacOS should show your Apple account name how it is in the files of your system, If you do not see it

* Note: This is soon going to change and you must run a command.

Then, run on your terminal:
<pre>
cd ~/TerminalPlus/
chmod +x tp
chmod +x tp.sh
./tp.sh --setup
</pre>

# Commands
