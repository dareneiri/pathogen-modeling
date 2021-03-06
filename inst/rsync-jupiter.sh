#! /bin/bash

########
# LIFE
########

# `pathogen-prediction-maps` --------------- copy pathogen infection prediction PNG maps to LIFE
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/docs/figure/prediction-pathogens.Rmd/prediction-map* \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/www/life-healthy-forest/action-B1-spatial-mapping/pathogen-infection-maps/

# `pathogen_prediction_report` ------------ copy pathogen infection report to LIFE
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/pathogens-prediction.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/www/life-healthy-forest/action-B1-spatial-mapping/

# `benchmark_all_pathogens`-------- copy benchmark report all pathogens to LIFE
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/pathogens-performance.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/www/life-healthy-forest/action-B1-spatial-mapping/

########
# paper "2018-model-comparison"
########

# `benchmark_diplodia` ----------- copy benchmark report DIPLODIA to patrick
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/pathogens-performance-diplodia.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/patrick/2018-model-comparison/

# `visualize_partitions` -------------- copy visualization of partitions to patrick
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/visualize-partitions.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/patrick/2018-model-comparison/

# `vis_opt_paths` -------------- copy visualization of optimization paths to patrick

rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/vis-opt-paths.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/patrick/2018-model-comparison/

# `vis_tuning_effects` -------------- copy visualization of tuning effects to patrick
rsync -rlptDvzog --chown=www-data:www-data --fake-super \
  /mnt/cluster/home/patrick/papers/2018-model-comparison/analysis/rmd/vis-tuning-effects.html \
  -e ssh patrick@jupiter.geogr.uni-jena.de:/home/patrick/2018-model-comparison/

# rsync -rlptDvzog --chown=www-data:www-data --fake-super \
#   /mnt/geoinf_web/bi28yuv/LIFE-Healthy-Forest/* \
#   -e ssh patrick@jupiter.geogr.uni-jena.de:/home/www/life-healthy-forest/action-A2-predictor-database/
