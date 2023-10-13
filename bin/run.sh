#! /bin/sh
root="/opt/test-runner"
export PYTHONPATH="$root:$PYTHONPATH"
mkdir autograding_output

python3 /opt/test-runner/bin/run.py ./ ./autograding_output/

echo "result=$(cat $GITHUB_WORKSPACE/autograding_output/result.json)" >> $GITHUB_OUTPUT
