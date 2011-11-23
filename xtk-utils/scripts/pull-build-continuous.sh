SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
XTKUTILS_DIR=$SCRIPTS_DIR/../
XTK_DIR=$XTKUTILS_DIR/../

cd $XTK_DIR
git checkout master
update=$(git diff origin/master)
if [ ${update} ]
  then
    git pull
    cd $XTKUTILS_DIR
    # -c: continuous
    python build.py -c
  else
    echo 'no remote changes.. exiting..';
fi