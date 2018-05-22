#PBS -S /bin/bash
#PBS -N FitPRF_PerSession_20180117_29:42
#PBS -j oe
#PBS -lnodes=1:ppn=10
#PBS -lnodes=1:mem64gb
#PBS -lwalltime=48:00:00
#PBS -o $HOME/PRF/Logs/
#
mkdir $TMPDIR/PRF
cp -r $HOME/PRF/Data/us_reg/danny/ses-20180117* $TMPDIR/PRF
cp -r $HOME/PRF/Data/mask/danny/* $TMPDIR/PRF
cp -r $HOME/PRF/Code/* $TMPDIR/PRF
cd $TMPDIR/PRF

chmod +x $TMPDIR/PRF/BashScripts/pRF_run_CompiledMatlab_LISA.sh

$TMPDIR/PRF/BashScripts/pRF_run_CompiledMatlab_LISA.sh \
	pRF_FitModel_LISA danny 20180117 29:42 \
	/home/pcklink/PRF/Logs/ \
	$TMPDIR/PRF/

exit $?