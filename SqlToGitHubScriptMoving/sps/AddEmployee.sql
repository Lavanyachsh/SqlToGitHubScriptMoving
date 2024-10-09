CREATE procedure [dbo].[Usp_AddEmployee](
  @empname varchar(max), 
  @empsalary money, 
  @insertvalue int out
) as begin 
set 
  nocount on insert into employee (empname, empsalary) 
values 
  (@empname, @empsalary) 
set 
  @insertvalue = SCOPE_IDENTITY() end
