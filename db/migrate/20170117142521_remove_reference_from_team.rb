class RemoveReferenceFromTeam < ActiveRecord::Migration
  def change
    remove_reference :teams, :driver, index: true, foreign_key: true
  end
end
