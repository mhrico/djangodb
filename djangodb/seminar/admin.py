from django.contrib import admin
from .models import Department, Student, Books, IssuedBooks, RequestedBooks

admin.site.register(Department)
admin.site.register(Student)
admin.site.register(Books)
admin.site.register(IssuedBooks)
admin.site.register(RequestedBooks)