
dx run app-swiss-army-knife \
-iin='file-GZ4J1FjJVfpK0b4Y20QyJyBY' \
-iin='file-GZ4J1FjJVfpG93Z4766ZP1F3' \
-iin='file-GZ4J1FjJVfp0B583bbgjQ23Q' \
-iin='file-GZ4J1FjJVfp5J41p6pxQ0v0x' \
-iin='file-GZ4J1FjJVfpFqj1135P64jZB' \
-iin='file-GZ5129jJ0F5xZq8f8B0kXkXB' \
-iin='file-GZ5129jJ0F5bQYPB2XzqG793' \
-iin='file-GZ5129jJ0F5VKFbb12kbKv1V' \
-icmd='
plink2 --bfile ukb23157_c2_b57_v1 --keep all_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b57_v1_freq_all;
plink2 --bfile ukb23157_c2_b57_v1 --keep afr_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b57_v1_freq_afr;
plink2 --bfile ukb23157_c2_b57_v1 --keep eur_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b57_v1_freq_eur;
plink2 --bfile ukb23157_c2_b57_v1 --keep eas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b57_v1_freq_eas;
plink2 --bfile ukb23157_c2_b57_v1 --keep sas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b57_v1_freq_sas;
' \
--destination '/freq' \
--name get_freq_from_ukb23157_c2_b57_v1 \
--instance-type mem2_ssd1_v2_x8 --brief -y;

