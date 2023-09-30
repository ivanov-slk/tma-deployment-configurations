## tma-deployment-configurations

Deployment configurations for the Temperature Monitoring Applicaiton.

The Temperature Monitoring Application is an educational Kafka app, used as a playground for learning Go and exploring common streaming/microservice topics.

## Application diagram

- Text in red shows that the component is not yet implemented.

![Temperature Monitoring Application](misc/temperature_monitoring_application.png)

## Services

### Data Generator

#### Overview

Since this is mainly a playground, the downstream services are fed by a data generating service. It produces random values for temperature, humidity and atmospheric pressure, which are then processed by other services.

The repository can be found [here](https://github.com/ivanov-slk/tma-data-generator).

#### Current status

Produces "hello message".

### Monitoring Dashboard

#### Overview

The dashboard presents some simple metrics about the data.

The repository can be found [here](https://github.com/ivanov-slk/tma-dashboard).

#### Current status

Renders "hello message".
