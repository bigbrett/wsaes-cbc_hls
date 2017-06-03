#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jd/workspace/aes256cbc/solution1/.autopilot/db/a.g.bc ${1+"$@"}
