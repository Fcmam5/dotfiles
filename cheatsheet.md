
Change commit author when it's already pushed to origin/master

```bash
git rebase \\
  -i origin/master \\
  --exec 'git commit --amend --no-edit --author="[NAME] <[MAIL]>"'
```
