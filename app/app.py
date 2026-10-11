import os

name = os.getenv("STUDENT_NAME", "Ruslan")
surname = os.getenv("STUDENT_SURNAME", "Absalyamov")
group = os.getenv("STUDENT_GROUP", "IT2-2313")
id = os.getenv("STUDENT_ID", "37044")

print("============")
print("DevOps Student Application")
print("============")
print()
print(f"Name: {name}")
print(f"Surname: {surname}")
print(f"Group: {group}")
print(f"Student ID: {id}")
print()
print("Application is running successfully!")
