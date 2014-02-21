
find_program(CTEST_COVERAGE_COMMAND NAMES gcov)
find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)
find_program(CTEST_GIT_COMMAND NAMES git)

set(CTEST_SITE "bigeye")
set(CTEST_DASHBOARD_ROOT "/tmp/us builds")
#set(CTEST_COMPILER "gcc-4.5")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_FLAGS "-j")
set(CTEST_BUILD_CONFIGURATION Debug)
set(CTEST_PARALLEL_LEVEL 4)

set(US_TEST_SHARED 1)
set(US_TEST_STATIC 1)

set(US_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/../")

set(US_BUILD_CONFIGURATION )
foreach(i RANGE 7)
  list(APPEND US_BUILD_CONFIGURATION ${i})
endforeach()

include(${US_SOURCE_DIR}/cmake/usCTestScript.cmake)