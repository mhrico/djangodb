from django.db import models

class Department(models.Model):
    deptcode = models.IntegerField(db_column='DeptCode', primary_key=True)  # Field name made lowercase.

    class Meta:
        db_table = 'department'
        verbose_name_plural = "Departments"
    def __str__(self):
        return str(self.deptcode)

class Student(models.Model):
    roll = models.CharField(db_column='Roll', primary_key=True, max_length=12)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=200, blank=True, null=True)  # Field name made lowercase.
    number = models.CharField(db_column='Number', max_length=14, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=100, blank=True, null=True)  # Field name made lowercase.
    session = models.CharField(db_column='Session', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'student'
        verbose_name_plural = "Students"
    def __str__(self):
        return "[" + self.roll + "] " + self.name

class Books(models.Model):
    book_serial = models.IntegerField(db_column='Book_Serial', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=500)  # Field name made lowercase.
    authors = models.CharField(db_column='Authors', max_length=500)  # Field name made lowercase.
    department_code = models.ForeignKey('Department', models.DO_NOTHING, db_column='Department_Code')  # Field name made lowercase.

    class Meta:
        db_table = 'books'
        verbose_name_plural = "Books"
    def __str__(self):
        return "[" + str(self.book_serial) + "] " + self.name

class IssuedBooks(models.Model):
    serial = models.AutoField(db_column='Serial', primary_key=True)  # Field name made lowercase.
    book_serial = models.ForeignKey(Books, models.DO_NOTHING, db_column='Book_Serial')  # Field name made lowercase.
    student_roll = models.ForeignKey('Student', models.DO_NOTHING, db_column='Student_Roll', blank=True, null=True)  # Field name made lowercase.
    date_taken = models.CharField(db_column='Date_Taken', max_length=10, blank=True, null=True)  # Field name made lowercase.
    date_returned = models.CharField(db_column='Date_Returned', max_length=10, blank=True, null=True)  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity')  # Field name made lowercase.
    status = models.CharField(db_column='Status', max_length=100, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        db_table = 'issued_books'
        verbose_name_plural = "Issued Books"
    def __str__(self):
        return "[" + str(self.book_serial) + "] " + self.student_roll
