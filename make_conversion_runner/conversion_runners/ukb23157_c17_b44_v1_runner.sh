dx run app-swiss-army-knife -iin='file-G981Kb8JykJqY5b24jf91Gyp' -icmd='bcftools norm -m -both ukb23157_c17_b44_v1.vcf.gz | bgzip -c > normalized_ukb23157_c17_b44_v1.vcf.gz; plink2 --vcf normalized_ukb23157_c17_b44_v1.vcf.gz -vcf-half-call m --make-bed --out ukb23157_c17_b44_v1;' --destination '/plink_files' --name ukb23157_c17_b44_v1 --instance-type mem2_ssd1_v2_x8 --brief -y;
