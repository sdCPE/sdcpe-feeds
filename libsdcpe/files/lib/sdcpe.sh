#!/bin/sh

list_device_macaddress() {
	for dev in /sys/class/net/*; do case $(readlink -f "$dev") in *virtual*);; *) printf "%s %s\n" "${dev##*/}" "$(cat "$dev/address")";; esac; done
}

list_device_macaddress_json() {
	echo "[ $(list_device_macaddress | awk 'NR>1{print","}{print"{ \"device\": \""$1"\", \"macaddress\": \""$2"\" }"}') ]";
}

