class Post < ApplicationRecord
  belongs_to :user, class_name: "RubyAuthMetamask::User", foreign_key: "user_id"
end
