require 'date'
class Product
 attr_reader :products
 
  def initialize()
      $products = [
        {:name => 'bicycle', :seller => 'alex', :price => 3000, category: 'vehicle'},
        {:name => 'car', :seller => 'meena', :price => 250000, category: 'vehicle'},
        {:name => 'jeans', :seller => 'prabhu', :price => 1800, category: 'clothes'},
        {:name => 'shirt', :seller => 'prabhu', :price => 700, category: 'clothes'},
        {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, category: 'clothes' },
        {:name => 't-shirt', :seller => 'prabhu', :price => 600, category: 'clothes'},
        {:name => 'capri', :seller => 'prabhu', :price => 300, category: 'clothes'},
        {:name => 'bike', :seller => 'meena', :price => 60000, category: 'vehicle'},
        {:name => 'scooter', :seller => 'meena', :price => 25000, category: 'vehicle'},
        {:name => 'maruti', :seller => 'meena', :price => 400000, category: 'vehicle'},
        {:name => 'auto', :seller => 'meena', :price => 100000, category: 'vehicle'},
        {:name => 'sweter', :seller => 'prabhu', :price => 1200, category: 'clothes'},
        {:name => 'jacket', :seller => 'prabhu', :price => 3500, category: 'clothes'},
        {:name => 'hat', :seller => 'prabhu', :price => 400, category: 'clothes'},
        {:name => 'doll', :seller => 'alex', :price => 350, category: 'toys'},
        {:name => 'toy car', :seller => 'alex', :price => 250, category: 'toys'},
        {:name => 'bat', :seller => 'alex', :price => 700, category: 'toys'},
        {:name => 'ball', :seller => 'alex', :price => 20, category: 'toys'},
        {:name => 'batman', :seller => 'alex', :price => 300, category: 'toys'},
        {:name => 'barbi doll', :seller => 'alex', :price => 3000, category: 'toys'}
       ]
    end
    def return_list_of_all_products
       product_array = $products.collect{|i| i.to_a}
       return product_array
    end
end

class User
 attr_reader :users
   def initialize
     $users = [
        {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'},
        {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'},
        {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role => 'seller'},
        {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'},
        {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
       ]
   end
   
   def return_list_of_all_users
       user_array = $users.collect{|i| i.to_a}
       return user_array
   end

   def get_fullname
      $users.each do |i|
         puts "#{i[:first_name]} "+"#{i[:last_name]}"
      end
   end
   
   def return_specific_user(list)
      specific_user = Array.new
       for i in 0..list.length-1 do
           if list[i][:first_name] == "alex"
              puts "#{list[i]}"
              #specific_user << ("#{list[i]}")
              #puts specific_user
           end
       end   
   end

  #def get_age(dob)
   #  birth_day = dob[:date_of_birth]
   #  current_day = Date.today.year
   # age = current_day - birth_day.to_i
   #  puts age
   #end

end

class Buyer < User
   def print_fullname_of_buyer(list)
      for i in 0..list.length-1 do
           if list[i][:role] == "buyer"
              puts"#{list[i][:first_name]} "+"#{list[i][:last_name]}"
           end
       end
   end
   def return_buyer_only(list)
        buy = Array.new
      for i in 0..list.length-1 do
           if list[i][:role] == "buyer"
             buy << ("#{list[i]}")
             puts buy
           end
       end   
    end 
end

class Seller < User
    def return_seller_only(list)
        sell = Array.new
        for i in 0..list.length-1 do
           if list[i][:role] == "seller"
               puts "#{list[i]}"
               #sell << ("#{list[i]}")
               #puts sell
           end
       end 
   end
end
    
object = User.new
object2 = Product.new
buyer = Buyer.new
seller = Seller.new
puts"--------------------------------------"
puts "---------list of users---------------"
pp object.return_list_of_all_users
puts"--------------------------------------"
puts "-------list of products--------------"
pp object2.return_list_of_all_products
puts "-------------------------------------"
puts"-------Full Names of all Users--------"
object.get_fullname
puts"--------------------------------------"
puts"-------Full Names of only Buyers------"
buyer.print_fullname_of_buyer($users)
puts"--------------------------------------"
puts"---------list of only Buyers----------"
buyer.return_buyer_only($users)
puts"--------------------------------------"
puts"---------list of only Sellers---------"
seller.return_seller_only($users)
puts"--------------------------------------"
puts"----------list of only User with alex first name------"
object.return_specific_user($users)
puts"------------------------------------------------------"