class CreateHelpdesks < ActiveRecord::Migration[5.1]
  def change
    create_table :helpdesks do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
