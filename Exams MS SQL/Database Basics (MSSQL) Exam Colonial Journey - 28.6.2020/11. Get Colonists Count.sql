
create function udf_GetColonistsCount(@PlanetName VARCHAR (30)) 
returns int
	as
	begin

	return (select count(c.Id) as [Count]
					from Colonists as c
					join TravelCards as tc on c.Id = tc.ColonistId
					join Journeys as j on tc.JourneyId = j.Id
					join Spaceports as s on j.DestinationSpaceportId = s.Id
					join Planets as p on s.PlanetId = p.Id
					where p.Name like @PlanetName)
	end

	select dbo.udf_GetColonistsCount('Otroyphus')
