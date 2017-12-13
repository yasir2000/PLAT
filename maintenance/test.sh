#!/bin/bash
active_containers="$(lxc list -c ns | grep -i running)"
echo $active_containers
findcontainers='\b(a-zA-Za-zA-Z0-9\-{,61}a-zA-Z0-9)\b'
echo $active_containers | sed -e "$findcontainers"
