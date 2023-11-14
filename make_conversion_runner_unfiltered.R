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


