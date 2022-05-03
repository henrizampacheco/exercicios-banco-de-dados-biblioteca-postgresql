﻿SELECT l.NM_LIVRO,
a.NM_AUTOR,
(2022 - l.NR_ANOPUBLICACAO) AS IDADE_LIVRO
FROM LIVRO l

JOIN AUTOR a ON
l.CD_AUTOR = a.CD_AUTOR

ORDER BY l.NR_ANOPUBLICACAO ASC
LIMIT 1;
