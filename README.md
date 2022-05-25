# Python app inside a docker image

This repo shows how to work with a small Python flask application that displays and serves static web files.

Besides, it shows how to make above app work inside a docker image for enabling deployment to any platform.

<!-- TOC -->

- [Setup Development Environment](#setup-development-environment)
  - [Choose a platform](#choose-a-platform)
  - [Install required tools](#install-required-tools)
- [Build a Virtual Environment](#build-a-virtual-dev-environment)
  - [Create Requiriments file](#create-requirements-file)
  - [Create a Virtual Environment](#create-a-virtual-environment)
  - [Install Required Tools in Virtual Environment](#install-required-tools-in-virtual-environment)
- [Run python app](#run-python-app)
  - [Verify the content of flask app](#verify-the-content-of-flask-app)
  - [Verify that app works](#verify-that-app-works)
- [Dockerise Created App](#dockerise-created-app)
  - [Verify and improve Dockerfile](#verify-and-improve-dockerfile)
  - [Build a docker image](#build-a-docker-image)
  - [Run a docker image](#run-a-docker-image)

<!-- /TOC -->

## Setup Development Environment

### Choose a platform

- Our platform of choice - MacOS

### Install required tools

- Prerequisites:

1. python 3
2. docker
3. VC (optional)

## Build a Virtual Environment

### Verify the content of Requiriments file

```bash
            cat requirements.txt
```

### Create a Virtual Environment

```bash
            python3 -m venv venv
```

### Install Required Tools in Virtual Environment

```bash
            venv/bin/pip install -r requirements.txt
```

## Run python app

### Verify the content of flask app

```bash
            cat app.py
```

### Verify that app works

```bash
            venv/bin/python app.py
```

- Check created web endpoints.

## Dockerise Created App

### Verify and improve Dockerfile

- Follow best practicies while writing a Dockerfile

### Build a docker image

```bash
            docker build . -t my-python-server
```

### Run a docker image

```bash
            docker run --rm --name flask-app -p 5000:5000 my-python-server
```
