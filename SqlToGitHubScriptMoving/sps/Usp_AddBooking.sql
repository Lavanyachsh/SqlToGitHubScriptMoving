CREATE procedure [dbo].[Usp_AddBooking](
  @Email varchar(max), 
  @CustomerName varchar(max), 
  @Country varchar(max), 
  @City varchar(max), 
  @insertedvalue int out
) as begin 
set 
  nocount on --it is used to prevent the no.of rows affected
  insert into NewBooking(
    Email, CustomerName, Country, City
  ) 
values 
  (
    @Email, @CustomerName, @Country, @City
  ) 
set 
  @insertedvalue = scope_identity() end

