class Annotation < ActiveRecord::Base
  belongs_to :friend
  
  # validates :body, presence: true
  
  def show_body
    if self.body.blank?
      "<b><i><h2>Item vazio!</h2></i></b>".html_safe
    else
      self.body
    end
  end
  
  def show_friend_name
    if self.friend.nil?
      "<b><i><h4>Item sem amigo!</h4></i></b>".html_safe
    else
      self.friend.name
    end
  end
end
