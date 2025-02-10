select A.ID, A.GENOTYPE, B.GENOTYPE as PARENT_GENOTYPE
from ECOLI_DATA as A
join ECOLI_DATA as B
on A.PARENT_ID=B.ID
where (A.GENOTYPE & B.GENOTYPE)=B.GENOTYPE
order by A.ID;





#다시 풀어볼것.. 비트 연산.. 매우 어렵다!