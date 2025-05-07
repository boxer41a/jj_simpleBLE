#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "simpleble::simpleble" for configuration "Release"
set_property(TARGET simpleble::simpleble APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(simpleble::simpleble PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsimpleble.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS simpleble::simpleble )
list(APPEND _IMPORT_CHECK_FILES_FOR_simpleble::simpleble "${_IMPORT_PREFIX}/lib/libsimpleble.a" )

# Import target "simpleble::simpleble-c" for configuration "Release"
set_property(TARGET simpleble::simpleble-c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(simpleble::simpleble-c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsimpleble-c.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS simpleble::simpleble-c )
list(APPEND _IMPORT_CHECK_FILES_FOR_simpleble::simpleble-c "${_IMPORT_PREFIX}/lib/libsimpleble-c.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
