#!/usr/bin/env bash

# Omoară procesele existente
killall -q polybar

# Așteaptă până când procesele sunt închise
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Pornește Polybar folosind numele "mybar" definit în config.ini
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
