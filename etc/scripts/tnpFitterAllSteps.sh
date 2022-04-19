#!/bin/bash

script=$1
flags=(
    "trigger"
)

for flag in ${flags[@]}; do
    echo $flag
    python tnpEGM_fitter.py  $script --flag $flag --createBins
    python tnpEGM_fitter.py  $script --flag $flag --createHists
    python tnpEGM_fitter.py  $script --flag $flag --doFit
#    for i in {0..9}; do python tnpEGM_fitter.py  $script --flag $flag --doFit --mcSig --altSig --iBin $i; done
#    for i in {20..59};  do python tnpEGM_fitter.py  $script --flag $flag --doFit --mcSig --altSig --iBin $i; done
    #python tnpEGM_fitter.py  $script --flag $flag --doFit --altSig
    #python tnpEGM_fitter.py  $script --flag $flag --doFit --altBkg
    #python tnpEGM_fitter.py  $script --flag $flag --sumUp
done


