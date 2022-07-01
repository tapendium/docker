# docker containers

# Triggering custom deployment tags

to trigger a custom deployment pipeline just push the tag with skip

```bash
git tag -a skip:0.1.2 9fceb02 -m "Message here"
```

# Creating a new release


With gh cli

[installation](https://github.com/cli/cli#installation)

```bash
gh release create -d -F <input-file> -t "<title>" --target <branch_or_commit_hash>
```


