#!/system/bin/su

CLEAR_TERMINAL="\033[2J\033[H"
RESET="\033[0m"
GRAY="\033[90m"
CYAN="\033[36m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
WHITE="\033[1;37m"

echo $CLEAR_TERMINAL

echo "${GREEN}  Hologram${RESET}"
echo "${GREEN}Free Fire Max${RESET}"
echo 

if [ "$(id -u)" != "0" ]; then
    echo "${RED}Run The Script With Root Privileges${RESET}"
    exit 1
fi

PATCH_FILE_PATH="/data/user/0/com.dts.freefiremax/files/split_asset_pack_install_time.apk.pdcache"

if [ -f "$PATCH_FILE_PATH" ]; then

    if sed -i 's/f00cef0f0b1ba2647be6f2e521768a72/216a7113b7f1bc74eb2289d47f2a406d/g' "$PATCH_FILE_PATH"; then
        echo "${GREEN}Patch Successful${RESET}"
        exit 0
    else
        echo "${RED}Patching Failed${RESET}"
        exit 1
    fi

else
    echo "${RED}Path To Patch File Doesn't Exist${RESET}"
    exit 1
fi

#Free Use Only