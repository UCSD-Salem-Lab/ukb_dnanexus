library(dplyr)
library(data.table)
library(readxl)
library(writexl)

d = read_xlsx("ukb_wes_file_list.xlsx")

template = "dx run app-swiss-army-knife -iin='FILE_ID' -icmd='bcftools norm -m -both FILE_NAME.vcf.gz | bgzip -c > normalized_FILE_NAME.vcf.gz; plink2 --vcf normalized_FILE_NAME.vcf.gz -vcf-half-call m --make-bed --out FILE_NAME;' --destination '/plink_files' --name FILE_NAME --instance-type mem2_ssd1_v2_x8 --brief -y;"

for(i in 1:dim(d)[1]){
  file_name = gsub(pattern = ".vcf.gz", replacement = "", d[i,1])
  file_id = d[i,2]
  command = gsub(pattern = "FILE_ID", replacement = file_id, template) %>%
    gsub(pattern = "FILE_NAME", replacement = file_name)
  runner_name = paste0("conversion_runners/", file_name, "_runner.sh")
  writeLines(text = command, con = runner_name)
}

# Generate rerun runners
rerun_file_names = c("ukb23157_c15_b0_v1.vcf.gz",
                     "ukb23157_c2_b40_v1.vcf.gz",
                     "ukb23157_c8_b25_v1.vcf.gz")

d = filter(d, file_name %in% rerun_file_names)

for(i in 1:dim(d)[1]){
  file_name = gsub(pattern = ".vcf.gz", replacement = "", d[i,1])
  file_id = d[i,2]
  command = gsub(pattern = "FILE_ID", replacement = file_id, template) %>%
    gsub(pattern = "FILE_NAME", replacement = file_name)
  runner_name = paste0(file_name, "_runner.sh")
  writeLines(text = command, con = runner_name)
}

