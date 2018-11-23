git checkout master
:: Fast forward
git merge feature1
git checkout feature2
git merge feature2_alternative1
:: Recursive Merge, Merge Conflict
git merge feature2_alternative2
::Resolve and Commit Conflict
pause 
git add content-feature2.txt
:: git commit -m "merge with alternative2"
git merge --continue -m "merge with alternative2"
:: Recursive Merge, No Conflict
git checkout master
git merge feature2
