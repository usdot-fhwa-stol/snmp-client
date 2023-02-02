cmake_minimum_required(VERSION 3.10.2)
project(snmp_client_user_test
	DESCRIPTION "SNMP client library usage"
	VERSION 1.0.0
)

# where to find our CMake modules
set(CMAKE_MODULE_PATH "$ENV{CARMA_OPT_DIR}/cmake")
include(CommonPaths)

find_package(snmp-client CONFIG)

add_executable(${PROJECT_NAME})

target_link_libraries (${PROJECT_NAME} PUBLIC 
	snmp-client
)

include(CommonSource)
include(InstallingGeneral)
include(InstallingConfigs)
include(Packing)
