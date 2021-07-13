mkdir demo_github_flow  
cd demo_github_flow  
git init -b main  
echo GitHubFlow > Readme.txt
git add . 
git commit -m "initial"
git tag initial 
git checkout -b feature/planet
echo Venu > planet.txt
git add . 
git commit -m "working on planets"
echo Venus > planet.txt
git add . 
git commit -m "working on planets"
echo Mars > planet.txt
git add . 
git commit -m "working on planets"
echo Jupiter > planet.txt
git add . 
git commit -m "working on planets"
git tag finish/planet 
git rebase --interactive initial
git checkout main
git merge feature/planet
git tag v1.0-Milestone-1 
git branch -d feature/planet
git checkout -b feature/star
echo Sol > star.txt
git add . 
git commit -m "working on stars"
echo Beteigeuze > star.txt
git add . 
git commit -m "working on stars"
echo Vega > star.txt
git add . 
git commit -m "working on stars"
git tag finish/star 
git rebase --interactive main
git checkout main 
git merge feature/star 
git branch -d feature/star
git tag v1.0
