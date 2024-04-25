rm -rf training_branches
mkdir training_branches
cd training_branches
git init --initial-branch=main
echo Branches > README.txt
git add .
git commit -m "setup project"
git tag v1.0
git branch feature/star
git branch feature/planet
git checkout feature/star
echo Vega > star.txt
git add .
git commit -m " initialize vega"
echo Sol > star.txt
git add .
git commit -m "change to Sol"
git checkout feature/planet
echo Venus > planet.txt
git add .
git commit -m "initialize  venus"
git branch feature/planet_part1
git branch feature/planet_part2
git checkout feature/planet_part1
echo Mercury > planet.txt
git add .
git commit -m "change  Mercury"
git checkout feature/planet_part2
echo Uranus > planet.txt
git add .
git commit -m "change Uranus"
echo Jupiter > planet.txt
git add .
git commit -m "change Jupiter"
git checkout main
