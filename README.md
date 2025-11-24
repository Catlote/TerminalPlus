<pre>
  _____________  __  ________  _____   __    __ 
/_  __/ __/ _ \/  |/  /  _/ |/ / _ | / / __/ /_
 / / / _// , _/ /|_/ // //    / __ |/ /_/_  __/
/_/ /___/_/|_/_/  /_/___/_/|_/_/ |_/____//_/                                        
</pre>                                                                                            

Originally created to have just one function, `cleanup`, which clears the terminal.
MacOS already had a terminal command to clear the terminal, but it didn’t fully clear it.
Then the project expanded, and now it has more commands than just cleanup.

Made for **MacOS**.
Works on **Linux**, but requires moving more files manually.
May work on **Windows**, but would require a lot of changes.

# Setup for MacOS

Download the repository by pasting one of these commands into your terminal:

Using GitHub CLI:

<pre>
cd ~
gh repo clone Catlote/TerminalPlus
</pre>

Using git:

<pre>
cd ~
git clone https://github.com/Catlote/TerminalPlus.git
</pre>

Then run:

<pre>
cd ~/TerminalPlus/
chmod +x tp.sh
./tp.sh --setup
</pre>

*Note:* This may ask for your password.
Don’t worry, we aren’t stealing it — MacOS just needs permission to move the script and register it as a terminal command.

# Commands

<pre>tp cleanup</pre>  

Clears the entire terminal. Terminal+ originally only had this command.

<pre>tp cmds</pre>  

Shows a list of all available commands. You can get more details about a command using `tp info`.

<pre>tp info &lt;command&gt;</pre>  

Shows detailed information about the specified command.

<pre>tp new &lt;type&gt; &lt;name&gt; [target directory]</pre>  

Creates a new file or folder.
Use `file` as the type to create a file, or `folder` to create a directory.
Then provide the name, and optionally a target directory.

<pre>tp --info</pre>  

Shows information about Terminal+ itself.

<pre>tp --version</pre>  

Shows the current installed version.

<pre>tp --update</pre>  

Updates Terminal+ to the latest version. Requires internet access.
If GitHub is blocked, this may not work.

<pre>tp --uptodate</pre>  

Checks whether Terminal+ is already on the latest version. Also requires internet access.

<pre>tp --uninstall</pre>  

That’s just… mean…
