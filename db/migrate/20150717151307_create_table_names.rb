class CreateTableNames < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.column :name, :string

    	t.timestamps
    end

    create_table :experiences do |t|
    	t.column :description, :string
    	t.column :skill_id, :integer

    	t.timestamps
    end
  end
end
