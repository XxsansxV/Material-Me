#!/usr/bin/env bash
 
# We shall prevent sudo-kun from larping with sudo.
if [ "$EUID" -eq 0 ]; then
  echo ""
  echo -e "Sudo... you have the full control of this computer? Who decided that?..."
  echo -e "I don't really understand why you're even running this is sudo, bruh. This script literally doesn't need sudo and even if you run sudo it would be no different, in fact, worse."
  echo -e "I won't crash out, just know that YOU AIN'T RUNNING ME IN SUDO."
  echo ""
  echo -e "(You probably had to type sudo bash .config/fish/GreetMeInBash.sh, btw. you could've just used GreetmeBash. Way shorter and you can actually run it, duh.)"
fi

# Colors bro
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
CYAN='\e[36m'
MAGENTA='\e[35m'
RESET='\e[0m'

greet_function() {
  # Kickass easter egg
  # Nah, I just thought you couldn't create an empty array so i did this instead, lol.
  greetings=("${YELLOW}Oops!${RESET} you found me! ${RED}ඞ${RESET}")

  # Add more greetings here!
  # also, PLEASE use ${RESET} after every, every single color invocation. otherwise  you wouldn't want mako to show <span dniuqwfouq> do you?
  greetings+=("Don't bet your life on perfection.")
  greetings+=("You're using ${CYAN}CachyOS${RESET}, BTW" "${CYAN}CachyOS${RESET}, BTW")
  greetings+=("Go get those bugs!")
  greetings+=("You must've be tired configuring this, lol.")
  greetings+=("Just ${YELLOW}Yank it all into registy +,${RESET} bro.")
  greetings+=("${GREEN}'Don't be evil'${RESET} said the ${RED}villain${RESET} himself")
  greetings+=("Yo, what's the abbr. of ${GREEN}Digital Audio Workstation Guy${RESET} again?")
  greetings+=("WAS THAT THE ${YELLOW}BYTE OF '26???${RESET}")
  greetings+=("Hello everybody my name is ${MAGENTA}WELCOME${RESET}")
  greetings+=("Sudo ${CYAN}pacman${RESET}-${RED}get${RESET} install ${CYAN}arch${RESET}${RED}bian-bsd${RESET}")
  greetings+=("Don't listen to the guy who says ${MAGENTA}'Ela desce ela sobe'${RESET}")
  greetings+=("Whatever you do at the crossroads, ${YELLOW}keep moving forward.${RESET}")
  greetings+=("${CYAN}Hyprlarp${RESET}")
  greetings+=(":v")
  greetings+=("That one guy who is ${RED}ACTUALLY${RESET} worse than the 'Loonix' guy:")
  greetings+=("DO NOT BUY THIS KEYBOARD. WHEN YOU PRESS WASD, IT'S NORMAL. BUT WHEN I PRESS SPACE-")
  greetings+=("[sudo] password for XxcharaxV:")
  greetings+=("Stay ${YELLOW}DETERMINED${RESET}")
  greetings+=("Du sollte einfach ${YELLOW}spazz machen :)${RESET}")
  greetings+=("${MAGENTA}DU BIST GUT GENUGGGG${RESET}")
  greetings+=("${CYAN}'This entire time... it was a symlink?'${RESET} ${RED}'Always has been.'${RESET}")
  greetings+=("${CYAN}'This entire time... THIS HYPRLAND RICE IS RUNNING ON A FUCKING TTY??????'${RESET} ${RED}'Everything has been..'${RESET}")
  greetings+=("Save the ${RED}sin,${RESET} face the ${MAGENTA}E.G.O${RESET}")
  greetings+=("Hey, ${YELLOW}it's gonna be alright :)${RESET}")
  greetings+=("sudo systemctl mask systemd-haters.service")
  greetings+=("Stand proud. You're good.")
  greetings+=("The only bad thing about Linux is how ${MAGENTA}hx${RESET} is now ${MAGENTA}helix${RESET}")
  greetings+=("You don't have to use the terminal today! (citation needed)")
  greetings+=("A computer is like an AC, it becomes useless when you open Windows... something like that.")
  greetings+=("ChatGPT, who is ${YELLOW}Json?${RESET}")
  greetings+=("And hopefully, they'll live ${YELLOW}happily ever after.${RESET}")
  greetings+=("Enjoy your computer! :>")
  greetings+=("Not everyone has to understand. Just get at least one person to, alright?")
  greetings+=("Problems | 2>dev/null")

  # from reddit. seems like they didn't  like the question a lot, lol. how it works is greetings+=("messagehere") # the reddit user
  greetings+=("If the sun rises at midnight, pray you do not see tomorrow") # un-important-human
  greetings+=("Family dissapointment is temporary, C Programming Language is eternal") # No_Pollution6135
  greetings+=("Scripting fun projects is entertaining, now get back to work.") # Superfly-Samurai
  greetings+=("What other thinks of you is none of your fucking business.") # Striking_Snail
  greetings+=("One shouldn't be so consumed by the thrill of possibility that they forget to pause and consider if they should") #Damglador (holy this is peak)

  # this just counts how many items there are in the greetings array, then picks one of the indexes.
  howmanyGreets=${#greetings[@]}
  whichonedidBashpickforya=$(shuf -i 0-$((howmanyGreets - 1)) -n 1)

  # echo ""
  echo -e "${greetings[${whichonedidBashpickforya}]}" 
  # BashGreeted="${greetings[${whichonedidBashpickforya}]}"
}

case "$1" in
  help|--help|-h)
    echo ""
    echo "Usage: GreetMeBash [ help | notify | greet ]"
    echo "--------------------------------------------"
    echo "=-=[ help ] shows this page, duh"
    echo "=-=[ notify ] sends output thru notify-send"
    echo "=-=[ greet ] sends the output through the terminal directly."
    echo ""
    ;;

  notify)
    echo "Running greet_function..."
    BashGreeted=$(greet_function)

    BashGreetedMakoGreetedU=$(echo -e "$BashGreeted" | sed \
      -e "s/\x1b\[31m/<span foreground='red'>/g" \
      -e "s/\x1b\[32m/<span foreground='green'>/g" \
      -e "s/\x1b\[33m/<span foreground='yellow'>/g" \
      -e "s/\x1b\[35m/<span foreground='magenta'>/g" \
      -e "s/\x1b\[36m/<span foreground='cyan'>/g" \
      -e "s/\x1b\[0m/<\/span>/g")
    
    echo "Trying to send to notify-send..."
    DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$UID/bus" notify-send "$(hostname) said:" "$BashGreetedMakoGreetedU" -t 300000
    ;;

  greet)
    # echo "Running greet_function..."
    echo ""
    echo -e "[ ${CYAN}$(hostname)${RESET} said: ]"
    # echo ""    
    greet_function
    echo ""
    # echo "that SHOULD'VE worked. If not, idk man"
    ;;
  "")
    echo ""
    echo "Put params, mate. Idk use GreetMeBash -h something-something????"
    echo ""
    exit 1
    ;;
  *)
    echo ""
    echo "Yo dude, READ THE HELP PAGE!!! $1 is NOT a parameter. full stop."
    echo ""
    echo "hey, sorry about that. he's a bit angry. do GreetMeBash -h to learn the params."
    echo ""
    exit 1
    ;;
esac

