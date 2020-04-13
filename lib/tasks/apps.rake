require 'csv'
namespace :apps do
  desc "pull app data into db"
  task seed_apps: :environment do

    #drop the old table data before importing the new stuff
    App.destroy_all

    CSV.foreach("lib/assets/AppleStorefile1.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      App.create!(
      app_ID: row[0].to_i,
      app_name: row[1],
      currency: row[2],
      price: row[3].to_d,
      version: row[4],
      genre: row[5]
      
      )
      
    end 
    
  end 
      
     desc "pull description information into db"
     task seed_descs: :environment do

    #drop the old table data before importing the new stuff
    Desc.destroy_all

    CSV.foreach("lib/assets/AppleDescfile2.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read
    
      #create new model instances with the data
      Desc.create!(
      appdescid: row[0].to_i,
      rating_count: row[1].to_i,
      user_rating: row[2].to_i,
      age_rec: row[3],
      desc: row[4]
      
      )
      
    end
     end 
      end 
     