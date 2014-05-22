-- first version. borrowed from solution contribution by:
-- http://stackoverflow.com/users/232279/thinkjet
-- sourced at: 
-- http://stackoverflow.com/questions/23808993/manipulating-collections

declare
  l_object tbl_list2;
  i        number;
begin
  -- for list initialization it must be filled with constructed objects
  l_object := tbl_list2( tbl_list_rec('','') );

  for i in 1..100000 loop          

    -- 1. select values to variable
    -- 2. Fix constructor for list 
    select 
      l_object MULTISET UNION DISTINCT tbl_list2(tbl_list_rec('myOwner','MyTable'))
    into 
      l_object 
    from 
      dual;

    end loop;

    for i in l_object.first ..  l_object.last loop
      -- output separate fields, there are now default conversion from 
      -- user-defined objects to varchar2.
      dbms_output.put_line(l_object(i).l_owner || ',' || l_object(i).l_name);
    end loop;  

end;
/
