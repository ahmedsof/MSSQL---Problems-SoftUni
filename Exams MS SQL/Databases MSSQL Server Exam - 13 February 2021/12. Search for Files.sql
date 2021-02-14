create /*or alter */ procedure usp_SearchForFiles(@fileExtension varchar(15))
as
begin
select Id ,Name, CONCAT(Size, 'KB') as Size from Files
where Name like '%'+ @fileExtension+ '%'
order by Id, Name, Size
end
--EXEC usp_SearchForFiles 'txt'