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

	CURSOS_CHOICES(
		(u'ads', u'Analise e Desenvolvimento de Sistemas'),
		(u'si', u'Sistemas de Informação'),
		(u'gti', u'Gestao de Sistemas de Informacao'),
		(u'bd', u'Banco de Dados'),
		(u'tc', u'Telecomunicacoes e Redes de Internet')
	)

	usuario_id = models.AutoField(primary_key=True)
	usuario_ra = models.CharField(max_length=50, verbose_name='RA')
	usuario_nome = models.CharField(max_length=50, verbose_name='Nome')
	usuario_nascimento = models.DateField(verbose_name='Data de nascimento')
	usuario_sexo = models.CharField(max_length=50, choices = SEXO_CHOICES, verbose_name='Sexo')
	usuario_estado_civil = models.CharField(max_length=50, choices= ESTADO_CIVIL_CHOICES, verbose_name='Estado Civil')
	usuario_email = models.CharField(max_length=50, verbose_name='E-mail')
	usuario_nivel = models.CharField(max_length=50, choices = NIVEIS_CHOICES, verbose_name='Nivel')
	usuario_password = models.CharField(max_length=50, verbose_name='Senha')
	usuario_cursos = models.CharField(max_length=50, choices= CURSOS_CHOICES, verbose_name='Cursos')
	usuario_notas = models.CharField(max_length=50, verbose_name='Notas')

class Notas(models.Model):

	nota_id = models.AutoField(primary_key=True)
	nota_aluno_id = models.CharField(max_length=50)
	nota_valor = models.CharField(max_length=50, verbose_name='Valor da nota')
	nota_disciplina = models.CharField(verbose_name='Disciplina', max_length=50)
	
class Disciplinas(models.Model):

	CURSOS_CHOICES(
		(u'ads', u'Analise e Desenvolvimento de Sistemas'),
		(u'si', u'Sistemas de Informação'),
		(u'gti', u'Gestao de Sistemas de Informacao'),
		(u'bd', u'Banco de Dados'),
		(u'tc', u'Telecomunicacoes e Redes de Internet'),
	)

	DISCIPLINA_CHOICES(
		(u'sql', u'Linguagem SQL'),
		(u'tec', u'Tecnologia Web'),
		(u'es', u'Engenharia de Software'),
		(u'lpii', u'Linguagem de programacao II'),
		(u'gtp', u'Gestao de Projetos'),
	)

	disciplina_id = models.AutoField(primary_key=True)
	disciplina_nome = models.CharField(verbose_name='Disciplina', choices=DISCIPLINA_CHOICES)
	disciplina_curso = models.CharField(verbose_name='Curso', choices=CURSO_CHOICES)

