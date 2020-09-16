#!/bin/sh -l

find . | git check-ignore --stdin > /tmp/ignored-files
if [ $? = 0 ]; then
	echo "Files ignored by git exists in the repository:"
	echo ""
	cat /tmp/ignored-files
fi

exit 0
