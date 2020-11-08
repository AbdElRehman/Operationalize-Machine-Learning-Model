[![CircleCI](https://circleci.com/gh/AbdElRehman/Hello.svg?style=shield)](https://app.circleci.com/pipelines/github/AbdElRehman/Hello)

## Project Summary
This project is to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Running `app.py`
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Explanation of Repo. Files
1. .circleci, contains the configuration file for circleci (Continues integration SaaS), this is to validate the app to be ready for deployment.
2. output_txt_files folder contains two files,
 2.1 docker_out.txt, contains the logs for payload, sampled payload and predictions.
 2.2 kubernetes_out.txt, the logs for the app running on kubenetes cluster.
3. Dockerfile, instructions to follow docker use to containerize application and create docker image.
4. Makefile, way to ease the process of running grouped commands
5. app.py, Application source code.
6. make_predictions.sh, this script we use to make predictions using the model trained
7. requirements.txt, this file contains all the libraries application need
8. run_docker.sh, this script consolidate all the commands we need to build, run and docker image, expose the container port to host port.
9. run_kubernetes.sh, this script consolidate all the commands we need to run container on kubernetes cluster.
10. upload_docker.sh, this script consolidate all the commands we need to upload docker image to docker hub.
