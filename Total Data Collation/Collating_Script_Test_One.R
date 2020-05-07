## Collating Script Test One ##

## Final Collation Script Example for Total_CD4
wd <- "D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX001/CSV_total_tumour/Tidy/"
setwd(wd)
ROI_total <- read.csv("LTX001_ROI_Totals.csv")
ROI_prev <- read.csv("LTX001_ROI_Prevalence.csv")

counts <- t(data.frame(ROI_total$Total_CD4))
prev <- t(data.frame(ROI_prev$Total_CD4_per10k))
row.names(counts) <- "LTX001"
ltx001 <- cbind(counts, prev)

wd <- "D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX022/CSV_total_tumour/Tidy/"
setwd(wd)
ROI_total <- read.csv("LTX022_ROI_Totals.csv")
ROI_prev <- read.csv("LTX022_ROI_Prevalence.csv")

counts <- t(data.frame(ROI_total$Total_CD4))
prev <- t(data.frame(ROI_prev$Total_CD4_per10k))
row.names(counts) <- "LTX022"
ltx022 <- cbind(counts, prev)


endpoint_df_for_writecsv <- rbind(ltx001, ltx022)
colnames(endpoint_df_for_writecsv) <- c("Count_Total", "Count_Tumour", "Count_Stroma", "Count_Lmyphoid_Aggregates", "Count_White_Space",
                                        "Per10k_Total", "Per10k_Tumour", "Per10k_Stroma", "Per10k_Lymphoid_Aggregates", "Per10k_White_Space")
endpoint_df_for_writecsv



## OLD TEST SCRIPT

test <- ROI_total$Total_CD4
roi <- ROI_total$ROI
test2 <- t(test)
roi2 <- t(roi)

dftest <- data.frame(ROI = roi, CD4 = test)
dftest2 <- t(dftest)
dftest3 <- t(dftest)

yo <- rbind(dftest2, dftest3)
colnames(yo) <- c("Total", "Tumour", "Stroma", "Lymphoid_Aggregates", "White_Space")

ltx001 <- t(data.frame(ROI_total$Total_CD4))
row.names(ltx001) <- "LTX001"
ltx002 <- t(data.frame(ROI_total$Total_CD4))
ltx001tot <- cbind(ltx001, ltx002)

ltx003 <- t(data.frame(ROI_total$Total_CD4))
prev <- t(data.frame(ROI_total$Total_CD4))
row.names(ltx003) <- "LTX003"
ltx003tot <- cbind(ltx003, prev)

victory <- rbind(ltx001tot, ltx003tot)
colnames(victory) <- c("Total", "Tumour", "Stroma", "Lymphoid_Aggregates", "White_Space", "2Total", "2Tumour", "2Stroma", "2Lymphoid_Aggregates", "2White_Space")
