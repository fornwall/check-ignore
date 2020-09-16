#!/bin/sh -l

git ls-files -i --exclude-standard > /tmp/ignored-files
if [ -s /tmp/ignored-files ]; then
	echo "Files ignored by git exists in the repository:"
	echo ""
	cat /tmp/ignored-files
	exit 1
fi

exit 0
