#Example of partial string matching nested in an ifelse statment
#Used to recode variable
#This example creates a flag for skin infections, and matches the first 3 numbers in an ICD-9 code
pat_meds17$skin_infection_flag <- ifelse(grepl("680", pat_meds17$current_icd9_list) | grepl("681", pat_meds17$current_icd9_list) | grepl("682", pat_meds17$current_icd9_list)
                                         | grepl("683", pat_meds17$current_icd9_list) | grepl("684", pat_meds17$current_icd9_list) & pat_meds17$medication_id %in% abxIDs,1,0)
