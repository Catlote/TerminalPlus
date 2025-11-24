#!/bin/bash

# --------------------------------------------------
# TerminalPlus v0.1.3
# To-do list for v0.1.4:
# Add --update to update Terminal+ (COMPLETE)
# Add --uptodate to check if Terminal+ is up to date
# Add -setup to setup Terminal+ (COMPLETE)
# --------------------------------------------------


RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
RESET="\033[0m"

cmd="$1"
sub="$2"
arg3="$3"
arg4="$4"

cleanup() {
    printf "\033c"
}

case "$cmd" in
    --setup)
        echo "Setting up TerminalPlus..."
        sudo rm -f /usr/local/bin/tp
        sudo mv "$HOME/TerminalPlus/tp.sh" /usr/local/bin/tp
        sudo chmod +x "$HOME/TerminalPlus/tp.sh"
        echo "Setup complete! You can now run 'tp' from anywhere."
        ;;

    --update)
        echo "Updating TerminalPlus..."
        sudo rm -f /usr/local/bin/tp
        cd "$HOME/TerminalPlus" || { echo "TerminalPlus folder not found!"; exit 1; }
        git pull origin main
        sudo mv "$HOME/TerminalPlus/tp.sh" /usr/local/bin/tp
        sudo chmod +x "$HOME/TerminalPlus/tp.sh"
        echo "Update complete!"
        ;;
    
    --version)
        printf "${CYAN}Terminal+${RESET} Version ${GREEN}0.1.3${RESET}\n\n"
        ;;

    --info)
        printf "${BLUE}Terminal+${RESET} was designed to make the default MacOS terminal better.\n"
        printf "Fixes clear command, simplifies usage, and adds new commands.\n"
        printf "Current version: 0.1.3\n\n"
        ;;

    cleanup)
        cleanup
        printf "\n"
        ;;

    cmds)
        printf "${BLUE}Available commands:${RESET}\n"
        printf "cleanup, cmds, info, new, version, tp\n\n"
        ;;

    info)
        case "$sub" in
            cleanup) printf "${BLUE}cleanup${RESET}: Clears the terminal.\n\n" ;;
            cmds) printf "${BLUE}cmds${RESET}: Lists all available commands.\n\n" ;;
            info) printf "${BLUE}info${RESET}: Shows detailed info about a command.\n\n" ;;
            new) printf "${BLUE}new${RESET}: Creates a new file or folder. Usage: new <file/folder> <name> [directory]\n\n" ;;
            version) printf "${BLUE}version${RESET}: Displays the current version.\n\n" ;;
            tp) printf "${BLUE}tp${RESET}: Main TerminalPlus command.\n\n" ;;
            *) printf "${RED}Unknown command:${RESET} $sub\n\n" ;;
        esac
        ;;

    new)
        type="$sub"
        name="$arg3"
        dir="${arg4:-.}"

        if [[ -z "$type" || -z "$name" ]]; then
            printf "${RED}Usage:${RESET} tp new <file/folder> <name> [directory]\n\n"
            exit 1
        fi

        if [[ "$type" == "file" ]]; then
            touch "$dir/$name" && printf "${GREEN}Created file: $dir/$name${RESET}\n\n" || printf "${RED}Error creating file${RESET}\n\n"
        else
            mkdir -p "$dir/$name" && printf "${GREEN}Created folder: $dir/$name${RESET}\n\n" || printf "${RED}Error creating folder${RESET}\n\n"
        fi
        ;;

    version)
        printf "${CYAN}Terminal+${RESET} Version ${GREEN}0.1.3${RESET}\n\n"
        ;;

    tp)
        printf "${BLUE}Terminal+${RESET} main command. Use tp cmds to see all available commands.\n\n"
        ;;

    *)
        printf "${RED}Unknown command:${RESET} $cmd\n"
        printf "Use 'tp cmds' to see all available commands.\n\n"
        ;;
esac
