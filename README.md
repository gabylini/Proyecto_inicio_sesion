Comandos ejecutados en consola

Usando la consola de Rails...

#### Cree algunos registros en la tabla usuarios utilizando la consola de Rails.
* User.create(first_name: "Sara", last_name: "Castro",email_address: "sara@gmail.com", age:59) 

#### Verifique si le permite ingresar algunos registro que no cumplan con las reglas de validación que establecimos (ej. trate de crear un registro don la edad sea 5 ó mayor a 150 ó donde el nombre sea solo 1 caracter, etc.).
* User.create(first_name:"Ga", last_name:"Rojas", email_address:"asdasd@gmail.com", age:5).valid?

#### Verifique si le permite ingresar algunos registro que no cumplan con las reglas de validación que establecimos (ej. trate de crear un registro don la edad sea 5 ó mayor a 150 ó donde el nombre sea solo 1 caracter, etc.) Asegúrate que tu consola devuelva los mensaje de error apropiados cuando intentas guardar un registro que no cumple con las reglas de validación.
* User.create!(first_name: "a", last_name: "o",email_address:"", age:9) /Users/gaby/.rvm/gems/ruby-3.0.1/gems/activerecord-6.1.6.1/lib/active_record/validations.rb:80:in `raise_validation_error': Validation failed: First name :Nombre debe tener minimo 2 caracteres, Last name :Apellido debe tener minimo 2 caracteres, Email address can't be blank, Age :Edad minima 10 y maxima 150

#### Consultar todos los usuarios.
* User.all

#### Consultar todos los usuarios.
* User.first

#### Consultar el último usuario
* User.last

#### Consultar todos los usuarios ordenados por el primer nombre
User.order(:first_name)

#### Consultar el registro de usuario cuyo id es 3 y cambiar el apellido por otro valor. Haz esto directamente en la consola utilizando .find  y  .save
* u = User.find(3)
* u.last_name = "cambio" 
* u.save

#### Elimine el registro de usuario cuyo id es 4 (utilice algo como Usuario.find(2).destroy...) 
*User.find(4).destroy
