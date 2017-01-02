#!/bin/bash

/etc/init.d/redis-server start

if [[ $NTOP_ADMIN_PASSWORD ]]; then 

    while sleep 1
    do
        redis-cli ping
        case $? in 
        0)
            break
            ;;
        *)
            echo "Waiting for redis to be up .. "
            ;;
      esac
    done

    redis-cli SET ntopng.user.admin.password $NTOP_ADMIN_PASSWORD

fi

ntopng "$@"
