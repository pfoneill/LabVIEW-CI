# LabVIEW CI

Continuous Integration in LabVIEW. This repo includes scripts to hook into the LabVIEW IDE and perform static tests (VI Analyzer), unit tests (JKI Caraya), and application builds (executable/installer).  
All code uses the [G-CLI toolkit](https://github.com/JamesMc86/G-CLI). Source code is written in LabVIEW 2020.

## Static Tests

VI Analyzer (requires LabVIEW PRO license) is used to run static code tests.

## Unit Tests

Unit Tests are built using the JKI Caraya unit tests framework.

## Application Building

LabVIEW Application Builder (requires PRO license) is used to build applications and installers.

## Dependencies

* LabVIEW 2020 Professional
* LabVIEW Vision Development Module
* [G-CLI toolkit](https://github.com/JamesMc86/G-CLI)
* VI Analyzer toolkit
