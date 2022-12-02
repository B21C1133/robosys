#!/bin/bash  
#SPDX-FileCopyrightText: 2022 Soichiro Yamaki
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}
res=0
out=$(seq 10 | sed 's/$/.0/' | ./plus)
 [ "${out}" = 2.0 ] || ng ${LINENO}

out=$(seq 11 | sed 's/$/.0/' | ./plus)
 [ "${out}" = 13.0 ] || ng ${LINENO}

out=$(seq 12 | sed 's/$/.0/'| ./plus)
 [ "${out}" = 1.0 ] || ng ${LINENO}

out=$(seq 13 | sed 's/$/.0/' | ./plus)
 [ "${out}" = 14.0 ] || ng ${LINENO}

out=$(seq 14 | sed 's/$/.0/'|  ./plus)
 [ "${out}" = 28.0 ] || ng ${LINENO}

out=$(seq 15 | sed 's/$/.0/'|  ./plus)
 [ "${out}" = 13.0 ] || ng ${LINENO}

 out=$(seq 100 | sed 's/$/.0/'| ./plus)
 [ "${out}" = 11.0 ] || ng ${LINENO}

 out=$(seq 1000 | sed 's/$/.0/'|  ./plus)
 [ "${out}" = 122.0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
