rm -r training_branches
mkdir training_branches
cd training_branches
git init
echo "Branches Training" > README.txt
git add README.txt
git commit -m "setup project"
echo "Hello 1 master" > content.txt
git add content.txt
git commit -m "add content"
echo "Hello 2 master" > content.txt
git commit -a -m "change content"
git branch feature1
git branch feature2
git checkout feature1
echo "Hello 1 feature1" > content-feature1.txt
git add content-feature1.txt
git commit -a -m "add content-feature1"
echo "Hello 2 feature1" > content-feature1.txt
git commit -a -m "change content-feature1"
git checkout feature2
echo "Hello 1 feature2" > content-feature2.txt
git add content-feature2.txt
git commit -a -m "add content-feature2"
git branch feature2_alternative1
git branch feature2_alternative2
git checkout feature2_alternative1
echo "Hello 2 feature2, alternative1" > content-feature2.txt
git commit -a -m "change content-feature2, alternative1"
git checkout feature2_alternative2
echo "Hello 2 feature2, alternative2" > content-feature2.txt
git commit -a -m "change content-feature2, alternative2"
git checkout -b dangling
echo "demo dangling" > content-dangling.txt
git add content-dangling.txt
git commit -a -m "add content dangling"
echo "demo dangling 2" > content-dangling.txt
git commit -a -m "add content dangling"
git checkout master
git branch -D dangling
