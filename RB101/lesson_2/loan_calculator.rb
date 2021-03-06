# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment
# You can use the following formula:

# Mortgage Calculator Formula

# Translated to Ruby, this is what the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')
# apr
# loan
# length
# monthly_payment
# monthly_rate
def duration_valid?(loan_length)
  loan_length > 0 && loan_length < 999
end

def apr_valid?(apr)
  apr > 0 && apr <= 20
end

def loan_amount_valid?(loan_amount)
  loan_amount > 0 && loan_amount < 500_000
end

puts(MESSAGES['intro'])
loan_amount = 0
loan_length = 0
apr = 0
until loan_amount_valid?(loan_amount)
  puts(MESSAGES['loan_text'])
  loan_amount = gets.to_i
end
until duration_valid?(loan_length)
  puts(MESSAGES['length_text'])
  loan_length = gets.to_i
end
until apr_valid?(apr)
  puts(MESSAGES['apr_text'])
  apr = (gets.to_f) * 0.01
end
monthly_rate = apr / 12
monthly_payment = (loan_amount *
                  (monthly_rate / 
                  (1 - (1 + monthly_rate)**
                  (-loan_length)))).round(2)
# puts apr
# puts monthly_rate
# puts monthly_payment
puts MESSAGES['monthly_payment_text'] + "#{monthly_payment.round(2)}."
# see also A: $#{format('%.2f', monthly_payment)}
total_paid = (monthly_payment * loan_length).round(2)
interest_paid = (total_paid - loan_amount).round(2)
puts "Total to be paid including interest is #{total_paid}."
puts "Total interest to be paid is #{interest_paid}."
