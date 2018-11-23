call C:\Users\Administrator\git\org.javacream.training.gitscm\scripts\create-file-repository.bat
rmdir /s /q clone1
rmdir /s /q clone2
mkdir clone1
cd clone1
git clone ../server
cd ..
mkdir clone2
cd clone2
git clone ../server

cd ../clone1/server
git branch demofeature_1
git checkout demofeature_1
echo Hello > demofeature_1.txt
git add demofeature_1.txt
git commit -m "add demofeature_1.txt"
echo Hello Again > demofeature_1.txt
git commit -a -m "update demofeature_1.txt"
echo Hello Again and again> demofeature_1.txt
git commit -a -m "update demofeature_1.txt"
git pull --rebase origin master
git rebase master
git checkout master
git merge demofeature_1
git push

cd ../../clone2/server
git branch demofeature_2
git checkout demofeature_2
echo Hello > demofeature_2.txt
git add demofeature_2.txt
git commit -m "add demofeature_2.txt"
echo Hello Again > demofeature_2.txt
git commit -a -m "update demofeature_2.txt"
echo Hello Again and again> demofeature_2.txt
git commit -a -m "update demofeature_2.txt"
git pull --rebase origin master
git rebase master
git checkout master
git merge demofeature_2
git push

