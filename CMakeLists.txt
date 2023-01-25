cmake_minimum_required(VERSION 3.10.2)
project(snmp-client
    DESCRIPTION "SNMP client library"
	VERSION 0.1.2
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
set(CMAKE_CXX_STANDARD 17)

find_package(spdlog REQUIRED)
# Added for using SPDLOG macros, please check SPDLOG macros logging
add_definitions(-DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_TRACE)
find_library(NETSNMP "netsnmp")

add_library(${PROJECT_NAME} SHARED)

FILE(GLOB source_files "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
FILE(GLOB include_files "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h")

target_sources (${PROJECT_NAME}
	PRIVATE
	${source_files}
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        # where top-level project will look for the library's public headers
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        # where external projects will look for the library's public headers
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

# without it public headers won't get installed
set(
    public_headers
	${include_files}
)

target_link_libraries (${PROJECT_NAME} PUBLIC 
	netsnmp
	fmt
)

# where to find our CMake modules
set(CMAKE_MODULE_PATH "$ENV{CARMA_OPT_DIR}/cmake")
include(Testing)
include(InstallingGeneral)
include(InstallingConfigs)
include(Packing)