# alexsavio/terraform-npm-py

Docker image containing Terraform, Python and npm.

## Usage

### Build Locally

If you want to build and use your own local image

```bash
# build image locally
$ make build
# go inside the container
$ make shell
```

### Fix for the current version

1. Do the fixes you want to do
2. Build and test locally (test also the apigw example)
3. Commit and push the changes
4. Run `$ make tag`
5. Go to [hub.docker.com](https://hub.docker.com/r/alexsavio/serverless/)
6. In `Build Details` tab, you should now see build the tag kicking off
