#! /bin/sh
root="/opt/test-runner"
export PYTHONPATH="$root:$PYTHONPATH"
# run bin/run.py from action root
python3 /opt/test-runner/bin/run.py octosteve-sample-tests ./ ./autograding_output/

echo "result=$(cat $GITHUB_WORKSPACE/autograding_output/result.json)" >> $GITHUB_OUTPUT
