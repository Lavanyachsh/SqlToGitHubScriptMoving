create procedure [dbo].[Add_UserSignIn](
  @Username varchar(max), 
  @Password varchar(max)
) as begin 
set 
  nocount on 
select 
  * 
from 
  UserRegistration 
where 
  Username = @Username 
  and Password = @Password end 
