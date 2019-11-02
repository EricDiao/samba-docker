#!/bin/bash

systemctl start {smb,nmb,winbind}

systemctl status {smb,nmb,winbind}

while :
do
  # loop infinitely
done

return 0
