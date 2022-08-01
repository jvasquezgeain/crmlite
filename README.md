# crmlite

## Que es CMRLite
- CRMLite, es un sistema para el registro de prodcutos y clientes, que permite de una manera simple, la gestion de la fuerza de venta de una empresa.

## Homepage http://crmlite.io

## Instalacion

#### **instalacion ruby** 
---

Para este proyecto se emplea la version 3.1.2 de ruby, en mi caso se empleo el manejador de versiones rvm en una distribucion centos 8. para generar la instlación de la version respectiva por favor siga el siguiente enlace: [rvm](https://rvm.io/)
#### **Instalación del proyecto** 
---
#### instalacion [Postgresql](https://www.linuxshelltips.com/install-postgresql-rhel/ "") 
#### instalacion [nodejs](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-centos-8)
#### instalacion [yarm](https://grabthiscode.com/shell/install-yarm-for-redhat-linux)

### **configuracion proyecto ruby**
- bundle config set --local deployment 'true'
- bundle config set --local without 'development test'
- bundle install
- rm config/master.key config/credentials.yml.enc
- bundle config --delete without with
- bundle install
- EDITOR='nano -wait' bundle exec rails credentials:edit
- chmod 700 config db
- chmod 600 config/database.yml config/master.key config/credentials.yml.enc
- rails assets:precompile RAILS_ENV=production
- rails db:prepare RAILS_ENV=production

### **instalacion phusionpassenger**
- gem install passenger -- --no-rdoc --no-ri
- passenger-install-apache2-module
    
### **implementacion phusionpassenger**
https://www.phusionpassenger.com/library/deploy/apache/deploy/ruby/
https://www.phusionpassenger.com/library/indepth/environment_variables.html#the-path-environment-variable
