# docker containers

# Deploying an image

```bash
git tag -a <example-image>/<version> <commit-hash> -F release_notes/<example-image>_<version>.md
```

```bash
git push --tags
```

# Triggering custom deployment tags

To trigger a custom deployment pipeline, upload custom pipeline in .buildkite/tag.yml and push the tag with skip.

```bash
git tag -a skip/<version> <commit-hash>
```
