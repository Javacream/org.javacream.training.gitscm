mkdir repository-objects
cd repository-objects
git init
echo Hello > content.txt
git add .
git commit -m "add content"
echo Hugo > content2.txt
git add .
echo Emil > content2.txt
git add .
git commit -m "add content2"
mv content2.txt name.txt
git add .
git commit -m "rename content2 name"




