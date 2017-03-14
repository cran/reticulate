## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## ------------------------------------------------------------------------
#  library(reticulate)
#  os <- import("os")
#  os$chdir("tests")
#  os$getcwd()

## ------------------------------------------------------------------------
#  install.packages("reticulate")

## ------------------------------------------------------------------------
#  library(reticulate)
#  use_python("/usr/local/bin/python")
#  use_virtualenv("~/myenv")
#  use_condaenv("myenv")

## ------------------------------------------------------------------------
#  use_virtualenv("~/myenv", required = TRUE)

## ------------------------------------------------------------------------
#  py_config()

## ------------------------------------------------------------------------
#  difflib <- import("difflib")
#  difflib$ndiff(foo, bar)
#  
#  filecmp <- import("filecmp")
#  filecmp$cmp(dir1, dir2)

## ------------------------------------------------------------------------
#  main <- import_main()
#  
#  py <- import_builtins()
#  py$print('foo')

## ------------------------------------------------------------------------
#  # import numpy and speicfy no automatic Python to R conversion
#  np <- import("numpy", convert = FALSE)
#  
#  # do some array manipulations with NumPy
#  a <- np$array(c(1:4))
#  sum <- a$cumsum()
#  
#  # convert to R explicitly at the end
#  py_to_r(sum)

## ------------------------------------------------------------------------
#  py_run_file("script.py")
#  
#  main <- py_run_string("x = 10")
#  main$x

## ------------------------------------------------------------------------
#  py <- import_builtins()
#  with(py$open("output.txt", "w") %as% file, {
#    file$write("Hello, there!")
#  })

## ------------------------------------------------------------------------
#  iterate(iter, print)

## ------------------------------------------------------------------------
#  results <- iterate(iter)

## ------------------------------------------------------------------------
#  a <- iterate(iter) # results are not empty
#  b <- iterate(iter) # results are empty since items have already been drained

## ------------------------------------------------------------------------
#  # get a callable object
#  parser <- spacy$English()
#  
#  # call the object as a function
#  parser$call(spacy)

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
#  #' @export
#  summary.MyPythonClass <- function(object, ...) {
#    if (py_is_null_xptr(object))
#      stop("Object is NULL")
#    else
#      # interact with the object to generate the summary
#  }

## ------------------------------------------------------------------------
#  #' @export
#  summary.MyPythonClass <- function(object, ...) {
#    py_validate_xptr(object)
#    # interact with the object to generate the summary
#  }

## ------------------------------------------------------------------------
#  #' @importFrom reticulate py_str
#  #' @export
#  py_str.MyPythonClass <- function(object, ...) {
#    # interact with the object to generate the string
#  }

