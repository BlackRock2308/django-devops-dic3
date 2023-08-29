from django.db import models

# Create your models here.

class UserModel(models.Model):
    id = models.CharField(primary_key=True, max_length=5)
    username = models.CharField(max_length=155,null= True,blank=True)
    email = models.EmailField(null= True,blank=True)
    first_name = models.CharField(max_length=255,null= True, blank=True)
    last_name = models.CharField(max_length=255,null= True, blank=True)
    

    def __str__(self) -> str:
        return self.username
