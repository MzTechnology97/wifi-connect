#! /bin/bash
sleep 1m
wifi="$(ip a | grep wlan0 | grep inet | wc -l)"
                                        if [ $wifi = 1 ] || [ $wifi = 2 ]; then
                                                echo "ok"

                                        else
                                                echo "error wifi"
                                                sudo wifi-connect
                                        fi
