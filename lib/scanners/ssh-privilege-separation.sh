# group: SSH
# name: UsePrivilegeSeparation
# description: Checks /etc/ssh/sshd_config for UsePrivilegeSeparation yes

if ! grep -q "UsePrivilegeSeparation[[:space:]]yes" /etc/ssh/sshd_config 2>/dev/null; then
	result_failed "UsePrivilegeSeparation is not yes"
fi
