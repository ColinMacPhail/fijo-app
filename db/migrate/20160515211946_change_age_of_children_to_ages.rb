class ChangeAgeOfChildrenToAges < ActiveRecord::Migration
  def change
    remove_column :profiles, :age_of_children, :integer
    add_column :profiles, :ages_of_children, :string
  end
end
