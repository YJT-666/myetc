
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(demo1 LANGUAGES CXX)


set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(bb "")
target_sources(bb
	PUBLIC
		main.cpp
	)
target_include_directories(bb
	PUBLIC
		/usr/include/eigen3
	)




# print some infomation
message(STATUS "Here some information about you environment:")
message(STATUS "Configuring on/for ${CMAKE_SYSTEM_NAME}")
message(STATUS "CXX Compileer ID : ${CMAKE_CXX_COMPILER_ID}")
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
  message(STATUS "Target is 64 bits")
else()
  message(STATUS "Target is 32 bits")
endif()
if(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i386")
    message(STATUS "i386 architecture detected")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "i686")
    message(STATUS "i686 architecture detected")
elseif(CMAKE_HOST_SYSTEM_PROCESSOR MATCHES "x86_64")
    message(STATUS "x86_64 architecture detected")
else()
    message(STATUS "host processor architecture is unknown")
endif()
