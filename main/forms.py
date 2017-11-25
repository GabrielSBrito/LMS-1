from django.forms import ModelForm
from main.models import Usuario
from django import forms

class LoginForm(forms.ModelForm):
	
	usuario_ra = forms.CharField(label="RA", widget= forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Insira seu RA'}))
	usuario_password = forms.CharField(label="Senha", widget= forms.PasswordInput(attrs={'class': 'form-control', 'placeholder': 'Senha', 'required': 'required'}))
	
	class Meta:
		model = Usuario
		fields = ['usuario_ra', 'usuario_password']