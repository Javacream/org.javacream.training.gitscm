rm -rf training_merging
mkdir training_merging
cd training_merging
git init
echo "Merging Training" > README.txt
git add README.txt
git commit -m "setup project"
echo "Content from master" > content.txt
git add content.txt
git commit -m "add content"
echo "Changed content from master" > content.txt
git commit -a -m "change content"
git branch feature1
git branch feature2
git branch feature3
git checkout feature1
echo "Content from feature1" > content-feature1.txt
git add content-feature1.txt
git commit -a -m "add content-feature1"
echo "Changed content from feature1" > content-feature1.txt
git commit -a -m "change content-feature1"
git checkout feature2
echo "Content from feature2" > content-feature2.txt
echo "Merging Training changed by feature2" > README.txt
git add .
git commit -m "add content-feature2"
git checkout feature3
echo "Content from feature3" > content-feature3.txt
echo "Merging Training changed by feature3" > README.txt
git add .
git commit -m "add content-feature3"
git checkout master
