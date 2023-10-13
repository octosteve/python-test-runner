#! /bin/sh

set -ex
root="/opt/test-runner"
export PYTHONPATH="$root:$PYTHONPATH"
mkdir autograding_output

python3 /opt/test-runner/bin/run.py ./ ./autograding_output/
echo "result=$(jq -c . results.json | jq -sRr @base64)"
echo "result=$(jq -c . autograding_output/results.json | jq -sRr @base64)" >> $GITHUB_OUTPUT
