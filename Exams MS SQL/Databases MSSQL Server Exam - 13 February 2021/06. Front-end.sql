select Id, Name, Size from Files
where Size > 1000  and Name Like '%html%'
order by Size desc, Id, Name