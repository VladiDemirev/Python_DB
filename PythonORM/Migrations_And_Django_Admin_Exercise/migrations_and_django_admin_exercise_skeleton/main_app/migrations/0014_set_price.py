# Generated by Django 5.0.4 on 2024-07-09 12:11

from django.db import migrations


def set_price(apps, schema_editor):
    smartphone_model = apps.get_model("main_app", "Smartphone")
    smartphones = smartphone_model.objects.all()

    for smartphone in smartphones:
        brand_length = len(smartphone.brand)
        smartphone.price = brand_length * 120

    smartphone_model.objects.bulk_update(smartphones, ["price"])


def set_category(apps, schema_editor):
    smartphone_model = apps.get_model("main_app", "Smartphone")
    smartphones = smartphone_model.objects.all()

    for smartphone in smartphones:
        if smartphone.price < 750:
            smartphone.category = "Cheap"
        else:
            smartphone.category = "Expensive"

    smartphone_model.objects.bulk_update(smartphones, ["category"])


def set_price_category(apps, schema_editor):
    set_price(apps, schema_editor)
    set_category(apps, schema_editor)


def reverse_price_category(apps, schema_editor):
    smartphone_model = apps.get_model("main_app", "Smartphone")
    smartphones = smartphone_model.objects.all()

    for smartphone in smartphones:
        smartphone.price = smartphone_model._meta.get_field("price").default
        smartphone.category = smartphone_model._meta.get_field("category").default

    smartphone_model.objects.bulk_update(smartphones, ["price", "category"])


class Migration(migrations.Migration):
    dependencies = [
        ('main_app', '0013_smartphone'),
    ]

    operations = [
        migrations.RunPython(set_price_category, reverse_price_category)
    ]
