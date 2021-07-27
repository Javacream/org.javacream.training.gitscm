mkdir demo_github_flow  
cd demo_github_flow  
git init  
git tag initial 
echo GitHubFlow > Readme.txt
git add . 
git commit -m initial
git tag initial 
git checkout -b feature/planet
echo Venu > planet.txt
git add . 
git commit -m working on planets
echo Venus > planet.txt
git add . 
git commit -m working on planets
echo Mars > planet.txt
git add . 
git commit -m working on planets
echo Saturn > planet.txt
git add . 
git commit -m working on planets
git tag finish_planet 
git pl  
git rebase --interactive initial
git checkout master 
git merge feature/planet 
git branch -d feature/planet
git checkout -b feature/star
echo Sol > star.txt
git add . 
git commit -m working on stars
echo Vega > star.txt
git add . 
git commit -m working on stars
echo Beteigeuze > star.txt
git add . 
git commit -m working on stars
git tag finish_star 
git rebase --interactive master
git checkout master 
git merge feature/star 
git branch -d feature/star
git tag v1.0 
git checkout 4be21d9 
git tag v1.0-Milestone-1 
git checkout master 

