# Project Lists

The main project directory:

* Vietnames and Chinese Translation: `/mnt/VAIS/Home/nhat-l/nmt-zh-vi/`.

The project folder contains the two following subfolders:

* Vietnamese to Chinese translation: `vi2zh`.
* Chinese to Vietnamese translation: `zh2vi`.

### Step 1: Make sure that train and test data are existed in subfolder t2t_datagen.

* The parent folder t2t_datagen assumed to be `zh2vi` or `vi2zh`.

### Step 2: Set up project folder

* Take a look at `run_vi2zh.sh` or 'run_zh2vi.sh` to have an overview on directories.

### Step 3: Generate data for training and vocab file

* In the file `run_vi2zh.sh` or `run_zh2vi.sh`, to generate data, uncomment the code block started with `t2t-datagen`.


### Step 4: Train model

* In the file `run_vi2zh.sh` or 'run_zh2vi.sh`, comment the code block started with  `t2t-datagen`.

* Then, uncomment the code block started with `t2t-trainer`.

* To visualize model before averaging, run `visualize.sh`.

**Note**: Pay attention to directory where the model checkpoints locate (commonly `t2t_output` folder), also `host` and `port` parameters.


### Step 5: Avarage model

* In the file `run_vi2zh.sh` or `run_zh2vi.sh`, comment the code block started with  `t2t-trainer`.

* Then, uncomment the code line `t2t-avg-all`.

### Step 6: Decode and evaluate BLEU Score

* In the file `run_vi2zh.sh` or `run_zh2vi.sh`, comment the line `t2t-avg-all`.

* Then, uncomment the two lines `t2t-decode` and `t2t-bleu`.


### Step 7: Export model

* In the file `run_vi2zh.sh` or `run_zh2vi.sh`, comment the two lines `t2t-decode` and `t2t-bleu`.

* Then, uncomment the line `t2t-export`.






