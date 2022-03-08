#!/bin/false
#
# Summary: phpenv xdebug plugin
set -e
[ -n "$PHPENV_DEBUG" ] && set -x

if [ "$PHPENV_COMMAND" = "php" ]; then
    if ! [ -z "$XDEBUG_MODE" ]; then
        arg0="$1"
        shift 1
        set -- "$arg0" -dzend_extension=xdebug.so "$@"
    fi
fi
