# Let's Fight With CMake, Docker, and Some Dependencies

Repository for the [CMake exercise](https://github.com/Simulation-Software-Engineering/Lecture-Material/blob/main/03_building_and_packaging/cmake_exercise.md).


## 1. Build the Docker image

From the root of the cloned repository, run:

```bash
docker buildx build -t <image-name> .
```

## 2. Run the container and execute the project
Run the container and bind-mount the current directory into `/mnt/hst` inside the container:

```bash
docker run -it \
    --mount type=bind,source="$(pwd)",target=/mnt/hst \
    <image-name>
```

When the container starts, it will automatically run the `build_and_run.sh` script. This script will:
* Configure the project with CMake
* Build and compile the sources
* Run the compiled executable ./main
If everything is set up correctly, you will see the success output from ./main.
