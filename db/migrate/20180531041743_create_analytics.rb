class CreateAnalytics < ActiveRecord::Migration[5.0]
  def change
    create_table :analytics do |t|
      t.string :ip_address
      t.text :referrer
      t.string :user_agent

      t.timestamps
    end
  end
end
