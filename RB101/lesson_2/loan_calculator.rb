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
puts MESSAGES.inspect
# apr
# loan
# length
# monthly_payment
# monthly_rate