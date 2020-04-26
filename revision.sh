git checkout $1 version.txt
V=`cut -f 1 -d "." version.txt`
REV=`cut -f 2 -d "." version.txt`
git reset HEAD version.txt
git checkout version.txt
let NEW_REV=REV+1
FULL_VERSION="$V.$NEW_REV"
echo $FULL_VERSION
echo $FULL_VERSION > version.txt
git add version.txt
git commit -m "New revision: $FULL_VERSION"
git tag $FULL_VERSION $1
git push --tags
