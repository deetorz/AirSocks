class AddCoordinatesToSocks < ActiveRecord::Migration[6.1]
  def change
    add_column :socks, :address, :string
    add_column :socks, :latitude, :float
    add_column :socks, :longitude, :float
  end
end
