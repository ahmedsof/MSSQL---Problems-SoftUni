select 
p.Name,
COUNT(DestinationSpaceportId) as JourneysCount
		from Planets as p
		join Spaceports as s on p.Id = s.PlanetId
		join Journeys as j on s.Id = j.DestinationSpaceportId
		group by p.Name
		order by COUNT(DestinationSpaceportId) desc, p.Name
