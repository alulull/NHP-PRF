#!/bin/bash
#
# This bash-script submits all jobs to the server, instead of running them locally.
# If you want to submit only some jobs to the server,simply add a "#" in front of 
#the ones you like to ommit and execute the script then.
#

mkdir -p $HOME/PRF/Logs/slurm
cd $HOME/PRF/Logs/slurm
chmod +x $HOME/PRF/Code/Jobs/*

sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-AllSessions-avg-odd_1_FitPRF_avg_dhrf_eddy.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-AllSessions-avg-odd_2_FitPRF_avg_dhrf_eddy.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-AllSessions-avg-odd_3_FitPRF_avg_dhrf_eddy.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-AllSessions-avg-odd_4_FitPRF_avg_dhrf_eddy.sh

