#! /bin/sh

echo 'echo Hello' > ~/mybin
chmod +x ~/mybin
ln ~/mybin /usr/bin/mybin
