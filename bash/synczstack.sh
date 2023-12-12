#!/bin/bash
#changefiles=$(bash ~/Soft/my_sh/g.sh zstack bash /root/shell/getdiff.sh 2>/dev/null)
check_args() {
    # 获取参数数量
    num_of_args=$#

    # 判断参数数量是否符合要求
    if [ "$num_of_args" -ne 2 ]; then
        echo "Need 2 args."
		exit 1
    fi
}
check_args

set -x
cd /Users/jingwang/IdeaProjects/zstack
rsync  -avzP --delete --exclude "*.iml" --exclude "target/*"  root@zstack:/root/zstack/$1 /Users/jingwang/IdeaProjects/zstack/$1


