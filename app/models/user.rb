class User < ApplicationRecord
    validates :first_name, presence: true, length: {minimum:2, too_short: ":Nombre debe tener minimo 2 caracteres"}
    validates :last_name, presence: true, length: {minimum:2, too_short: ":Apellido debe tener minimo 2 caracteres"}
    validates :email_address, presence: true 
    validates :age, presence: true, numericality:{greater_than:10, less_than:150, message: ":Edad minima 10 y maxima 150"}
end
