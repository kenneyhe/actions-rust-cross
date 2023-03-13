set -e
set -x
export PATH=.:$PATH
export OPENSSL_DIR=/usr/include/openssl

if [ -f "$RUNNER_TEMP/cross" ]; then
    echo "build-command=$RUNNER_TEMP/cross" >> $GITHUB_OUTPUT
else
    echo "build-command=cargo" >> $GITHUB_OUTPUT
fi
