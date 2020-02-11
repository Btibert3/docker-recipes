## About this environment

- tensorflow in R along with RStudio
- install script to bring in other code
- could do like the tmobile apporach where we fit and host a model with plumber

https://github.com/tmobile/r-tensorflow-api  

## Build and Deploy

To build the image, even locally

```
docker build -t me/ml .
```

so that can is spun up with 

```
docker run -d -p 8787:8787 -e PASSWORD=changeme me/ml
```

> Above generates an Rstudio IDE on port 8787 with `rstudio` as user and password as defined above with keras setup, along with some tidyverse packages

