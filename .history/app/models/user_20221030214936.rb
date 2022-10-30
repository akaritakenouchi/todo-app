class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_ma

      # def self.generate
      #     adjectives = ['Ancient', 'Creative', 'Dangerous', 'Effective', 'Flying', 'Gilded']
      #     nouns = ['Highway', 'Intern', 'Jackhammer', 'Lion', 'Master']
      #     number = rand.to_s[2..4] //3桁のランダム数字
      #     username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
      #     create(username: username)
      # end
end
