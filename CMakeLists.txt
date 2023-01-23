cmake_minimum_required(VERSION 3.10.2)
project(snmp_client_user_test
	VERSION 1.0.0
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_PREFIX_PATH /opt/carma)
include_directories(/opt/carma/include)
link_directories(/opt/carma/lib)
#set(CMAKE_INCLUDE_PATH  /opt/carma/include)
#set(CMAKE_LIBRARY_PATH  /opt/carma/lib)

find_package(snmp_client REQUIRED)

add_executable(${PROJECT_NAME})

FILE(GLOB source_files "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
FILE(GLOB include_files "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h")

target_sources (${PROJECT_NAME}
	PRIVATE
	${source_files}
)

target_link_libraries (${PROJECT_NAME} PUBLIC 
	snmp_client
)
