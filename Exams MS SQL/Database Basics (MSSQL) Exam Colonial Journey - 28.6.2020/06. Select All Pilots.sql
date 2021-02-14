select c.Id,
	CONCAT(c.FirstName, ' ', c.LastName)
	from Colonists as c
	join TravelCards as tc on c.Id = tc.ColonistId
	where tc.JobDuringJourney = 'Pilot'
	order by c.Id

	--Extract from the database all colonists, which have a pilot job. Sort the result by id, ascending.