# Generated by Django 2.0.8 on 2018-11-08 15:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [("orgs", "0050_populate_smtp_server_config")]

    operations = [migrations.AddField(model_name="org", name="uuid", field=models.UUIDField(null=True, unique=True))]