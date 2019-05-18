giri-configs
============

Central repository for the different kind of giri configurations.

This repository holds the configuration files in JSON (or YAML) format.
Each configuration has its own subfolder under the `systems` directory.

The `bin` folder contains the utilities, which makes possible the setup of the several systems based on the config files.

## Usage

In order to initialize a system you have to execute a two-step process:

1. Set the required environment.

   Each system configuration contains at least one `env` file, that you can source.
   Choose that one which most adequate to your needs in case of that specific system.

   For example:

        . systems/hedgehog-garden/local.env

2. Configure the system, using the `system_init.sh` script and the config data files placed into its own folder of each system.

   For example:

        systems/hedgehog-garden/system_init.sh

## References

- [giri home page](https://github.com/tombenke/giri)
- [giri-rest-api](https://github.com/tombenke/giri-rest-api)

