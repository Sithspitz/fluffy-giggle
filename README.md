# fluffy-giggle Vectra Panel Analysis Scripts (PhD)

# Background
These scripts are based on the data tidy scripts in solid-happiness

# Tidy Scripts Dir
In this directory you can find the Tidy Scripts which take the raw data from InForm export files and tidy them up into something managable.

# Total Data Collation Dir
This directory is the step after using the Tidy Scripts. This collates all the data together into a useful file. e.g. the stromatumour_only data are all collated together for all the different sections of different mutations.
   - The example script for these is the CD4_Collation_Script.R which collates all the CD4 results from the total_tumour. These scripts were      adopted to fit purpose in the analysis.

# Data Analysis Dir
This directory does a generic overview statistical comparison of key questions. This file outputs p vals in a CSV. Can then go back and assess interesting comparisons and plot individually.