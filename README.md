# OPENAI - GO API

This is a simple **unofficial** Go app that requests OpenAI's platform models such as GPT or DALL-E, to provide Chat Completions for instance.

## Getting Started:

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites:

Before you can use this application, you need to have the following:

- Go 1.21 or higher
- Docker 23.0 or higher
- An OpenAI account with an active payment method
    - An active [(OpenAI API Key)](https://platform.openai.com/account/api-keys)

> **⚠️** Note that the OpenAI API Key is **NOT** optional, you will need to create one and add it in the `.env` file.

### Setup:

To get started, clone this repository to your local machine:

```bash
git clone https://github.com/charafzellou/openai-golang-api
```

Change into the project directory:

```bash
cd openai-golang-api
```

Create an environment file `.env` with your personal access token:

```bash
OPENAI_API_KEY=your_personal_access_token
```

### Usage as a binary:

To use the Go binary directly, run the following command:

```bash
make build
make exec
```

If you wanna run the Go source code directly without building, run the following command:

```bash
make run
```

### Usage as a Docker container:

Build the Docker image with the following command:

```bash
make docker-build
```

Run the Docker container from the image we created:

```bash
make docker-run
```

This will start the application and return your request's result.

## Authors:

- **Charaf ZELLOU**
    - [Github](https://github.com/charafzellou)
    - [LinkedIn](https://linkedin.com/charafzellou)

## Collaborators:

- **Your name could be here, make a useful PR 😊**

## Built With:

- [Go](https://golang.org/) - The programming language used
- [Docker](https://www.docker.com/) - Containerization platform

## License:

This project is licensed under the AGPL-3.0 License - see the [LICENSE](./LICENSE.md) file for details.