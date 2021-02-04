# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Books(models.Model):
    book_serial = models.IntegerField(db_column='Book_Serial', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=500)  # Field name made lowercase.
    authors = models.CharField(db_column='Authors', max_length=500)  # Field name made lowercase.
    department_code = models.ForeignKey('Department', models.DO_NOTHING, db_column='Department_Code')  # Field name made lowercase.
    quantity = models.IntegerField(db_column='Quantity', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'books'
    def __str__(self):
        return "[" + str(self.book_serial) + "] " + self.name

class Department(models.Model):
    department_code = models.IntegerField(db_column='Department_Code', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'department'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class IssuedBooks(models.Model):
    serial = models.AutoField(db_column='Serial', primary_key=True)  # Field name made lowercase.
    requested_serial = models.ForeignKey('RequestedBooks', models.DO_NOTHING, db_column='Requested_Serial')  # Field name made lowercase.
    date_taken = models.DateField(db_column='Date_Taken', blank=True, null=True)  # Field name made lowercase.
    date_returned = models.DateField(db_column='Date_Returned', blank=True, null=True)  # Field name made lowercase.
    status = models.CharField(db_column='Status', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'issued_books'
    def __str__(self):
        return str(self.requested_serial)


class RequestedBooks(models.Model):
    serial = models.AutoField(db_column='Serial', primary_key=True)  # Field name made lowercase.
    roll = models.ForeignKey('Student', models.DO_NOTHING, db_column='Roll')  # Field name made lowercase.
    book_serial = models.ForeignKey(Books, models.DO_NOTHING, db_column='Book_Serial')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'requested_books'
    def __str__(self):
        return "[" + str(self.serial) + "] " + str(self.roll) 


class Student(models.Model):
    roll = models.CharField(db_column='Roll', primary_key=True, max_length=12)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=200, blank=True, null=True)  # Field name made lowercase.
    number = models.CharField(db_column='Number', max_length=14, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=100, blank=True, null=True)  # Field name made lowercase.
    session = models.CharField(db_column='Session', max_length=7, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student'
    def __str__(self):
        return self.roll
