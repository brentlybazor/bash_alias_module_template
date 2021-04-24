create_new_repo_github () {
    echo 'creating new repo'

    mkdir $1
    cd $1

    touch README.md
    git init
    git add README.md
    git commit -m "first commit"
    # git remote add origin git@github.com:brentlybazor/$1.git
    # git push -u origin master
    # todo: add options for private, public visiblity
    # todo: what name should you use for the repo
    gh repo create $1 --private -y


}


lsTest () {
    array=(*)
    echo $array
}