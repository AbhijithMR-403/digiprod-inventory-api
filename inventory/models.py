from django.db import models


class Product(models.Model):
    name = models.CharField(max_length=255, null=True)
    description = models.TextField(null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2, null=True)
    stock = models.IntegerField(null=True)

    def __str__(self):
        return self.name
