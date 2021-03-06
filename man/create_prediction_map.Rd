% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prediction-functions.R
\name{create_prediction_map}
\alias{create_prediction_map}
\title{Create spatial maps from the predicted data}
\usage{
create_prediction_map(prediction_raster, model_name, benchmark_object,
  resampling)
}
\arguments{
\item{prediction_raster}{Predicted raster layer from \link{prediction_custom}}

\item{model_name}{Algorithm name}

\item{benchmark_object}{mlr benchmark object containing performance}

\item{Resampling}{String with the resampling description that should appear on the map}
}
\description{
Create spatial maps from the predicted data
}
