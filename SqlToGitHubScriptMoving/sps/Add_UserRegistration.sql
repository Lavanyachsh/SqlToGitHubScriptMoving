create procedure [dbo].[Add_UserRegistration](
  @Username varchar(max), 
  @Email varchar(max), 
  @FullName varchar(max), 
  @Password varchar(max)
) as begin 
set 
  nocount on if(
    (
      select 
        Count(*) 
      From 
        UserRegistration(nolock) 
      where 
        Username = @Username 
        and Password = @Password
    )> 0
  ) begin 
select 
  '300' 'Error_Code', 
  'USER is already exist' 'Error_Message' END ELSE BEGIN insert into UserRegistration 
values 
  (
    @Username, @Email, @FullName, @Password
  ) 
select 
  '200' 'Error_Code', 
  'User Is Registered Successfully' 'Error_Message' END
  end