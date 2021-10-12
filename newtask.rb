$users = [
        {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'},
        {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'},
        {:first_name => 'Meena', :last_name => 'Pallanipppan',  :date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role => 'seller'},
        {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth => '11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'},
        {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
       ]
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
class Product
attr_reader :name, :seller, :price, :category
  def initialize(name, seller, price, category)
      @name = name
      @seller = seller
      @price = price
      @category = category
  end
end

def return_list_of_all_products
   plist = Array.new
   for i in 0..$users.length-1
     plist << Product.new($products[i][:name], $products[i][:seller], $products[i][:price], $products[i][:category])
   end
   puts plist.inspect
end








   class User
     attr_reader :first_name, :last_name, :date_of_birth, :address, :role
      def initialize(first_name, last_name, date_of_birth, address, role)
         @first_name = first_name
         @last_name = last_name
         @date_of_birth = date_of_birth
         @address = address
         @role = role
      end
   end   
  
   def return_list_of_all_users
      list = Array.new
      for i in 0..$users.length-1
        list << User.new($users[i][:first_name], $users[i][:last_name], $users[i][:date_of_birth], $users[i][:address], $users[i][:role])
      end
      puts list.inspect
   end
puts
return_list_of_all_users
puts"---------------------------"
return_list_of_all_products