dx run app-swiss-army-knife -iin='file-G97yx18JykJfBB9Z4j3fVfKk' -icmd='bcftools norm -m -both ukb23157_c1_b9_v1.vcf.gz | bgzip -c > normalized_ukb23157_c1_b9_v1.vcf.gz; plink2 --vcf normalized_ukb23157_c1_b9_v1.vcf.gz -vcf-half-call m --make-bed --out ukb23157_c1_b9_v1;' --destination '/plink_files' --name ukb23157_c1_b9_v1 --instance-type mem2_ssd1_v2_x8 --brief -y;
