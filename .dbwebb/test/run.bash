#!/usr/bin/env bash
#
# This script is called by 'dbwebb test <target>' and can be used to prepare
# and execute additional scripts.
#
# Arguments:
#  course_dir           Absolute path to the basedir of the course repo.
#  course               Nickname of the course.
#  acronym              Acronym of the user executing the script.
#  <test_suite>         Kmom or Assignment of the testsuite to execute.
#                       If -g, --generate is passed here,
#                           it will call generate.d.bash instead.
#  <optional args>      Optional arguments
#


# Usage
if (( $# < 3 )); then
    printf "Usage: %s <course_dir> <course> <acronym> <test-suite> <optional args...>\n" \
        "$( basename -- "$0" )"
    exit 1
fi

COURSE_REPO_BASE="$1"
COURSE_NICK="$2"
KMOM="$4"
ACRONYM="$3"

# Catches and replaces for student acronym
case "$5" in
    "-a" | "--acronym" )
        ACRONYM="$6"        ;;
esac

URL="https://www.student.bth.se/~$ACRONYM/dbwebb-kurser/$COURSE_NICK/me/portfolio"

echo "======================================="
echo "  Testing Output    "
echo "  Testing $KMOM for $ACRONYM    "
echo "======================================="

PARSER_FILE="$COURSE_REPO_BASE/.dbwebb/test/parsers/$KMOM.js"

if [[ "$KMOM" == "kmom06" ]]
then
    PARSER_FILE="$COURSE_REPO_BASE/.dbwebb/test/parsers/kmom06.mjs"
fi

# Handle CYGWIN and node not friends
# https://github.com/npm/npm/issues/2465
# https://github.com/nodejs/node-v0.x-archive/issues/5560
case `uname` in
    *CYGWIN*) PARSER_FILE=$(cygpath -w "$PARSER_FILE");;
esac

PARSER_OUTPUT="$(node "$PARSER_FILE" "$URL")"
PARSER_EXIT_STATUS="$?"

echo -e "$PARSER_OUTPUT"

exit "$PARSER_EXIT_STATUS"
