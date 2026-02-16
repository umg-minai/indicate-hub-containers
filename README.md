## Introduction

This repository contains scripts for creating containers that
implement the hub node of the INDICATE quality dashboard architecture.
The purpose of this hub is to receive and store aggregated quality
indicator data from data providers and answers queries for aggregated
quality indicator results.

Aggregated quality indicator results are average quality indicator
values that are computed by data providers over a population of
patients and over an aggregation period such as one week or one month.
Data providers compute these aggregated results locally and transmit
only the aggregated values.  The transmission includes a unique id of
the sending data provider but no INDICATE stakeholder besides the data
provider itself can map a given id to the identity of the provider.

## Containers

This project creates the following container images

1. The `database` container contains a PostgreSQL database initialized
   with a single table which hold aggregated quality indicator
   results.

2. The `data-exchange` container contains a service which provides
   multiple REST endpoints.  One endpoint allows data providers to
   upload aggregated quality indicator results to the hub node.  A
   second endpoint allows querying aggregated quality indicator
   results.

## Dependencies

* INDICATE Data Exchange Hub Node TODO

## Build

### Obtain Dependencies

1. INDICATE Data Exchange Hub Node TODO

### Set up Database Access

Since database access is required only among the services of this
repository, an arbitrary password can be used for the internal
database in the "database" container.  This password is contained in
the (host) file `database-password` in the root directory of this
repository. One way to assign a random password is

```sh
echo INDICATE | mkpasswd -m descrypt -s > database-password
```

### Build the Images

Execute

```sh
docker-compose build
```

in the root directory of this repository.

## Usage

TODO
