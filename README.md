The SNMP client library provides a reusable interface for performing SNMP operations.  Its primary use within CARMA is managing and controlling hardware in traffic cabinets and V2X roadside units (RSUs).

# CI Status

These badges are for the default branch only.

[![Build Workflow](https://github.com/usdot-fhwa-stol/snmp-client/actions/workflows/build.yml/badge.svg)](https://github.com/usdot-fhwa-stol/snmp-client/actions/workflows/build.yml)

[![Sonar Workflow](https://github.com/usdot-fhwa-stol/snmp-client/actions/workflows/sonar-scanner.yml/badge.svg)](https://github.com/usdot-fhwa-stol/snmp-client/actions/workflows/sonar-scanner.yml)

## Usage

* Ensure you have the CARMA apt repository in your list.
* Run: ```apt-get install snmp-client-<soversion>```

## Concepts

Some concepts included in this repository are:
* The use of Visual Studio Code Dev Containers for development.
* Use of shared CMake files for common source layout, building, Debian packaging.
* Build time and run-time dependencies using a provided script and the CMake Debian packaging specification.
* Use of shared GitHub Action actions and workflows for common tasks.

## Contact
Please click on the CARMA logo below to visit the Federal Highway Adminstration(FHWA) CARMA website. For technical support from the CARMA team, please contact the CARMA help desk at CAVSupportServices@dot.gov.

[![CARMA Image](https://raw.githubusercontent.com/usdot-fhwa-stol/CARMAPlatform/develop/docs/image/CARMA_icon.png)](https://highways.dot.gov/research/research-programs/operations/CARMA)
