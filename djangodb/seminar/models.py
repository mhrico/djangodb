from django.db import models

class Department(models.Model):
    department_code = models.IntegerField(db_column='Department_Code', primary_key=True)  # Field name made lowercase.
    department_name = models.CharField(db_column='Department_Name', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'department'
    def __str__(self):
        return "[" + str(self.department_code) + "] " + self.department_name

class Student(models.Model):
    roll = models.CharField(db_column='Roll', primary_key=True, max_length=12)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=200, blank=True, null=True)  # Field name made lowercase.
    number = models.CharField(db_column='Number', max_length=14, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=100, blank=True, null=True)  # Field name made lowercase.
    session = models.CharField(db_column='Session', max_length=7, blank=True, null=True)  # Field name made lowercase.
    department_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='Department_Code')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student'
    def __str__(self):
        return self.roll

class Books(models.Model):
    book_serial = models.IntegerField(db_column='Book_Serial', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=500)  # Field name made lowercase.
    authors = models.CharField(db_column='Authors', max_length=500)  # Field name made lowercase.
    department_code = models.ForeignKey('Department', models.DO_NOTHING, db_column='Department_Code')  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'books'
        verbose_name_plural = 'Books'
    def __str__(self):
        return "[" + str(self.book_serial) + "] " + self.name

class RequestedBooks(models.Model):
    requested_serial = models.AutoField(db_column='Requested_Serial', primary_key=True)  # Field name made lowercase.
    roll = models.ForeignKey('Student', models.DO_NOTHING, db_column='Roll')  # Field name made lowercase.
    book_serial = models.ForeignKey(Books, models.DO_NOTHING, db_column='Book_Serial')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'requested_books'
        verbose_name_plural = "Requested Books"
    def __str__(self):
        return "[" + str(self.requested_serial) + "] " + str(self.roll) + " - " + str(self.book_serial)

class IssuedBooks(models.Model):
    statuses = (
    ('Approved', 'Approved'),
    ('Rejected', 'Rejected'),
    ('Taken', 'Taken'),
    ('Returned', 'Returned'),
    ('Overdue', 'Overdue')
    )

    serial = models.AutoField(db_column='Serial', primary_key=True)  # Field name made lowercase.
    requested_serial = models.ForeignKey('RequestedBooks', models.DO_NOTHING, db_column='Requested_Serial')  # Field name made lowercase.
    date_taken = models.DateField(db_column='Date_Taken', blank=True, null=True)  # Field name made lowercase.
    date_to_return = models.DateField(db_column='Date_to_Return', blank=True, null=True)  # Field name made lowercase.
    date_returned = models.DateField(db_column='Date_Returned', blank=True, null=True)  # Field name made lowercase.
    status = models.CharField(max_length=8, blank=True, null=True, choices=statuses)



    class Meta:
        managed = False
        db_table = 'issued_books'
        verbose_name_plural = "Issued Books"
    def __str__(self):
        return str(self.requested_serial) + " - " + str(self.date_to_return)
