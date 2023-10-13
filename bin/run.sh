#! /bin/sh

set -ex
root="/opt/test-runner"
export PYTHONPATH="$root:$PYTHONPATH"
mkdir autograding_output

python3 /opt/test-runner/bin/run.py ./ ./autograding_output/
echo "result=$(jq -c . results.json | jq -sRr @uri)"
echo "result=$(jq -c . results.json | jq -sRr @uri)" >> $GITHUB_OUTPUT
