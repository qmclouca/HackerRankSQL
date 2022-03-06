SELECT
    (CASE WHEN ((A+B<=C) OR (A+C<=B) OR (B+C<A)) THEN 'Not A Triangle' ELSE
    (CASE WHEN ((A=B) AND (A=C)) THEN 'Equilateral' ELSE
    (CASE WHEN ((A=B) OR (A=C) OR (B=C)) THEN 'Isosceles' ELSE
    (CASE WHEN ((A!=B) AND (A!=C) AND (B!=C)) THEN 'Scalene' END)
     END)END)END)
FROM TRIANGLES;
