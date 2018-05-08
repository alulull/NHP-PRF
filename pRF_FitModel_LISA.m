function pRF_FitModel_LISA(job_nr1,job_nr2,job_nr3,job_nr4)

%% set path to your m-files
disp(['Starting script for job nr ' num2str(job_nr1) '_' num2str(job_nr2) '_' num2str(job_nr3) '_' num2str(job_nr4)])

% example 1: add current path
curr_path = pwd;
addpath(curr_path)  % adds path only for this session

if ~exist('"$TMPDIR"/PRF/TMPResults','dir')
    mkdir('"$TMPDIR"/TMPResults')
end
addpath(genpath('"$TMPDIR"/TMPData')) % Set path
addpath(genpath('"$TMPDIR"/TMPResults')) % Set path
addpath(genpath('"$TMPDIR"/MVPA_Scripts')) %Set path

%% copy your data from the server to the local machine
%% run your script
% if you copy files, make sure to surround your script with a try/catch
% loop, so that you can still copy the resulting files back
try
    %     load('/home/enny/Documents/ADNI_NEW/TemporarySaveDir.mat');
    %     loadfile = [tempsave 'TemporarySave2']
    %     load(loadfile)
    if ischar(job_nr2)
        job_nr2 = str2num(job_nr2);
    end
    if ischar(job_nr3)
        job_nr3 = str2num(job_nr3);
    end
    if ischar(job_nr4)
        job_nr4 = str2num(job_nr4);
    end
    display(['Running script for job nr ' num2str(job_nr1) '_' num2str(job_nr2) '_' num2str(job_nr3) '_' num2str(job_nr4)])
    % call your script here, e.g.
    %         RunModel(job_nr, loadfile, X, T, nfolds)
    SVM_StimDecoder_AcrossTimeWindows(job_nr1,job_nr2,job_nr3,job_nr4)
    %%pRF_FitModel_core_LISA(Monkey,Sessions,doUpsample,doExtraRegression,fitOnlyPosterior)
catch my_error
    % display error and stack, and continue with the rest of the script
    display_error_info(my_error)
    display(['Script for job nr ' num2str(job_nr1) '_' num2str(job_nr2) '_' num2str(job_nr3) '_' num2str(job_nr4) ' aborted'])
end


%% copy you data back and clean up

% in case you are using a local directory, copy all data back to the net,
% and dont forget to delete the data on the remote machine afterwards

display(['Finished script for job nr ' num2str(job_nr1) '_' num2str(job_nr2) '_' num2str(job_nr3) '_' num2str(job_nr4)])

end

function display_error_info(ME)
ME
for curr_field = fieldnames(ME)'
    display([curr_field{1} ':'])
    display(ME.(curr_field{1}))
    display(' ')
end
for stack_idx = 1:size(ME.stack, 1)
    display(ME.stack(stack_idx))
    display(' ')
end
end