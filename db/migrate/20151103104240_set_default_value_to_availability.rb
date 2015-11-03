class SetDefaultValueToAvailability < ActiveRecord::Migration
  def change
    change_column :spaces, :availability, :boolean, default: true
  end
end
