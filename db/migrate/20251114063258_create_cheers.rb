class CreateCheers < ActiveRecord::Migration[8.1]
  def change
    create_table :cheers do |t|
      t.string :cheer

      t.timestamps
    end
  end
end
