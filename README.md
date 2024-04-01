## Docker Image for Python

The Docker image provides a lightweight Alpine-based environment supporting multiple Python versions (3.7 to 3.11). The image is built for multiple architectures, ensuring compatibility across different platforms.

### Supported Python Versions

- Python 3.7
- Python 3.8
- Python 3.9
- Python 3.10
- Python 3.11

### Usage

To run a container with a specific Python version, use the following command:

```bash
docker run --rm 0xnu20/python:latest python3 -c 'print("Honey badger!")'
```

Running the command above will output Honey badger! in your terminal. Alternatively, you can run Docker container in interactive mode with:

```bash
docker run -it --rm 0xnu20/python:latest python3
```

🐍📦 the image supports `pip` and `pip3`.

### License

This project is licensed under the [MIT License](./LICENSE).

### Copyright

(c) 2024 [Finbarrs Oketunji](https://finbarrs.eu).