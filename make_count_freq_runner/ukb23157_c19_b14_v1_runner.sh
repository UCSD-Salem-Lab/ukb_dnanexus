
dx run app-swiss-army-knife \
-iin='file-GZ4J1FjJVfpK0b4Y20QyJyBY' \
-iin='file-GZ4J1FjJVfpG93Z4766ZP1F3' \
-iin='file-GZ4J1FjJVfp0B583bbgjQ23Q' \
-iin='file-GZ4J1FjJVfp5J41p6pxQ0v0x' \
-iin='file-GZ4J1FjJVfpFqj1135P64jZB' \
-iin='file-GZ4kP30Jkv5F26Q8b96397Vv' \
-iin='file-GZ4kP30Jkv596479vKy7p3vY' \
-iin='file-GZ4kP30Jkv52b9B9xVFgZ7fy' \
-icmd='
plink2 --bfile ukb23157_c19_b14_v1 --keep all_unrelated_modified.txt --freq --geno-counts --out ukb23157_c19_b14_v1_freq_all;
plink2 --bfile ukb23157_c19_b14_v1 --keep afr_unrelated_modified.txt --freq --geno-counts --out ukb23157_c19_b14_v1_freq_afr;
plink2 --bfile ukb23157_c19_b14_v1 --keep eur_unrelated_modified.txt --freq --geno-counts --out ukb23157_c19_b14_v1_freq_eur;
plink2 --bfile ukb23157_c19_b14_v1 --keep eas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c19_b14_v1_freq_eas;
plink2 --bfile ukb23157_c19_b14_v1 --keep sas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c19_b14_v1_freq_sas;
' \
--destination '/freq' \
--name get_freq_from_ukb23157_c19_b14_v1 \
--instance-type mem2_ssd1_v2_x8 --brief -y;

