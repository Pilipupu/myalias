#!/bin/bash
set -x

#changefiles=$(bash ~/Soft/my_sh/g.sh zstack bash /root/shell/getdiff.sh 2>/dev/null)

cd /Users/jingwang/IdeaProjects/zstack
rsync  -avzP --delete --exclude "*.iml" --exclude "target/*"  root@zstack:/root/zstack/$1 /Users/jingwang/IdeaProjects/zstack/$1


