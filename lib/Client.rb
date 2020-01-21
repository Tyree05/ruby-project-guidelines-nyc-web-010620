class Client < ActiveRecord::Base
    def change
        create_table :clients do |t|
          t.name :name
          t. :description
     
          t.timestamps
        end
      end
    end