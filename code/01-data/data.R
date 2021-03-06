# data with ph -----------------------------------------------------------

armillaria_data = extract_variables("https://zenodo.org/record/2621996/files/heterobasidion-armillaria.gpkg",
                                    study_area = data_basque, drop_vars = "heterobasi",
                                    response = "armillaria",
                                    soil = soil, lithology = lithology, slope = slope,
                                    temperature = temperature_mean, ph = ph,
                                    hail = hail_raw, precipitation = precipitation_sum,
                                    pisr = pisr, elevation = elevation, age = FALSE)
heterobasidion_data = extract_variables("https://zenodo.org/record/2621996/files/heterobasidion-armillaria.gpkg",
                                        study_area = data_basque, drop_vars = "armillaria",
                                        response = "heterobasi",
                                        soil = soil, lithology = lithology, slope = slope,
                                        temperature = temperature_mean, ph = ph,
                                        hail = hail_raw, precipitation = precipitation_sum,
                                        pisr = pisr, elevation = elevation, age = FALSE)
fusarium_data = extract_variables("https://zenodo.org/record/2621996/files/diplodia-fusarium.gpkg",
                                  study_area = data_basque, drop_vars = "diplo01",
                                  response = "fus01",
                                  soil = soil, lithology = lithology, slope = slope,
                                  temperature = temperature_mean, ph = ph,
                                  hail = hail_raw, precipitation = precipitation_sum,
                                  pisr = pisr, elevation = elevation, age = TRUE)
diplodia_data = extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                  study_area = data_basque, drop_vars = "fus01",
                                  response = "diplo01",
                                  soil = soil, lithology = lithology, slope = slope,
                                  temperature = temperature_mean, ph = ph,
                                  hail = hail_raw, precipitation = precipitation_sum,
                                  pisr = pisr, elevation = elevation, age = TRUE)

# data without ph ---------------------------------------------------------

armillaria_data_no_ph = extract_variables("https://zenodo.org/record/2621996/files/heterobasidion-armillaria.gpkg",
                                    study_area = data_basque, drop_vars = "heterobasi",
                                    response = "armillaria",
                                    soil = soil, lithology = lithology, slope = slope,
                                    temperature = temperature_mean, ph = ph,
                                    hail = hail_raw, precipitation = precipitation_sum,
                                    pisr = pisr, elevation = elevation, age = FALSE,
                                    remove_pred = "ph")
diplodia_data_no_ph = extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                  study_area = data_basque, drop_vars = "fus01",
                                  response = "diplo01",
                                  soil = soil, lithology = lithology, slope = slope,
                                  temperature = temperature_mean, ph = ph,
                                  hail = hail_raw, precipitation = precipitation_sum,
                                  pisr = pisr, elevation = elevation, age = TRUE,
                                  remove_pred = "ph")
fusarium_data_no_ph = extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                        study_area = data_basque, drop_vars = "diplo01",
                                        response = "fus01",
                                        soil = soil, lithology = lithology, slope = slope,
                                        temperature = temperature_mean, ph = ph,
                                        hail = hail_raw, precipitation = precipitation_sum,
                                        pisr = pisr, elevation = elevation, age = TRUE,
                                        remove_pred = "ph")
heterobasidion_data_no_ph = extract_variables("https://zenodo.org/record/2621996/files/heterobasidion-armillaria.gpkg",
                                        study_area = data_basque, drop_vars = "armillaria",
                                        response = "heterobasi",
                                        soil = soil, lithology = lithology, slope = slope,
                                        temperature = temperature_mean, ph = ph,
                                        hail = hail_raw, precipitation = precipitation_sum,
                                        pisr = pisr, elevation = elevation, age = FALSE,
                                        remove_pred = "ph")


# debugging data ----------------------------------------------------------


# data with extracted temp, precip and pisr
diplodia_data_no_temp =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "temp")

# data with extracted temp, precip and pisr
diplodia_data_no_precip =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "precip")

# data with extracted temp, precip and pisr
diplodia_data_no_hail =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "hail_probability")

# data with extracted temp, precip and pisr
diplodia_data_no_soil =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "soil")

# data with extracted temp, precip and pisr
diplodia_data_no_lithology =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "lithology")

# data with extracted temp, precip and pisr
diplodia_data_no_slope =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "slope_degrees")

# data with extracted temp, precip and pisr
diplodia_data_no_pisr =  extract_variables("https://zenodo.org/record/2621996//files/diplodia-fusarium.gpkg",
                                           study_area = data_basque, drop_vars = "fus01",
                                           response = "diplo01",
                                           soil = soil, lithology = lithology, slope = slope,
                                           temperature = temperature_mean, ph = ph,
                                           hail = hail_raw, precipitation = precipitation_sum,
                                           pisr = pisr, elevation = elevation, age = TRUE,
                                           remove_pred = "pisr")

# Raw Data preprocessing ------------------------------------------------------------

data_basque = st_read("https://zenodo.org/record/2621996/files/study-area.gpkg",
                      quiet = TRUE)

dem_raw = dem_download("https://zenodo.org/record/2621996/files/dem.zip")
slope = slope_processing(data = dem_raw)
elevation = elevation_preprocessing(data = dem_raw)

temperature_mean = temperature_preprocessing(atlas_climatico = atlas_climatico)
precipitation_sum = precipitation_preprocessing(atlas_climatico = atlas_climatico)
pisr = pisr_preprocessing(atlas_climatico = atlas_climatico)

lithology_raw = lithology_download(url = "https://zenodo.org/record/2621996/files/lithology.zip")
lithology = lithology_preprocessing(lithology_raw)

soil_raw = soil_download("https://zenodo.org/record/2621996/files/soil.tif")
soil = soil_preprocessing(data = soil_raw,
                          study_area = data_basque)

# we cannot make ph public unfortunately so we load it locally from the repo
ph = ph_preprocessing(data = "data/ph/", study_area = data_basque)

atlas_climatico_raw = atlas_climatico_download("https://zenodo.org/record/2621996/files/atlas-climatico.zip")
atlas_climatico = atlas_climatico_preprocessing(data = atlas_climatico_raw,
                                                study_area = data_basque)

hail_raw = hail_download(url = "https://zenodo.org/record/2621996/files/hail-probability.tif")

# Prediction data ---------------------------------------------------------

pred_data = create_prediction_data(temperature = temperature_mean,
                                   precipitation = precipitation_sum,
                                   pisr = pisr,
                                   elevation = elevation,
                                   soil = soil,
                                   slope = slope,
                                   lithology = lithology,
                                   hail = hail_raw,
                                   ph = ph,
                                   dummy_features = c("lithology", "soil")
                                   )

pred_data_no_temp = create_prediction_data(temperature = temperature_mean,
                                           precipitation = precipitation_sum,
                                           pisr = pisr,
                                           elevation = elevation,
                                           soil = soil,
                                           slope = slope,
                                           lithology = lithology,
                                           hail = hail_raw,
                                           ph = ph,
                                           dummy_features = c("lithology", "soil"),
                                           drop_var = "temp")

pred_data_no_precip = create_prediction_data(temperature = temperature_mean,
                                             precipitation = precipitation_sum,
                                             pisr = pisr,
                                             elevation = elevation,
                                             soil = soil,
                                             slope = slope,
                                             lithology = lithology,
                                             hail = hail_raw,
                                             ph = ph,
                                             dummy_features = c("lithology", "soil"),
                                             drop_var = "precip")

pred_data_no_soil = create_prediction_data(temperature = temperature_mean,
                                           precipitation = precipitation_sum,
                                           pisr = pisr,
                                           elevation = elevation,
                                           soil = soil,
                                           slope = slope,
                                           lithology = lithology,
                                           hail = hail_raw,
                                           ph = ph,
                                           dummy_features = c("lithology"),
                                           drop_var = "soil")

pred_data_no_ph = create_prediction_data(temperature = temperature_mean,
                                         precipitation = precipitation_sum,
                                         pisr = pisr,
                                         elevation = elevation,
                                         soil = soil,
                                         slope = slope,
                                         lithology = lithology,
                                         hail = hail_raw,
                                         ph = ph,
                                         dummy_features = c("lithology", "soil"),
                                         drop_var = "ph")

pred_data_no_lithology = create_prediction_data(temperature = temperature_mean,
                                                precipitation = precipitation_sum,
                                                pisr = pisr,
                                                elevation = elevation,
                                                soil = soil,
                                                slope = slope,
                                                lithology = lithology,
                                                hail = hail_raw,
                                                ph = ph,
                                                dummy_features = c("soil"),
                                                drop_var = "lithology")

pred_data_no_hail = create_prediction_data(temperature = temperature_mean,
                                           precipitation = precipitation_sum,
                                           pisr = pisr,
                                           elevation = elevation,
                                           soil = soil,
                                           slope = slope,
                                           lithology = lithology,
                                           hail = hail_raw,
                                           ph = ph,
                                           dummy_features = c("lithology", "soil"),
                                           drop_var = "hail_probability")

pred_data_no_slope = create_prediction_data(temperature = temperature_mean,
                                            precipitation = precipitation_sum,
                                            pisr = pisr,
                                            elevation = elevation,
                                            soil = soil,
                                            slope = slope,
                                            lithology = lithology,
                                            hail = hail_raw,
                                            ph = ph,
                                            dummy_features = c("lithology", "soil"),
                                            drop_var = "slope_degrees")

pred_data_no_pisr = create_prediction_data(temperature = temperature_mean,
                                           precipitation = precipitation_sum,
                                           pisr = pisr,
                                           elevation = elevation,
                                           soil = soil,
                                           slope = slope,
                                           lithology = lithology,
                                           hail = hail_raw,
                                           ph = ph,
                                           dummy_features = c("lithology", "soil"),
                                           drop_var = "pisr")
