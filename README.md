# DSC180A_Q1_Project

Result looks like this after running the flu_forecast_result_plot notebook in the notebook folder
![uncertainty_quantification](./references/washington_flu.png)
 
Requirements
```bash
pip install -r requirements.txt
```
Model Already Trainned 
Train models and make predictions.
```bash
python3 dcrnn_train_pytorch.py --config_filename=data/model/dcrnn_cov.yaml
```
For Test, run the following command
```bash
./test.sh
```
