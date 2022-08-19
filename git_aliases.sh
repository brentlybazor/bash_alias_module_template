# CHECKOUT BRANCHES

# checkout the feature branch
[prefix]-gcf () {
    __branch-exists-check "feature/[PREFIX]-${1}"
}

# checkout the release branch
gcr () {
    __branch-exists-check "release/${1}"
}

# checkout the bugfix branch
[prefix]-gcbf () {
    __branch-exists-check "bugfix/[PREFIX]-${1}"
}

# PUSH BRANCHES

# upstream alias (this takes out the requirement to type out feature/[PREFIX]-)
# first param is the ticket number/name
[prefix]-gpf () {
    git push --set-upstream origin "feature/[PREFIX]-${1}"
}

# upstream alias (this takes out the requirement to type out release/)
# first param is the ticket number/name
[prefix]-gpr () {
    git push --set-upstream origin "release/${1}"
}

# upstream alias (this takes out the requirement to type out bugfix/[PREFIX]-)
# first param is the ticket number/name
[prefix]-gpbf () {
    git push --set-upstream origin "bugfix/[PREFIX]-${1}"
}

[prefix]-gpup () {
    git push --set-upstream origin "${1}"
}

__branch-exists-check () {
    branch_name=$1
    branch_exists=false
    create_branch='n'
    if [[ $branch_name = $(git branch --show-current) ]]
    then
        echo "Currently on $branch_name branch."
        branch_exists=true
    fi

    if [[ "$branch_exists" = false ]] && [ `git branch --list $branch_name` ];
    then
        echo "Branch name $branch_name already exists."
        branch_exists=true
    fi

    if [[ "$branch_exists" = false ]]
    then
        read -p 'Want to create this branch?[y/n]' create_branch
    else
        git checkout $branch_name
    fi

    if [[ "$create_branch" = 'y' ]]
    then
        echo 'creating branch'
        git checkout -b $branch_name
    fi 
}