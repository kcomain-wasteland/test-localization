#!/usr/bin/env bash

VERSION="0.0.1"
V2=$2

echo "pybabel localeutils v${VERSION}"
echo ""

show_help() {
    echo "Usage: $0 [help|extract|update|new|compile]"

    if [ ! "$V2" ]; then
      cat << EOF

Commands:
    help     : show this message
    extract  : Extract translatable strings from all python files to locales/templates/base.pot (run this only once)
    update   : Update catalog files to include new translatable strings
    new      : Initialize new PO files for specified language
    compile  : Compile PO files to MO files

#use $0 help <item> to get in-depth help on that command.
EOF
    return 0; fi
    case $V2 in
        "" ) echo "æ";;
        *  ) echo "No such command.";;
    esac
}

extract() {
    if [ ! -d ./locales/en-US/LC_MESSAGES ]; then
        mkdir -p ./locales/en-US/LC_MESSAGES
    fi
    pybabel extract . -o ./locales/en-US/LC_MESSAGES/messages.pot \
        --copyright-holder=kcomain \
        --msgid-bugs-address=i18n@kcomain.dev
}

new() {
    pybabel init -l "$1" "$2" -i locales/en-US/LC_MESSAGES/messages.pot -d locales -D bot
}

case $1 in
    "help"     ) show_help ;;
    "extract"  ) extract ;;
    "update"   ) pybabel update -i locales/en-US/LC_MESSAGES/messages.pot -d locales ;;
    "new"      ) new "$2" "$3" ;;
    "compile"  ) pybabel compile -d locales ;;
    *          ) echo "No such command"; V2="" show_help; exit 1 ;;
esac
