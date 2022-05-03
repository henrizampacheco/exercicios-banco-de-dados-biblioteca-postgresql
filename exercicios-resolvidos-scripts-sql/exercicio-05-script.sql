﻿SELECT l.NM_LIVRO,
l.NR_ANOPUBLICACAO,
a.NM_AUTOR,
COUNT(ex.NR_EXEMPLAR) AS QUANTIDADE_EXEMPLARES
FROM LIVRO l

INNER JOIN AUTOR a ON
l.CD_AUTOR = a.CD_AUTOR

INNER JOIN EXEMPLAR ex ON
l.CD_LIVRO = ex.CD_LIVRO

GROUP BY l.NM_LIVRO, l.NR_ANOPUBLICACAO, a.NM_AUTOR;