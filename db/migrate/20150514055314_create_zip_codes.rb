class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
      t.integer :zipcode
      t.integer :aetna_health
      t.integer :aetna_vision
      t.integer :aetna_dental
      t.integer :aetna_life
      t.integer :anthem_health
      t.integer :anthem_vision
      t.integer :anthem_dental
      t.integer :anthem_life
      t.integer :blue_shield_health
      t.integer :blue_shield_vision
      t.integer :blue_shield_dental
      t.integer :blue_shield_life
      t.integer :health_net_health
      t.integer :health_net_vision
      t.integer :health_net_dental
      t.integer :health_net_life
      t.integer :kaiser_health
      t.integer :kaiser_vision
      t.integer :kaiser_dental
      t.integer :kaiser_life
      t.integer :united_health
      t.integer :united_vision
      t.integer :united_dental
      t.integer :united_life

      t.timestamps
    end
  end
end
