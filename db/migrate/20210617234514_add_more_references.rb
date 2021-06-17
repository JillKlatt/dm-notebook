class AddMoreReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :user, foreign_key: true
    add_reference :characters, :race, foreign_key: true
    add_reference :characters, :category, foreign_key: true
    add_reference :weapons, :user, foreign_key: true


  end
end
