% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper.R
\name{py_function_custom_scaffold}
\alias{py_function_custom_scaffold}
\title{Custom Scaffolding of R Wrappers for Python Functions}
\usage{
py_function_custom_scaffold(
  python_function,
  r_function = NULL,
  additional_roxygen_fields = NULL,
  process_docs_fn = function(docs) docs,
  process_param_fn = function(param, docs) param,
  process_param_doc_fn = function(param_doc, docs) param_doc,
  postprocess_fn = function() {
 },
  file_name = NULL
)
}
\arguments{
\item{python_function}{Fully qualified name of Python function or class
constructor (e.g. \code{tf$layers$average_pooling1d})}

\item{r_function}{Name of R function to generate (defaults to name of Python
function if not specified)}

\item{additional_roxygen_fields}{A list of additional roxygen fields to write
to the roxygen docs, e.g. \code{list(export = "", rdname = "generated-wrappers")}.}

\item{process_docs_fn}{A function to process docs obtained from
\code{reticulate::py_function_docs(python_function)}.}

\item{process_param_fn}{A function to process each parameter needed for
\code{python_funcion} before executing \code{python_funcion.}}

\item{process_param_doc_fn}{A function to process the roxygen docstring for
each parameter.}

\item{postprocess_fn}{A function to inject any custom code in the form of a
string before writing the closing curly braces for the generated wrapper
function.}

\item{file_name}{The file name to write the generated wrapper function to. If
\code{NULL}, the generated wrapper will only be printed out in the console.}
}
\description{
This function can be used to generate R wrapper for a specified
Python function while allowing to inject custom code for critical parts of
the wrapper generation, such as process the any part of the docs obtained
from \code{\link[=py_function_docs]{py_function_docs()}} and append additional roxygen fields. The result
from execution of \code{python_function} is assigned to a variable called
\code{python_function_result} that can also be processed by \code{postprocess_fn}
before writing the closing curly braces for the generated wrapper function.
}
\examples{
\dontrun{

library(tensorflow)
library(stringr)

# Example of a `process_param_fn` to cast parameters with default values
# that contains "L" to integers
process_int_param_fn <- function(param, docs) {
  # Extract the list of parameters that have integer values as default
  int_params <- gsub(
    " = [-]?[0-9]+L",
    "",
    str_extract_all(docs$signature, "[A-z]+ = [-]?[0-9]+L")[[1]])
  # Explicitly cast parameter in the list obtained above to integer
  if (param \%in\% int_params) {
    param <- paste0("as.integer(", param, ")")
  }
  param
}

# Note that since the default value of parameter `k` is `1L`. It is wrapped
# by `as.integer()` to ensure it's casted to integer before sending it to `tf$nn$top_k`
# for execution. We then print out the python function result.
py_function_custom_scaffold(
  "tf$nn$top_k",
  r_function = "top_k",
  process_param_fn = process_int_param_fn,
  postprocess_fn = function() { "print(python_function_result)" })

}
}
