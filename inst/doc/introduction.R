## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## ------------------------------------------------------------------------
#  library(reticulate)
#  os <- import("os")
#  os$chdir("tests")
#  os$getcwd()

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
#  # import numpy and specify no automatic Python to R conversion
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

