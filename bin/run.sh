#! /bin/sh
root="$( dirname "$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )" )"
export PYTHONPATH="$root:$PYTHONPATH"
python3 bin/run.py octosteve_sample_tests $GITHUB_WORKSPACE/ $GITHUB_WORKSPACE/autograding_output/

echo "result=$(cat $GITHUB_WORKSPACE/autograding_output/result.json | jq -c .)" >> $GITHUB_OUTPUT
