#!/bin/bash 
#SPDX-FileCopyrightText: 2022 Soichiro Yamaki
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}
res=0
out=$(seq 10 | ./plus)
 [ "${out}" = 2 ] || ng ${LINENO}

out=$(seq 11 | ./plus)
 [ "${out}" = 13 ] || ng ${LINENO}

out=$(seq 12 | ./plus)
 [ "${out}" = 1 ] || ng ${LINENO}

out=$(seq 13 | ./plus)
 [ "${out}" = 14 ] || ng ${LINENO}

out=$(seq 14 | ./plus)
 [ "${out}" = 28 ] || ng ${LINENO}

out=$(seq 15 | ./plus)
 [ "${out}" = 13 ] || ng ${LINENO}

 out=$(seq 100 | ./plus)
 [ "${out}" = 11 ] || ng ${LINENO}

 out=$(seq 1000 | ./plus)
 [ "${out}" = 122 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
