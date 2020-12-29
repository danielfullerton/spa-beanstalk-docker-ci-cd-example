# Installation
```shell script
git clone https://github.com/danielfullerton/spa-beanstalk-docker-ci-cd-example.git
```

# About
### Description
This is an example of how to set up a basic SPA on AWS Elastic Beanstalk.

### Features
- CI/CD via Github Actions to automatically build and deploy our Angular application on Elastic Beanstalk.
- Simple Dockerfile to set up and serve application on Elastic Beanstalk.
- An nginx configuration file that has a reverse proxy configuration to route all of our backend requests to another address. This way,
we can keep our UI and API codebases and servers decoupled.

### Intended Usage
It is expected that most people will copy/paste what they need from one of the following files:
- *Dockerfile* and *.dockerignore*
- *nginx.conf*
- *.github/workflows/deploy.yml*

### Instructions
1. We are expected to already have an AWS project, an Elastic Beanstalk application/environment created, and an access key and secret key combo
for AWS that has permissions to deploy Elastic Beanstalk applications. Ideally, you will also already have an API service with an accessible endpoint,
although this is optional.
2. Add the AWS access key and secret key, respectively, as Github secrets in the repository you are working on as such:
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY
3. Replace the *application_name*, *environment_name* and *region* values in the deploy.yml file with your Elastic Beanstalk values.
4. Push your code to one of the branches that has a deployment environment set up in your deploy.yml file (in this example, we have
the branch/environment "development" set up)
5. Your code should now build and deploy from Github Actions. Then, Elastic Beanstalk will unzip your project, use your Dockerfile
to set up the nginx container, and your app should start listening from port 80 (the default HTTP port on Elastic Beanstalk).

# Contributors
[Daniel Fullerton](https://github.com/danielfullerton)

# License
The MIT License (MIT)

Copyright (c) 2020 Daniel Fullerton

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
