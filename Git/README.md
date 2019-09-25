changed file

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

