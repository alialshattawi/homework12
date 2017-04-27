class Patient < ActiveRecord::Base
  belongs_to :doctor
  
validates_presence_of :first_name, message: 'can not be blank'

validates_presence_of :last_name, message: 'can not be blank'

validates_uniqueness_of :first_name

validates_uniqueness_of :last_name

validates_uniqueness_of :phone

validates_format_of :phone, with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/

validates_uniqueness_of :email

validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create ,:message =>"must be @gmail.com"





end
