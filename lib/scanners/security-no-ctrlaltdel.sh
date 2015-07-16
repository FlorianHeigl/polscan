# group: Security
# name: Ctrl-Alt-Del disabled
# description: Reboot via console Ctrl-Alt-Del should not be disabled

if grep -q "^[[:space:]]*[^#].*:ctrlaltdel:" /etc/inittab; then
	result_failed "Ctrl-Alt-Del is allowed in /etc/inittab"
fi