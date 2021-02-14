select 
	Id,
	FORMAT (JourneyStart, 'dd/MM/yyyy') as JourneyStart,
	FORMAT (JourneyEnd, 'dd/MM/yyyy') as JourneyEnd
		from Journeys
		where Purpose = 'Military'
		order by JourneyStart asc