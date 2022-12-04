#!/bin/bash  
#SPDX-FileCopyrightText: 2022 Soichiro Yamaki
#SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo NG at Line $1
        res=1
}
res=0

 out=$(./test.bash) || ng ${LINENO}
 out=$(./test2.bash) || ng ${LINENO}
 out=$(./test3.bash) || ng ${LINENO}
 out=$(./test4.bash) || ng ${LINENO}

[ "$res" = 0 ] && echo OK
 exit $res
