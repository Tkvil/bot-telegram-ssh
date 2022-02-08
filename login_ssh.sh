#!/bin/bash

LOGIN_IP="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
LOGIN_DATE="$(date +"%e %b %Y, %a %r")"
LOGIN_NAME="$(whoami)"
LOGIN_PUBLIC="$(wget -qO- ifconfig.co/ip)"

MESSAGE="NEW LOGIN TO SERVER"$'\n'"$LOGIN_NAME"$'\n'"$LOGIN_IP"$'\n'"$LOGIN_DATE"$'\n'"$LOGIN_PUBLIC"
msg-telegram "$MESSAGE"
