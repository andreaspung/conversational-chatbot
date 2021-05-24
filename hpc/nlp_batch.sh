#!/bin/bash

#The name of the job is test_job
#SBATCH -J SAIDLO_NLP

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is 5 minutes
#SBATCH -t 23:00:00

#SBATCH --mem=5G

#If you keep the next two lines, you will get an e-mail notification
#whenever something happens to your job (it starts running, completes or fails)
#SBATCH --mail-type=ALL
#SBATCH --mail-user=alfred@saidlo.ee

#Keep this line if you need a GPU for your job
#SBATCH --partition=gpu

#Indicates that you need one GPU node
#SBATCH --gres=gpu:tesla:1

#Commands to execute go below

#Load Python
module load python/3.6.3/CUDA-10.0

#Activate your environment
source activate nlproject

cd /gpfs/space/home/asaidlo/nlprojekt/gpt-2

python encode.py train.txt train.npz

python train2.py --dataset train.npz --batch_size 2 --learning_rate 0.00001 --model_name 117M 
