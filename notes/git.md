```
echo 'Content' > FileName
git config --list
git config --global --list
git config --global user.name "First-name Surname"
git config --global user.email "you@email.com"
git config -- global core.autocrif input
```

## Git Basic
```
$ git init
$ git stash
$ git stash pop  remove changes temporarily
$ git add XX.x
$ git add -p XX.x  interactive way
$ git reset HEAD XX.x  Unstaging a Staged File
$ git restore --staged XX.x  Unstaging a Staged File
$ git restore XX.x Unmodifying a Modified File
$ git checkout -- XX.x  Unmodifying a Modified File
$ git commit -m(ark) 'Commit message'
$ git commit --amend  make little revision
$ git status
$ git status -s(hort)
$ cat .gitignore [site](https://github.com/github/gitignore)
$ git diff  With unstaged
$ git diff --staged
$ git rm XX.x
$ git rm -f(orce) XX.x
$ git rm --cached FileNeme
$ git mv oldfilename newfilename  Change filename
$ git log
$ git log -p(atch) -2
$ git log --stat
$ git log --pretty=oneline
$ git log --pretty=format:"%h - %an, %ar : %s"
$ git log --pretty=format:"%h %s" --graph
$ git log -S function
$ git log -- path/to/file
$ git log --oneline --decorate --graph --all
$ git log --pretty="%h - %s" --author='Junio C Hamano' --since="2008-10-01" \
   --before="2008-11-01" --no-merges -- t/
$ git bisect binary search history
$ git tag v1 c1  tag c1=v1
$ git describe c1  distance tag between master & c1
```

Showing Your Remotes
```
$ git clone https:// [name]  Clone all the repository
$ git clone --shallow
$ cd name
$ git remote
$ git remote -v
Adding Remote Repositories
$ git remote add name https://
$ git fetch <remote>
$ git fetch <local> <remote>
$ git fetch <local> <remote>:<newname>
$ git fetch <local> :<newname>  create new localbranch
$ git pull fetch&merge
$ git checkout -b <local> origin/<remote>
$ git checkout --track origin/<remote>
$ git push <remote> <branch>
$ git push <remote> <branch>:awesomebranch
$ git push <remote> :<newname>  delete remotebranch
$ git remote show <remote>
$ git remote rename <oldname> <newname>
$ git remote remove <name>
$ git fakeTeamwork  Create remote commit
$ git fakeTeamwork branch 3
$ git pull --rebase
```
## Git Branches
```
$ git branch newbranch
$ git checkout newbranch  Switching Branches
$ git checkout -b <newbranchname>  Create and switching branch
$ git checkout -b <newbranchname> <origin/master>  switch new master
$ git branch -u <origin/main> <newmaster>  switch new master
$ git log --oneline --decorate --graph --all
$ git merge newbranch  **after switching back to master**
$ git branch -d newbranch
$ git branch -v  last commit on each branch
$ git branch -vv
$ git branch --merged
$ git branch --no-merged
$ git branch --move bad-branch-name corrected-branch-name
$ git branch -f main HEAD~4  move main backward
$ git push --set-upstream origin corrected-branch-name
$ git push --set-upstream-to=origin/master  push directly
$ git push origin --delete bad-branch-name
$ git checkout branch
$ git rebase master  make a linear history
$ git rebase -i HEAD~4  make copy and omit/rerange
$ git rebase main branch
$ git cherry-pick c0 c2  copy c1 c2 to master
$ git reset HEAD~1  local
$ git revert HEAD  remote
$ git tag -l
```


