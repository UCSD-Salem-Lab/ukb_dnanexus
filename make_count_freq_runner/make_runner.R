library(data.table)
library(dplyr)

bed = fread("all_bed.txt")[,c(6,7)]
bim = fread("all_bim.txt")[,c(6,7)]
fam = fread("all_fam.txt")[,c(6,7)]

file_list = tibble(
  file_suffix = gsub(pattern = ".bed", replacement = "", bed$V6),
  bed = bed$V7,
  bim = bim$V7,
  fam = fam$V7
) %>%
  mutate(bed = gsub(pattern = "[(]", replacement = "", bed)) %>%
  mutate(bed = gsub(pattern = "[)]", replacement = "", bed)) %>%
  mutate(bim = gsub(pattern = "[(]", replacement = "", bim)) %>%
  mutate(bim = gsub(pattern = "[)]", replacement = "", bim)) %>%
  mutate(fam = gsub(pattern = "[(]", replacement = "", fam)) %>%
  mutate(fam = gsub(pattern = "[)]", replacement = "", fam))

template = "
dx run app-swiss-army-knife \\
-iin='file-GZ4J1FjJVfpK0b4Y20QyJyBY' \\
-iin='file-GZ4J1FjJVfpG93Z4766ZP1F3' \\
-iin='file-GZ4J1FjJVfp0B583bbgjQ23Q' \\
-iin='file-GZ4J1FjJVfp5J41p6pxQ0v0x' \\
-iin='file-GZ4J1FjJVfpFqj1135P64jZB' \\
-iin='BED_ID' \\
-iin='BIM_ID' \\
-iin='FAM_ID' \\
-icmd='
plink2 --bfile FILE_SUFFIX --keep all_unrelated_modified.txt --freq --geno-counts --out FILE_SUFFIX_freq_all;
plink2 --bfile FILE_SUFFIX --keep afr_unrelated_modified.txt --freq --geno-counts --out FILE_SUFFIX_freq_afr;
plink2 --bfile FILE_SUFFIX --keep eur_unrelated_modified.txt --freq --geno-counts --out FILE_SUFFIX_freq_eur;
plink2 --bfile FILE_SUFFIX --keep eas_unrelated_modified.txt --freq --geno-counts --out FILE_SUFFIX_freq_eas;
plink2 --bfile FILE_SUFFIX --keep sas_unrelated_modified.txt --freq --geno-counts --out FILE_SUFFIX_freq_sas;
' \\
--destination '/freq' \\
--name get_freq_from_FILE_SUFFIX \\
--instance-type mem2_ssd1_v2_x8 --brief -y;
"

for(i in 1:dim(file_list)[1]){
  file_suffix = file_list[i,1]
  bed_id = file_list[i,2]
  bim_id = file_list[i,3]
  fam_id = file_list[i,4]
  
  command = gsub(pattern = "FILE_SUFFIX", replacement = file_suffix, template) %>%
    gsub(pattern = "BED_ID", replacement = bed_id) %>%
    gsub(pattern = "BIM_ID", replacement = bim_id) %>%
    gsub(pattern = "FAM_ID", replacement = fam_id)
  
  writeLines(command, con = paste0(file_suffix, "_runner.sh"))
  
}


  