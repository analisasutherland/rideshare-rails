class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :phone_num

      t.timestamps
    end
  end
end

# TODO: SET UP DATABASE FOR TRIPS

# TODO: SET UP MODELS (W/RELATIONSHIPS) FOR R, T, & P

# TODO: SET UP VIEWS AND CONTROLLERS(AS MANY CONTROLLERS AS MODELS

# TODO: SET UP THE ROUTES USE RESOURCES ABILITY TO SET ALL ROUTES, DOUBLE CHECK IF YOU NEED THEM ALL
