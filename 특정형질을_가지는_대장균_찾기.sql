select count(*) as COUNT
from ECOLI_DATA
where (GENOTYPE & 2)=0 and (GENOTYPE & (1 | 4))>0;





#이진수 비트 연산 꼭 알 것! 다시 풀어보기...