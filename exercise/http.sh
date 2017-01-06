#!/bin/bash

#curl -X GET -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/jollen/blog/issues

# See: https://developer.github.com/v3/issues/#list-issues-for-a-repository

API="https://api.github.com/repos/jollen/blog/issues"

HEADER_ACCEPT="Accept: application/vnd.github.v3+json"
LOG_FILE="http.log"

function HTTP_GET {
    local uri=$1

    curl -X GET -H "$HEADER_ACCEPT" "$uri" --output "$LOG_FILE"
}

function HTTP_GET_title {
    local uri=$1

    curl -X GET -H "$HEADER_ACCEPT" "$uri" 2>/dev/null | jq '.[] | .title'
}

clear
HTTP_GET_title $API