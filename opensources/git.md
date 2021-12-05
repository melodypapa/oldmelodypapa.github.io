# Git

- [Git](#git)
  - [Line ending](#line-ending)
    - [More information](#more-information)
  - [Simple Workflow](#simple-workflow)
  - [FAQ](#faq)
    - [How to Undo the Last Commit](#how-to-undo-the-last-commit)

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

## FAQ

### How to Undo the Last Commit

```
$ git log -10 --oneline
75be203 (HEAD -> master) ...
92e5dac (origin/master, origin/HEAD) Merge pull request #15 ...
07991f0 Merge pull request #14 ...
b409cff Merge pull request #13 ...
...

$
```