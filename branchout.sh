git checkout $1 version.txt
V=`cut -f 1 -d "." version.txt`
git reset HEAD version.txt
git checkout version.txt
let NV=V+1
FULL_VERSION="$NV.0"
echo $FULL_VERSION
echo $FULL_VERSION > version.txt
git add version.txt
git commit -m "New version: $FULL_VERSION"
git tag $FULL_VERSION $1
git branch "v/$FULL_VERSION" $1
git push origin "v/$FULL_VERSION" --tags
