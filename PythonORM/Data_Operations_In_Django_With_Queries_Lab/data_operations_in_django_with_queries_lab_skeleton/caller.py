import os
import django
from datetime import date

# Set up Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "orm_skeleton.settings")
django.setup()

# Import your models here

from main_app.models import Student


def add_students():
    Student.objects.create(
        student_id="FC5204",
        first_name="John",
        last_name="Doe",
        birth_date="1995-05-15",
        email="john.doe@university.com",
    )

    student = Student()
    student.student_id = "FE0054"
    student.first_name = "Jane"
    student.last_name = "Smith"
    student.email = "jane.smith@university.com"
    student.save()

    student = Student()
    student.student_id = "FH2014"
    student.first_name = "Alice"
    student.last_name = "Johnson"
    student.birth_date = "1998-02-10"
    student.email = "alice.johnson@university.com"
    student.save()

    student = Student(
        student_id="FH2015",
        first_name="Bob",
        last_name="Wilson",
        birth_date="1996-11-25",
        email="bob.wilson@university.com",
    )
    student.save()


def get_students_info():
    students = Student.objects.all()
    result = []
    [result.append(f"Student №{student.student_id}: {student.first_name} {student.last_name}; Email: {student.email}")
     for student in students]
    return '\n'.join(result)


def update_students_emails():
    students = Student.objects.all()
    for student in students:
        email_split = student.email.split("@")
        student.email = f"{email_split[0]}@uni-students.com"
        student.save()


def truncate_students():
    Student.objects.all().delete()

# Run and print your queries

add_students()
# print(Student.objects.all())


# print(get_students_info())


# update_students_emails()
# for student in Student.objects.all():
#     print(student.email)


# truncate_students()
# print(Student.objects.all())
# print(f"Number of students: {Student.objects.count()}")
