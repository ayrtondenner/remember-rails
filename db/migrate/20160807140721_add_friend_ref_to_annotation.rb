class AddFriendRefToAnnotation < ActiveRecord::Migration
  def change
    add_reference :annotations, :friend, index: true, foreign_key: true
  end
end
