
[![CircleCI](https://circleci.com/gh/ChristianFuin/devops_ml_microservice.svg?style=svg&circle-token=2e58798a1d3f95a540ee8f82129fca93e82bc649)](https://circleci.com/gh/ChristianFuin/devops_ml_microservice)


## Project Overview

In this project, we have applied all DevOps Skills we learned throughout the Udacity Devops Engineer Course, deploying a Machine Learning Microservice API on a microservice kubernetes environment. 

Our pre-trained model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The api answers the requests made to /predict accepting a JSON payload with the features data listed above, returning then a predicted house price.

## Files Structure
1. .circleci - folder containing CI/CD jobs for linting
2. model_data - folder containing data to train the model
3. output_text - folder containing log from Flask application and model prediction
4. Dockerfile - file containing docker image that installs necessary libraries, creates directory, copies data into the directory and starts the web app.
5. Makefile - Script containing project set up code that helps to maintain your project structure easy to read and use, as well as set up your environment.
6. requirements.txt - File with all python package necessary to run the project and their versions.
7. app.py - Flask python application containing Machine Learning Model functions
8. run_docker.sh - Bash script that builds a docker image, list all images and run the docker container
9. upload_docker.sh - Bash script that push the docker built image from the previous script to the docker hub.
10.run_kubernetes.sh - Bash script that pulls the docker image previously uploaded from docker hub and starts a kubernetes container microservice service using the image pulled. It also forwards the port the application is running in the container to the localhost.

## Run the Application

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
