select i.id ,CONCAT(u.Username,' : ', i.Title)
from Issues as I
left join Users as U on u.Id = I.AssigneeId
order by i.Id desc, u.Id