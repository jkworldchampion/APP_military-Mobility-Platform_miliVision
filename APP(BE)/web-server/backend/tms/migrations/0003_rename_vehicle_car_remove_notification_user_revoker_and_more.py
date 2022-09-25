# Generated by Django 4.0 on 2022-09-25 13:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tms', '0002_notification_message_reservation_and_more'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Vehicle',
            new_name='Car',
        ),
        migrations.RemoveField(
            model_name='notification',
            name='user_revoker',
        ),
        migrations.RemoveField(
            model_name='reservation',
            name='vehicle',
        ),
        migrations.AddField(
            model_name='reservation',
            name='car',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='car', to='tms.car'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='reservation',
            name='departure',
            field=models.CharField(default='', max_length=264),
        ),
        migrations.AddField(
            model_name='reservation',
            name='destination',
            field=models.CharField(default='', max_length=264),
        ),
        migrations.AddField(
            model_name='reservation',
            name='followers_num',
            field=models.PositiveIntegerField(default=0),
        ),
        migrations.AddField(
            model_name='reservation',
            name='is_sharing',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='reservation',
            name='stopover',
            field=models.CharField(default='', max_length=264),
        ),
    ]
