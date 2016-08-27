class Annotation < ActiveRecord::Base
  belongs_to :friend
  
  # validates :body, presence: true
  
  def body_blank
    if self.body.blank?
      "<b><i><h2>Item vazio!</h2></i></b>".html_safe
    else
      self.body
    end
  end
end
