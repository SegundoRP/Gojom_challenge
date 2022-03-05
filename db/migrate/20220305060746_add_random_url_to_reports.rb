class AddRandomUrlToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :random_url, :string
  end
end
