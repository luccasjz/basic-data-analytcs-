import sqlite3
from typing_extensions import Self
class WorkDB:
    def __init__ (self, db.sql):
        self.connection = sqlite3.connect('workdb.db')
        self.cursor = self.connection.cursor()
    
    def select(self):
        self.cursor.execute('SELECT * FROM employee')
        for line in self.cursor.fetchall():
            print(line)
    
    def insert(self, name_emp, age, document, job_title, salary):
        data = 'INSERT OR IGNORE INTO employee (name_emp, age, document, job_title, salary) VALUES (?, ?, ?, ?, ?)'
        self.cursor.execute(data, (name_emp, age, document, job_title, salary))
        self.connection.commit()
    def edit(self, job_title, salary, name_emp):
        data = 'UPDATE OR IGNORE employee SET job_title=?, salary=? WHERE name_emp=?'
        self.cursor.execute(data, (job_title, salary, name_emp))
        self.connection.commit()
    def delete(self, name_emp):
        data = 'DELETE FROM employee WHERE name_emp=?'
        self.cursor.execute(data, (name_emp))
        self.connection.commit()
    
    def end(self):
        self.cursor.close()
if __name__ == '__main__':
    table_employee = db.sql('db.sql')
    
    def.sqlite3.connect(self): 
  sql_employee = db.sql('db.sql') ;