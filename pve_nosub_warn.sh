#!/usr/bin/env bash

echo " "
echo "Removing Proxmox Subscription Notice..."
echo " "

sed -i.backup -z "s/res === null || res === undefined || \!res || res\n\t\t\t.data.status.toLowerCase() \!== 'active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service

echo "Please wait ..."
echo "Remove of Proxmox Subscription Notice completed!"
echo " "
