# Git

- [Git](#git)
  - [Line ending](#line-ending)
    - [More information](#more-information)
  - [Simple Workflow](#simple-workflow)
  - [Modify a commit](#modify-a-commit)

## Line ending

| OS      | Command                                   |
| ------- | ----------------------------------------- |
| macOS   | $ git config --global core.autocrlf input |
| Windows | $ git config --global core.autocrlf true  |
| Linux   | $ git config --global core.autocrlf input |

### More information
https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings

## Simple Workflow

| Step | git command            | Description                               |
| ---- | ---------------------- | ----------------------------------------- |
| 1    | git branch [develop]   | Create the new branch for development     |
| 2    | git checkout [develop] | Switch to new branch and start to develop |
| 3    | git add ...            | Add files to staging area                 |
| 4    | git commit -m "..."    | Commit all changes to local repository    |
| 5    | git checkout master    | Switch back to the master branch          |
| 6    | git pull origin master | Pull the updates from the remote server   |
| 7    | git merge [develop]    | Merge the branch back to master branch    |
| 8    | git push               | Push the changes to the remote server     |

* Note: [develop] is only the example of branch name.

## Modify a commit

To modify a commit, you have to use the git commit command but with “--amend” as a parameter. It will open your default text editor like a normal commit but with the staged files and commit message already there.
```
$ git commit --amend
```