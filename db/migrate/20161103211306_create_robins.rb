class CreateRobins < ActiveRecord::Migration[5.0]
  def change
    create_table :robins do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
