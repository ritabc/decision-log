class AddIncorporatedColumn < ActiveRecord::Migration[5.2]
  def change
    add_column(:decisions, :incorporated, :boolean)
  end
end
