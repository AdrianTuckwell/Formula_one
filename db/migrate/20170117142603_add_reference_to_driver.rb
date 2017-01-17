class AddReferenceToDriver < ActiveRecord::Migration
  def change
    add_reference :drivers, :team, index: true, foreign_key: true
  end
end
