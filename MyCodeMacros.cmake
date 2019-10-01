#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_find_src_files _a_src_files _target)

   file(GLOB _src_files RELATIVE ${PROJECT_SOURCE_DIR} *.cpp)

   set(${_a_src_files} ${_src_files} PARENT_SCOPE)

   message(STATUS "***********************************************************" ${_target})
   message(STATUS "my_find_src_files************************BEGIN " ${_target})
   foreach(_src_file ${_src_files})
      message(STATUS ${_src_file})
   endforeach()
   message(STATUS "my_find_src_files************************END")
endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_find_inc_files _a_inc_files)

   file(GLOB _inc_files ${PROJECT_SOURCE_DIR}/*.h)
   set(${_a_inc_files} ${_inc_files} PARENT_SCOPE)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_add_compile_options _target)
   message(STATUS "my_add_compile_options************************ " ${_target})
   #message(STATUS "CMAKE_CXX_FLAGS************************ " ${CMAKE_CXX_FLAGS})
   #message(STATUS "CMAKE_CXX_FLAGS_RELEASE**************** " ${CMAKE_CXX_FLAGS_RELEASE})

   target_compile_options(${_target} PRIVATE "-std=c++11")
   target_compile_options(${_target} PRIVATE "-fexceptions")
   target_compile_options(${_target} PRIVATE "-O3")
   target_compile_options(${_target} PRIVATE "-fthreadsafe-statics")
   target_compile_options(${_target} PRIVATE "-frtti")
   target_compile_options(${_target} PRIVATE "-fomit-frame-pointer")

   target_compile_options(${_target} PRIVATE "-w")
   target_compile_options(${_target} PRIVATE "-Wswitch")
   target_compile_options(${_target} PRIVATE "-Wno-deprecated-declarations")
   target_compile_options(${_target} PRIVATE "-Wempty-body")
   target_compile_options(${_target} PRIVATE "-Wconversion")
   target_compile_options(${_target} PRIVATE "-Wreturn-type")
   target_compile_options(${_target} PRIVATE "-Wparentheses")
   target_compile_options(${_target} PRIVATE "-Wno-format")
   target_compile_options(${_target} PRIVATE "-Wuninitialized")
   target_compile_options(${_target} PRIVATE "-Wunreachable-code")
   target_compile_options(${_target} PRIVATE "-Wunused-function")
   target_compile_options(${_target} PRIVATE "-Wunused-value")
   target_compile_options(${_target} PRIVATE "-Wunused-variable")
   target_compile_options(${_target} PRIVATE "-Wno-psabi")

   target_compile_definitions(${_target} PRIVATE "-DNDEBUG")

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
#*******************************************************************************


#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_show_src_files a_src_files _target)
   message(STATUS "my_show_src_files*****************BEGIN " ${_target})
   foreach(_src_file ${${a_src_files}})
      message(STATUS ${_src_file})
   endforeach()
   message(STATUS "my_show_src_files*****************END")
endfunction()
