# Docker environment for Pico SDK (RP2040)

This Dockerfile describes a build environment capable of building the RP2040 example projects found in [the examples repository](https://github.com/raspberrypi/pico-examples).

## Usage

```
git clone https://github.com/raspberrypi/pico-examples.git
cd pico-examples
docker run -v $(pwd):/work -w /work -it (this-image)
cmake ..
make
```

