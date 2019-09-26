### Various Commands Used in Git ##

### Initialize a new git directory
```
git init
```
### Setting configuration parameters
```
git config --global user.name BakulGupta
git config --global user.email bakulgupta11@gmail.com
git config --global core.editor vi
```


### Add the file to staged area
Add all files to staged area
```
git add .
```
Add a specific file to staged area
```
git add test.html *.js
```

### Commit the files
```
git commit -m "Add a commit"
```

### Check the  status of files in git repo

```
git status -s
```

### Remove a file from git repo
```
git rm file_name
```

### Move a file to another folder in repo
```
git mv file_name hello/file_name
```

### Check the log of git repo
```
git log
git log --pretty=oneline
git log --graph
git log -n 5
git log --since=2.weeks
git log --grep=search
```


## Undoing changes in git repo

### Undo the last commit in git repo
```
git commit --amend
```

### Modifying a staged file
```
git reset HEAD <file_name>
```
### Unmodifying  a modified file
```
git checkout -- <file_name>
```

### Check  for git remote
```
git remote -v
```

### Adding a remote to git
```
git remote add <name_of_remote> git_repo_url
```

### More information about  git remote
```
git remote show origin
```

### Rename a git remote
```
git remote rename origin lukab
```


### Git Fetch
```
Pulls all data from the remote , but it didn't merge it by itself
```

### Git pull
Git pull command is a combination of git fetch and git merge

### Tagging 
Tagging in git helps to keep track of version for product or project
In git , there are two types of tag:
1. Lightweight Tag  ( pointer to a specific comment )
2. Annonated Tag   ( contains full objects information )

### To see all tags
```
git tag
```
### Create a annonated tag
```
git tag -a v0.0.1 -m "tag_message"
```

### Check the tag data
```
git show v0.0.1
```

### Delete a tag
```
git tag -d v0.0.1
```

### Add a tag using commmit
```
git tag -a v0.0.1 <commit_id>
```

### Push tag to shared instance 
```
git push origin v0.0.1
git push origin --tags
```

### Make a new branch in git
```
git branch testing
```

### Point the head to new pointer
```
git checkout testing
```

### Check the last commit on each branch
```
git branch -v
```

### Check the  status of merged branch
```
git branch --merged
git branch --no-merged
```

### Push a local branch to different remote branch
```
git push origin local:remote
```

### Remove a remote branch
```
git push origin :remote
```

### Git Merging
```
git checkout -b new_feature
git add .
git commit -m "New feature Code Tested"
git checkout master
git merge new_feature
git push origin :new_feature
```

### Rebasing
- Helps to provides more cleaner history
- Actually the work is carried in parallel ( in different branches) ,but it seems to be series if we view the history.

Suppose there are three branches
1. Master
2. Server
3. Client
So right now we only wants to push those client changes to master ,which are not part of server branch
```
git rebase --onto master server client
```

```
git rebase master server
git checkout master
git merge server

```
It means checkout the server branch and replays it onto the master branch
Now merging will be fastforward.

*Do not rebase commits that are already pushed to public repository*





