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
	usuario_password = forms.CharField(label="Senha", widget= forms.PasswordInput(attrs={'class': 'input-xlarge', 'placeholder': 'Senha', 'required': 'required'}))
	
	class Meta:
		model = Usuario
		fields = ['usuario_nome', 'usuario_email', 'usuario_password']