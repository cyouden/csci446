Order.transaction do
  (1..100).each do |i|
    Order.create(:name => "Customer #{i}", :address => "#{1} Main Street", :email => "customer-#{i}@example.com", :pay_type => "Check")
  end
end