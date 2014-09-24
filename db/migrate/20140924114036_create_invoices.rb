class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :user, index: true
      t.date :rdate
      t.string :route
      t.decimal :rstopprice
      t.integer :rstop
      t.decimal :pstopprice
      t.integer :pstop
      t.decimal :bonus
      t.time :startinvoice
      t.time :endinvoice

      t.timestamps
    end
  end
end
