namespace :export do
  desc "Export Data" 
  task :export_to_seeds => :environment do
    Location.all.each do |location| 
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = location
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Location.create!(#{serialized})"
    end
    Hour.all.each do |hour|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = hour
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Hour.create!(#{serialized})"
    end
    Image.all.each do |image|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = image
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Image.create!(#{serialized})"
    end
    Pharmacy.all.each do |pharmacy|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = pharmacy
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Pharmacy.create!(#{serialized})"
    end
    Specialty.all.each do |specialty|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = specialty
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Specialty.create!(#{serialized})"
    end
    Doctor.all.each do |doctor|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = doctor
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Doctor.create!(#{serialized})"
    end
    Hospital.all.each do |hospital|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = hospital
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Hospital.create!(#{serialized})"
    end
    HospitalHasSpecialty.all.each do |hospital_specialty|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = hospital_specialty
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "HospitalHasSpecialty.create!(#{serialized})"
    end
    Service.all.each do |service|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = service
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Service.create!(#{serialized})"
    end
    Review.all.each do |review|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = review
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "Review.create!(#{serialized})"
    end
    DoctorsSpecialty.all.each do |doctor_specialty|
      excluded_keys = ['created_at', 'updated_at'] 
      serialized = doctor_specialty
        .serializable_hash
        .delete_if{|key,value| excluded_keys.include?(key)} 
      puts "DoctorsSpecialty.create!(#{serialized})"
    end
  end
end