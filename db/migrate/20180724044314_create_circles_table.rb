class CreateCirclesTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:circles) do |t|
      t.column(:circle_name, :string)
      t.timestamps
    end
  end
end
