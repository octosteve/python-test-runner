#! /bin/sh

set -ex
root="/opt/test-runner"
export PYTHONPATH="$root:$PYTHONPATH"
mkdir autograding_output

python3 /opt/test-runner/bin/run.py ./ ./autograding_output/
echo "result=$(cat $GITHUB_WORKSPACE/autograding_output/results.json | jq -c .)" 
echo "result=$(cat $GITHUB_WORKSPACE/autograding_output/results.json | jq -c .)" >> $GITHUB_OUTPUT
