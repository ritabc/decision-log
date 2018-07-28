class CreateDecisionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:decisions) do |t|
      t.belongs_to(:circle, index: true)
      t.column(:decision_name, :string)
      t.column(:decision_date, :date)
      t.column(:description, :string)
      t.column(:review_by_date, :date)
      t.column(:supp_doc_one_type, :string)
      t.column(:supp_doc_one_link, :string)
      t.column(:supp_doc_two_type, :string)
      t.column(:supp_doc_two_link, :string)
      t.timestamps
    end
  end
end
