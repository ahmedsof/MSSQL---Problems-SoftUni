

select  ff.Id,ff.Name, convert(varchar(30), ff.Size) +'KB' as Size from Files as f
right join Files as ff on f.ParentId = ff.Id
where f.ParentId is null
order by ff.Id, ff.Name, ff.Size desc