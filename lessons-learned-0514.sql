-- Borrowed from solution contribution by:
-- http://stackoverflow.com/users/232279/thinkjet
-- sourced at: 
-- http://stackoverflow.com/questions/23808993/manipulating-collections

	

    CREATE OR REPLACE TYPE tbl_list_rec2 AS OBJECT (
      l_owner  VARCHAR2(64),
      l_name  VARCHAR2(64),
      map member FUNCTION get_key RETURN VARCHAR2
    );
    /
     
    CREATE OR REPLACE TYPE BODY tbl_list_rec2 AS
     
      map member FUNCTION get_key RETURN VARCHAR2
      IS
      BEGIN
        RETURN l_owner||CHR(1)||l_name;
      END;
     
    END;
    /
     
    DECLARE
      l_object tbl_list2a;
      i        NUMBER;
    BEGIN
      l_object := tbl_list2a( tbl_list_rec2('','') );
     
      FOR i IN 1..100000 LOOP          
        l_object := l_object MULTISET UNION DISTINCT tbl_list2a(tbl_list_rec2('myOwner','MyTable'));
      END LOOP;
     
      FOR i IN l_object.FIRST..  l_object.LAST LOOP
        DBMS_OUTPUT.put_line(l_object(i).l_owner || ',' || l_object(i).l_name);
      END LOOP;  
     
    END;
    /



