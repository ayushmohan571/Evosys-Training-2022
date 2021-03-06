--02/02/2022
----  Oracle Select

    --A) query data from  column
            -- To get the customer fnames,lname from the customers table
                SELECT 
                        fname ,lname
                FROM 
                        cust; 
            
    --B) Querying data from all columns of a table
            -- To get the customer cust_id ,lname ,fname ,area ,phone_no  from the customers table
                SELECT 
                        cust_id ,lname ,fname ,area ,phone_no 
                FROM 
                        cust;  
            -- USING * 
                SELECT 
                        *
                FROM 
                       cust;

--  Oracle Update
        -- A) update one column of a single row
                --  Changes the dis of the part with  star name 'tom cruise' :
                        UPDATE
                            movie
                        SET
                            dis=NULL
                        WHERE
                            star LIKE ('tom cruise');
                        
                        SELECT 
                                *
                        FROM  
                                movie;

        -- B) UPDATE data in specific Position in column base on some condition
    
                UPDATE
                    movie
                SET
                    dis = 
                         CASE 
                            WHEN price BETWEEN 130 AND 150 THEN round(price*.64) 
                            WHEN price BETWEEN 150 AND 200 THEN round(price*.20)
                         END 
                
                SELECT 
                        *
                FROM  
                        movie;


-- Create Copy of Custmore table
    CREATE TABLE cust_copy
    AS
        SELECT
          *
        FROM
          cust; 
    
     SELECT *
     FROM 
            cust_copy;
            
-- Truncate Table
    TRUNCATE TABLE cust_copy;
    
-- Drop cust_copy table
    DROP TABLE cust_copy;
        
--GROUP BY CLAUSE
--selecting number of movies group by type action
SELECT COUNT( TITLE) FROM movie GROUP BY type;
--selecting sum price of movies 
SELECT TITLE,SUM(PRICE) FROM movie GROUP BY TITLE ORDER BY TITLE;
