create procedure [dbo].[Usp_AddCountries](
  @id int, 
  @countryName varchar(max)
) as begin 
set 
  nocount on insert into countries 
values 
  (@id, @countryName) end
