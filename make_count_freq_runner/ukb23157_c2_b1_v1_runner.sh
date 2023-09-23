
dx run app-swiss-army-knife \
-iin='file-GZ4J1FjJVfpK0b4Y20QyJyBY' \
-iin='file-GZ4J1FjJVfpG93Z4766ZP1F3' \
-iin='file-GZ4J1FjJVfp0B583bbgjQ23Q' \
-iin='file-GZ4J1FjJVfp5J41p6pxQ0v0x' \
-iin='file-GZ4J1FjJVfpFqj1135P64jZB' \
-iin='file-GZ515G0JYKjJYfk9kvb6bk1x' \
-iin='file-GZ515G0JYKjKK9fy8GvF33xK' \
-iin='file-GZ515G0JYKj8bJ13Z85V9BQ0' \
-icmd='
plink2 --bfile ukb23157_c2_b1_v1 --keep all_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b1_v1_freq_all;
plink2 --bfile ukb23157_c2_b1_v1 --keep afr_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b1_v1_freq_afr;
plink2 --bfile ukb23157_c2_b1_v1 --keep eur_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b1_v1_freq_eur;
plink2 --bfile ukb23157_c2_b1_v1 --keep eas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b1_v1_freq_eas;
plink2 --bfile ukb23157_c2_b1_v1 --keep sas_unrelated_modified.txt --freq --geno-counts --out ukb23157_c2_b1_v1_freq_sas;
' \
--destination '/freq' \
--name get_freq_from_ukb23157_c2_b1_v1 \
--instance-type mem2_ssd1_v2_x8 --brief -y;

