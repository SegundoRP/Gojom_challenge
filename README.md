# Reporte de incidencias
El proyecto es un formulario mediante el cual los usuarios de Gojom podrán reportar alguna incidencia encontrada, tales como: errores al crear un anuncio, fallos en el buscador, correos que no llegan a tiempo, etc.

## Stack tecnológico
- Ruby 3.0.0
- Ruby on Rails 6.1.4.6
- PostgreSQL
- Node 14.15.5
- Action Mailer
- Active Storage - Cloudinary para las imágenes
- Action Text - para el texto enriquecido
- Gemas:
	- Slim
	- Mjml-rails
	- Devise
	- Letter-opener
	- Simple-form
	- Image-processing
	- Cloudinary
	- dotenv-rails

## Instalación
###Requerimientos
Antes de comenzar, se necesita instalar lo siguiente:
- Ruby version 3.0.0 para correr la aplicación
- Ruby on Rails  6.1.4.6 para correr la aplicación
- Node 14.15.5
- [ Rubygems](http://https://rubygems.org/ " Rubygems") para conseguir todas las gemas
- dotenv-rails, groups: [:development, :test]
- [Git ](hthttps://docs.github.com/en/get-started/quickstart/set-up-gittp:// "Git ")
- Una base de datos como PostgreSQL
- Una api_key de Cloudinary
## Setup
1. Para conseguir el código, clone este repositorio
```
git clone git@github.com:SegundoRP/Gojom_challenge.git
cd gojom_challenge
```
2.  Para instalar las gemas, correr el siguiente comando en el directorio del proyecto


    bundle install

3.Instalar los módulos de node


    yarn install
4.Crear una base de datos y correr las migraciones con los siguientes comandos


    rails db:create
    rails db:migrate
5.Una vez corrido el servidor, es necesario crearse una cuenta para poder visualizar el contenido de la aplicación ya que tiene la gema devise

6.Para las fotos que son enviadas al correo, es necesario la api_key de Cloudinary, en el archivo .env colocar la api que tiene el siguiente formato


    CLOUDINARY_URL=cloudinary://298522699261255:Qa1ZfO4syfbOC-***********************8
