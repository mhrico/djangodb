from django.db import models


class Student(models.Model):
    roll = models.CharField(db_column='Roll', primary_key=True, max_length=12)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=200, blank=True, null=True)  # Field name made lowercase.
    number = models.CharField(db_column='Number', max_length=14, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=100, blank=True, null=True)  # Field name made lowercase.
    session = models.CharField(db_column='Session', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'student'
    
    def __str__(self):
        return self.roll + " " + "[" + self.name + "]"

    

class Book(models.Model):
    serial_id = models.IntegerField(db_column='Serial_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=500)  # Field name made lowercase.
    authors = models.CharField(db_column='Authors', max_length=500)  # Field name made lowercase.
    department_code = models.IntegerField(db_column='Department Code')  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        db_table = 'book'

    def __str__(self):
        return "[" + str(self.serial_id) + "] " + self.name + " - " + self.name