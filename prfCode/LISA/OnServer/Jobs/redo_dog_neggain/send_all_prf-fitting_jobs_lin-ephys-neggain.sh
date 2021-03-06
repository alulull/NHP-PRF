#!/bin/bash
#
# This bash-script submits all jobs to the server, instead of running them locally.
# If you want to submit only some jobs to the server,simply add a "#" in front of 
#the ones you like to ommit and execute the script then.
#

mkdir -p $HOME/PRF/Logs/slurm
cd $HOME/PRF/Logs/slurm
chmod +x $HOME/PRF/Code/Jobs/*

sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_1_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_2_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_3_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_4_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_5_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_6_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_7_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_8_FitPRF_linear_ephys_cv1_neggain_aston.sh

sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_1_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_2_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_3_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_4_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_5_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_6_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_7_FitPRF_linear_ephys_cv1_neggain_aston.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_8_FitPRF_linear_ephys_cv1_neggain_aston.sh

sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_1_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_2_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_3_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_4_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_5_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_6_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_7_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-mua_8_FitPRF_linear_ephys_cv1_neggain_lick.sh

sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_1_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_2_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_3_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_4_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_5_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_6_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_7_FitPRF_linear_ephys_cv1_neggain_lick.sh
sbatch  $HOME/PRF/Code/Jobs/run_job_Ses-lfp_8_FitPRF_linear_ephys_cv1_neggain_lick.sh