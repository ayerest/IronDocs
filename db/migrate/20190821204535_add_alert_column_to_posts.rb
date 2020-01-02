class AddAlertColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :alert_date, :date
  end
end
