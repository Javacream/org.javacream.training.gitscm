rm -r -f server
rm -r -f temp
mkdir server
cd server
git init --bare
cd ..
mkdir temp
cd temp
git clone ../server
cd server
echo "Simple Git Server Project" > Readme.txt
git add Readme.txt
git commit -m "initialize project"
git branch develop
git push --all origin
cd ..
cd ..
rm -r -f temp


