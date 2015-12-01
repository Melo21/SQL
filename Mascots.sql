Select count(*)
From(SELECT LEFT(firstname, 1) as FIRSTNAME_Initial
    , Mascot_roster.species
    , Format(Game_appearance.Mascot_ID,0)
    , Teams.NAME
    ,case when no_mascot = 1 then 'Yes' else 'No' end
    ,max(Date_of_Showing) as Date_of_Appearance
,DATE_FORMAT(Game_appearance.Date_Created, '%b %e ,%Y') as Date_added_to_team
From Mascot_Roster  MR
  left join Showings S
    on  MR.ID = S.ID
  left join team_name TN
    on T.Name.USER_ID = S.TEAM
  right join teams T
    on teams.ID = TN.Mascot_ID
Where 1=1
and teams.ID = 25
or teams.ID = 26
or teams.ID = 27
Group by ac.BADGENUM
Order by u.lastname asc/*)PS


Game appearance   
- Date of showing
- Date created
- Mascot ID

Mascot Roster
- Mascot Name
-Species
-Cost
-ID

Team Name
- Team name
-  No Mascot

Teams
- Name
- ID
