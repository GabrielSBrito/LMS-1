from django.db import models
import datetime

class Usuario(models.Model):

	SEXO_CHOICES = (
		(u'masculino', u'Masculino'),
		(u'feminino', u'Feminino'),
		)

	ESTADO_CIVIL_CHOICES = (
		(u'solteiro', u'Solteiro'),
		(u'casado', u'Casado'),
		)
	
	NIVEIS_CHOICES = (
		(u'1', u'Aluno'),
		(u'2', u'Professor'),
		(u'3', u'Coordenador'),
	)

	usuario_id = models.AutoField(primary_key=True)
	usuario_ra = models.CharField(max_length=50)
	usuario_nome = models.CharField(max_length=50)
	usuario_nascimento = models.DateField()
	usuario_sexo = models.CharField(max_length=50, choices = SEXO_CHOICES)
	usuario_estado_civil = models.CharField(max_length=50, choices= ESTADO_CIVIL_CHOICES, verbose_name='Estado Civil')
	usuario_email = models.CharField(max_length=50)
	usuario_nivel = models.CharField(max_length=50, choices = NIVEIS_CHOICES, verbose_name='Nivel')
	usuario_password = models.CharField(max_length=50)
