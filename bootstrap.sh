#!/bin/sh

if [ ${#} -lt 1 ]; then
	echo "Usage: ${0} <name>"
	exit 1
fi

name="${1}"

mkdir "${name}"

touch "${name}/provision.sh"
cat << HEREDOC > "${name}/provision.sh"
#!/bin/sh
HEREDOC
chmod +x "${name}/provision.sh"

touch "${name}/test.sh"
cat << HEREDOC > "${name}/test.sh"
#!/bin/sh
test 1 -eq 0
HEREDOC
chmod +x "${name}/test.sh"