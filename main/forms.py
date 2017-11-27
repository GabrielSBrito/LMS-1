from django.forms import ModelForm
from main.models import Usuario
from django import forms

class LoginForm(forms.ModelForm):
	
	usuario_ra = forms.CharField(label="RA", widget= forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Insira seu RA'}))
	usuario_password = forms.CharField(label="Senha", widget= forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Senha', 'required': 'required'}))
		
	class Meta:
		model = Usuario
		fields = ['usuario_ra', 'usuario_password']

class formDadosA(forms.ModelForm):
	usuario_nome = forms.CharField(label="Nome", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'Nome'}))
	usuario_email = forms.CharField(label="E-mail", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'E-mailRA'}))
	
	
	class Meta:
		model = Usuario
		fields = ['usuario_nome', 'usuario_email']


class formDadosP(forms.ModelForm):
	usuario_nome = forms.CharField(label="Nome", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'Nome'}))
	usuario_email = forms.CharField(label="E-mail", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'E-mailRA'}))

	
	class Meta:
		model = Usuario
		fields = ['usuario_nome', 'usuario_email']

class formCriarAluno(forms.ModelForm):

	SEXO_CHOICES = (
		(u'masculino', u'Masculino'),
		(u'feminino', u'Feminino'),
		)
	
	NIVEIS_CHOICES = (
		(u'1', u'Aluno'),
		(u'2', u'Professor'),
		(u'3', u'Coordenador'),
		)

	CURSOS_CHOICES = (
		(u'ads', u'Analise e Desenvolvimento de Sistemas'),
		(u'si', u'Sistemas de Informacao'),
		(u'gti', u'Gestao de Sistemas de Informacao'),
		(u'bd', u'Banco de Dados'),
		(u'tc', u'Telecomunicacoes e Redes de Internet'),
		)

	ESTADO_CIVIL_CHOICES = (
		(u'solteiro', u'Solteiro'),
		(u'casado', u'Casado'),
		)

	usuario_ra = forms.CharField(label="RA", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'RA'}))
	usuario_nome = forms.CharField(label="Nome", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'Nome'}))
	usuario_email = forms.CharField(label="E-mail", widget= forms.TextInput(attrs={'class': 'input-xlarge', 'placeholder': 'E-mail'}))
	usuario_nascimento = forms.DateField(label="Data de Nascimento", widget= forms.DateInput(attrs={'class': 'input-xlarge', 'placeholder': 'Data de Nascimento', 'type': 'date'}))
	usuario_sexo = forms.ChoiceField(label="Sexo", widget= forms.Select(attrs={'class': 'input-xlarge', 'placeholder': 'sEXO'}), choices = SEXO_CHOICES)
	usuario_estado_civil = forms.ChoiceField(label="Estado Civil", widget= forms.Select(attrs={'class': 'input-xlarge', 'placeholder': 'Estado Civil'}), choices = ESTADO_CIVIL_CHOICES)
	usuario_nivel = forms.ChoiceField(label="Nivel", widget= forms.Select(attrs={'class': 'input-xlarge', 'placeholder': 'Nivel'}), choices = NIVEIS_CHOICES)
	usuario_curso = forms.ChoiceField(label="Curso", widget= forms.Select(attrs={'class': 'input-xlarge', 'placeholder': 'Curso'}), choices = CURSOS_CHOICES)
	usuario_password = forms.CharField(label="Senha", widget= forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Senha', 'required': 'required'}))

	class Meta:
		model = Usuario
		fields = ['usuario_ra', 'usuario_nome', 'usuario_email', 'usuario_nascimento', 'usuario_sexo', 'usuario_estado_civil', 'usuario_nivel', 'usuario_curso', 'usuario_password']