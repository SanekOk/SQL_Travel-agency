-- 1
--create proc sp_Info_Tours
--as
--select * from Tours

-- 2
--create proc sp_Info_Tours_Diapazon_DataStart (@a date,@b date)
--as
--select * from Tours where DataStart>=@a and DataStart<=@b

-- 3
--create proc sp_Info_Tours_Country (@a nvarchar(50))
--as
--select T.Name,Prise,DataStart,DataEnd from EmploeesTours as ET join Tours as T on ET.ToursId=T.Id join Country on ET.CountryId=Country.Id
--where @a=Country.Name

-- 4
--create proc sp_Info_Popular_Country 
--as
--select Name from Country where Id =(select top 1 CountryId from EmploeesTours group by CountryId order by count(CountryId) desc)

-- 5
--create proc sp_Info_Popular_Tours_Max
--as
--select * from Tours where Id=(select ToursId from SizeTourist where Size=(select max(Size) from SizeTourist))

-- 6
--create proc sp_Info_Popular_Tours_Min
--as
--select * from Tours where Id=(select ToursId from SizeTourist where Size=(select min(Size) from SizeTourist))

-- 7
--create proc sp_If_Customer_on_Tour (@a nvarchar(50))
--as
--begin
--if (select CustomersId from Tours where CustomersId = (select Id from Customers where @a=FIO_C))!=0
--   print('Customer on the move')
--else
--   print('Client on standby')
--end

-- 8
--create proc sp_If_Where_a_Tourist (@a nvarchar(50))
--as
--begin
--if (select CustomersId from Tours where CustomersId = (select Id from Customers where @a=FIO_C))!=0
--   begin
--   select * from Tours where CustomersId = (select Id from Customers where @a=FIO_C)
--   end
--else
--   print('Client on standby')
--end

-- 9
--create proc sp_Tours_by_mode_of_Travel (@a nvarchar(50))
--as
--select Tours.Name,Prise,DataStart,DataEnd from EmploeesTours as ET join Tours on ET.ToursId=Tours.Id join Country as C on ET.CountryId=C.Id
--join Transport as T on C.TransportId=T.Id
--where @a=T.Name

-- 10
--create trigger tr_New_customer_Verification
--on Customers
--instead of  insert,update
--as
--begin
--if (select FIO_C from inserted)not in(select FIO_C from Customers)
--     insert into Customers select FIO_C,Phone,Email,Date_of_birth from inserted
--else
--     print('Such a client already exists')
--end

-- 11
--create trigger tr_Checking_for_Max_Customers
--on SizeTourist
--instead of  update
--as
--begin
--if (select Size from MaxCustomers where ToursId=(select ToursId from inserted))>=(select Size from inserted)
--   begin
--     update SizeTourist
--	 set Size=(select Size from inserted )where ToursId=(select ToursId from inserted)
--   end
--else
--     print('The tour is full')
--end




