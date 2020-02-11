# ABOUT

Various Docker setups.  I need to organize snippets that I see, or put together in a single repo for quick reference and deployment.

Want a recipe added to the repo?  Create a fork request!

## Build and Deploy

To build the image, even locally

```
docker build -t me/ml .
```

so that can is spun up with 

```
docker run -d -p 8787:8787 -e PASSWORD=changeme me/ml

## TODO:

Delete current repo
replace with Dockerfile and install.R into that folder
u/p rstudio and pw of choice
