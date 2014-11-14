class User < ActiveRecord::Base
    
 validates :name, presence: true
    validates :email,   presence: true, 
                        format: { with: /\A\S+@\w+\.\w+\z/, 
                            message: 'format is invalid' }
                                
    has_secure_password
    
    validates :password , presence: true,
                          length:{ minimum:6}
end
