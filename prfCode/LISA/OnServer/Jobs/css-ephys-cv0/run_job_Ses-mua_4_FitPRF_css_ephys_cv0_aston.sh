#!/bin/bash
#SBATCH -N 1 --ntasks-per-node=16
#SBATCH -t 06:00:00
#SBATCH --mail-type=END
#SBATCH --mail-user=p.c.klink@gmail.com

source ~/.bash_profile
source ~/.bashrc
umask u+rwx,g+rwx

echo job id $SLURM_JOBID
echo job name $SLURM_JOB_NAME
echo submitted by $SLURM_JOB_ACCOUNT
echo from $SLURM_SUBMIT_DIR
echo the allocated nodes are: $SLURM_JOB_NODELIST
module load pre2019

# INFO: FitPRF_css_ephys_cv0_mua_4

mkdir -p $TMPDIR/PRF
mkdir -p $TMPDIR/PRF/Logs/
cp -r $HOME/PRF/Code/* $TMPDIR/PRF
cd $TMPDIR/PRF

chmod +x $TMPDIR/PRF/BashScripts/pRF_run_analyzePRF_LISA_ephys.sh

$TMPDIR/PRF/BashScripts/pRF_run_analyzePRF_LISA_ephys.sh \
	pRF_FitModel_LISA_ephys aston mua 4 [] \
	css_ephys 0 css_ephys_cv0 /home/pcklink/PRF/Logs/ $TMPDIR/PRF/ \
	 |& tee $TMPDIR/PRF/Logs/Log_aston_mua_4_css_ephys_xval0.txt

cp $TMPDIR/PRF/Logs/Log_aston_mua_4_css_ephys_xval0.txt $HOME/PRF/Logs/
exit $?
