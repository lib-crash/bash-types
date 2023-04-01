#!/bin/bash

int() {
	local var="$1"
	local val
	eval "$*"
	var="${var%%=*}"
	val="$(eval "echo \$$var")"
	if [[ "$val" =~ ^[0-9]+$ ]]
	then
		return
	fi
	echo "Error: int $var assigned to non numeric value '$val'"
	exit 1
}

int a=2

echo "$a" # => 2

int b=foo # => Error: int b assigned to non numeric value 'foo'

