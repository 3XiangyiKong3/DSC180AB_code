# DSC180A_Q1_Project

Result looks like this after running the flu_forecast_result_plot notebook in the notebook folder
![uncertainty_quantification](./references/washington_flu.png)
 
1. Requirements
```bash
pip install -r requirements.txt
```
2. Train models and make prediction (Model already trainned in the submission)
```bash
python3 dcrnn_train_pytorch.py --config_filename=data/model/dcrnn_cov.yaml
```
3. For Test, run the following command
```bash
./test.sh
```
