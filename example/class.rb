$ruby_code_version=1.0

class Customer

	@@no_of_customers=0
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	
	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"
	end
	
	def total_no_of_customers()
		@@no_of_customers+=1
		puts  "Total number of customers: #@@no_of_customers"
	end
	
	def print_versoion()
		puts "current version is #$ruby_code_version"
	end
end

customer=Customer.new(1,"Marry","Beijing")
customer.display_details
customer.print_versoion
