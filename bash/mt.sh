#!/bin/bash

ZSTAC_PROJECT_TEST_DIR=/root/zstack/test
ZSTAC_PROJECT_PREMIUM_TEST_DIR=/root/zstack/premium/test-premium/

PATH1=$(find $ZSTAC_PROJECT_PREMIUM_TEST_DIR -type f | grep "$1" | grep -v target | awk -F "src/test/groovy/" '{print $1}')

if [ -z "$PATH1" ]; then
    PATH1=$(find $ZSTAC_PROJECT_TEST_DIR -type f | grep "$1" | grep -v target | awk -F "src/test/groovy/" '{print $1}')
fi

cd "$PATH1" || exit 1
git pull --rebase
mvn test -Djacoco.skip=true -Dtest="$1"
