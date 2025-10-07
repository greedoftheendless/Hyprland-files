#!/bin/bash

# Get a list of available wifi networks
wifi_list=$(nmcli --fields "SSID,SECURITY,BARS" device wifi list | sed "/^--/d" | sed "s/  */ /g" | sed -E "s/WPA[0-9]*.+WPA[0-9]*.?//g" | sed "s/WEP//g" | sed "s/--/ /g")

# Use rofi to select a network
chosen_network=$(echo -e "$wifi_list" | rofi -d -p "Select Wifi")
chosen_ssid=$(echo "$chosen_network" | sed "s/.* //" | xargs)
existing_connection=$(nmcli connection show | grep "$chosen_ssid")

# If a network is chosen
if [ -n "$chosen_ssid" ]; then
    # If the connection already exists, connect to it
    if [ -n "$existing_connection" ]; then
        nmcli connection up "$chosen_ssid"
    else
        # If the network is not password protected
        if [[ "$chosen_network" =~ \s( ) ]]; then
            nmcli device wifi connect "$chosen_ssid"
        else
            # Ask for password
            wifi_password=$(rofi -d -p "Password for $chosen_ssid")
            if [ -n "$wifi_password" ]; then
                nmcli device wifi connect "$chosen_ssid" password "$wifi_password"
            fi
        fi
    fi
fi
