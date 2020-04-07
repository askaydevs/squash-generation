#!/bin/sh
#SBATCH --job-name=job_data_coref
#SBATCH -o cd /home/askaydevs/project_solverminds/solverminds/squash-root/squash-generation
/logs/log_data_coref.txt
#SBATCH --time=167:00:00
#SBATCH --partition=1080ti-long
#SBATCH --gres=gpu:8
#SBATCH --cpus-per-task=1
#SBATCH --mem=370GB
#SBATCH -d singleton

cd /home/askaydevs/project_solverminds/solverminds/squash-root/squash-generation

python data/filter_dataset_corefs.py
