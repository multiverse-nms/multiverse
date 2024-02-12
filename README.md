<p align="center">
  <img src="logo.png" alt="Multiverse Network Management System" />
</p>


## Overview

Multiverse is a research platform for configuring, monitoring and managing networks.

Multiverse supports the management of the following technologies:
- Optical networks with Polatis switches.
- Classical (IP) neworks with OCNOS swtiches.
- Named Data Networks with [NDN-DPDK](https://github.com/usnistgov/ndn-dpdk) forwarder.
- Telemetry for network monitoring and general data collection.

[Watch NDN management demo!](https://www.youtube.com/watch?v=fJoglqj3Re8)

[Watch Optical/Quantum/IP management demo!](https://www.youtube.com/watch?v=TVnK8tOqoho)


## Instructions

The following instructions have been tested on Ubuntu and Windows.

### Prerequisites
- Docker
- Docker-compose
- Git Bash (for Windows)

### Deployment
Open a terminal and issue the following commands:

```bash
git clone https://github.com/multiverse-nms/multiverse.git
cd multiverse/prod
chmod +x run.sh
sudo ./run.sh -E
```

The GUI is accessible at `http://localhost:8080`. 
Use `amar`:`amar00` to login. 
