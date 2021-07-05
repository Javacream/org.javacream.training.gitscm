rm -rf training_branches
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
echo "feature1" > content-feature1.txt
git add content-feature1.txt
git commit -a -m "add content-feature1"
git checkout feature2
echo "feature2" > content-feature2.txt
git add content-feature2.txt
git commit -a -m "add content-feature2"
git branch feature2_part1
git branch feature2_part2
git checkout feature2_part1
echo "feature2, part1" > content-feature2.txt
git commit -a -m "change content-feature2, part1"
git checkout feature2_part2
echo "feature2, part2" > content-feature2.txt
git commit -a -m "change content-feature2, part2"
git checkout master
