## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## ------------------------------------------------------------------------
#  # python 'foo' module I want to use in my package
#  foo <- NULL
#  
#  .onLoad <- function(libname, pkgname) {
#    # delay load foo module (will only be loaded when accessed via $)
#    foo <<- import("foo", delay_load = TRUE)
#  }

## ------------------------------------------------------------------------
#  # helper function to skip tests if we don't have the 'foo' module
#  skip_if_no_foo <- function() {
#    have_foo <- py_module_available("foo")
#    if (!have_foo)
#      skip("foo not available for testing")
#  }
#  
#  # then call this function from all of your tests
#  test_that("Things work as expected", {
#    skip_if_no_foo()
#    # test code here...
#  })

## ------------------------------------------------------------------------
#  method.MyModule.MyPythonClass <- function(x, y, ...) {
#    if (py_is_null_xptr(x))
#      # whatever is appropriate
#    else
#      # interact with the object
#  }

## ------------------------------------------------------------------------
#  #' @importFrom reticulate py_str
#  #' @export
#  py_str.MyModule.MyPythonClass <- function(object, ...) {
#    # interact with the object to generate the string
#  }

