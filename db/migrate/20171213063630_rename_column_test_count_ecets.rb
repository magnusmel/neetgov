class RenameColumnTestCountEcets < ActiveRecord::Migration[5.1]
  def change
  	rename_column :ecets, :test_count, :testcount
  	rename_column :ecets, :type, :imageyes
  	rename_column :ecets, :que_image, :questionimage
  end
end
