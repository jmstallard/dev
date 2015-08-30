#!/bin/bash

match() {
local p=$1 v
shift for v do [[ $v = $p ]] && return
done
return 1
}

echo $1 $2
match $1, $2
