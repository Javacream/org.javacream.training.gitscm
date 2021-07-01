rm -rf training_cherry-pick
mkdir training_cherry-pick
cd training_cherry-pick
git init
echo "Branches Training" > README.txt
git add README.txt
git commit -m "setup project"

git checkout -b experiment1
git checkout -b experiment2
git checkout -b feature1

echo Feature1 > feature1.txt
git add .
git commit -m "implement feature1"

git checkout experiment1
echo Experiment1 > README.txt
git add .
git commit -m "change readme, exp1"
echo Experiment1 > experiment1.txt
git add .
git commit -m "add experiment1"

git checkout experiment2
echo Experiment2 > experiment2.txt
echo firstChangeExp2 > readme.txt
git add .
git commit -m "add experiment2"
echo secondChangeExp2 > README.txt
git add .
git commit -m "change readme, exp2"
git checkout feature1



