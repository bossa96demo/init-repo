name=$1 # we take name of the repo from user
if [ $# = '0' ]; then # check if user gives us name
    echo "you haven't specified the name of the repo you want to create"
    exit 1
fi
mkdir $name # we create directory with project, it is more convinient
cd $name 
echo "# $name" > readme.md # creating readme with the name of repo
git init # init-ing repository
git add readme.md # add readme to the first commit
git commit -m "init commit" # commiting
git branch -M main # creating branch "main"
git remote add origin git@github.com:bossa96demo/$name.git # adding remote origin to control project with ssh git
git push -u origin main # pushing everything
