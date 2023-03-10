cmake_minimum_required(VERSION 3.10.2)

# where to find our CMake modules
set(CMAKE_MODULE_PATH "$ENV{CARMA_OPT_DIR}/cmake")

project(snmp-client
    DESCRIPTION "SNMP client library"
    HOMEPAGE_URL https://github.com/usdot-fhwa-stol/snmp-client
	VERSION 0.0.1
)

add_library(${PROJECT_NAME} SHARED)
set_target_properties(${PROJECT_NAME} PROPERTIES
    SOVERSION 1
)

find_package(spdlog REQUIRED)
# Added for using SPDLOG macros, please check SPDLOG macros logging
add_definitions(-DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_TRACE)
find_library(NETSNMP "netsnmp")
set (CPACK_DEBIAN_PACKAGE_DEPENDS libsnmp-dev)

target_link_libraries (${PROJECT_NAME} PUBLIC 
	netsnmp
	fmt
)

include(CommonSource)
include(Testing)
include(CodeCoverage)
include(InstallingGeneral)
include(InstallingConfigs)
include(Packing)
