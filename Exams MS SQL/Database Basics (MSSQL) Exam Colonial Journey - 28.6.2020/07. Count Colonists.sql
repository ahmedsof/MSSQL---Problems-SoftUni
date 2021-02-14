select count(*) 
from Colonists as c
join TravelCards as tc on c.Id = tc.ColonistId
join Journeys as j on j.Id = tc.JourneyId
where j.Purpose = 'Technical'
