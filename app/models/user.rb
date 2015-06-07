class User < ActiveRecord::Base

    before_save { self.email = email.downcase } ### 必ず小文字として保存。これはDBが大文字小文字をよきにはからってくれるかは分からないから

    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    ###{case_sensitive: false}大文字小文字をくべつしない
    ### "user@example.com"と"USER@EXAMPLE.COM"は同じメールアドレスと判断するってこと

    has_secure_password
    validates :password, length: { minimum: 6 }
end
