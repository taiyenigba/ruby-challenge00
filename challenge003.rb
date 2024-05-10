# Author: Aiyenigba Toluwanimi

# Constants for tax rates
GST_RATE = 0.05
PST_RATE = 0.07

# Ask the user to enter the subtotal
print "Enter the subtotal: $"
sub_total = gets.chomp.to_f

# Calculate taxes
gst_amount = sub_total * GST_RATE
pst_amount = sub_total * PST_RATE

# Calculate grand total
grand_total = sub_total + gst_amount + pst_amount

# Output to the screen
puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst_amount.round(2)} - #{(PST_RATE * 100).round}%"
puts "GST: $#{gst_amount.round(2)} - #{(GST_RATE * 100).round}%"
puts "Grand Total: $#{grand_total.round(2)}"

# Determine message based on grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end
