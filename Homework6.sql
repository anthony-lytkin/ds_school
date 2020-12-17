# Ex. from Colab

select 
    p.name as Name,
    a.street_name as Street,
    a.post_code as 'Post Code'
from person p join address a
on p.id = a.person_id
    where a.state = 'Moscow'
    
# Ex. from capture
    
sql = '''
    alter table person
        add rows_quantity int;
'''
connection.execute(sql)

sql = '''
    update person
        set rows_quantity = (
            select count() from person
        );
'''
connection.execute(sql)

sql = '''select 
            *
        from person'''

pd.read_sql(sql, connection)