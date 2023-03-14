# DSC180_Project
DeepGLEAM on Flu 

## GLEAM Prediction before and after Interpolation
![GLEAM Before Interpolation] (./references/beforeinterp.png)
![GLEAM After Interpolation] (./references/afterinterp.png)

## ARIMA and ETS

## Prediction
Four weeks ahead Flu prediction residual between groundtruth and prediction for 10 states
![uncertainty_quantification_flu_residual_washingtion](./references/10_states_4_weeks_prediction.png)

## Result Comparison 
![MAE result](./references/Combied_result.png)

## Setup, Model training and Model Testing
 
1. Requirements
```bash
>>> pip install -r requirements.txt
```
2. Train models and make prediction (Model already trainned in the submission)
```bash
>>> python3 run.py --config_filename=data/model/dcrnn_cov.yaml
```
3. For Test, run the following command
```bash
>>> ./test.sh
```
- Visualization 

  - After running the command for test, a new folder named plot_weeknumber_result will appear containing [0.025, 0.5, 0.975] residual predictions the .npz files 
  - Select the one with lowest MAE score 
  - Run the flu_forecast_result_plot notebook

## Docker

```bash
>>> docker build -f ./Dockerfile -t Dockerfile .
>>> docker run --rm -it Dockerfile /bin/bash
>>> launch.sh -i xiangyikong/dsc180a:latest #Use this command below to launch the image in DSMLP
```
