# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# ben_balance = blockchain[0]["amount"] - blockchain[2]["amount"] - blockchain[5]["amount"] + blockchain[6]["amount"]
# puts "Ben's KelloggCoin balance is #{ben_balance}"

# brian_balance = blockchain[1]["amount"] - blockchain[3]["amount"]
# puts "Brian's KelloggCoin balance is #{brian_balance}"

# evan_balance = blockchain[2]["amount"] - blockchain[4]["amount"] + blockchain[7]["amount"]
# puts "Evan's's KelloggCoin balance is #{evan_balance}"

# anthony_balance = blockchain[3]["amount"] + blockchain[4]["amount"] + blockchain[5]["amount"] - blockchain[6]["amount"] - blockchain[7]["amount"]
# puts "Anthony's's KelloggCoin balance is #{anthony_balance}"

ben_balance = []
ben_index = 0

loop do 
  from_ben = if blockchain[ben_index]["from_user"] == "ben" then
    ben_balance.push (blockchain[ben_index]["amount"])*-1
  end
  to_ben = if blockchain[ben_index]["to_user"] == "ben" then
    ben_balance.push (blockchain[ben_index]["amount"])
  end
  ben_index += 1
  break if ben_index == blockchain.length
end

brian_balance = []
brian_index = 0

loop do 
  from_brian = if blockchain[brian_index]["from_user"] == "brian" then
    brian_balance.push (blockchain[brian_index]["amount"])*-1
  end
  to_brian = if blockchain[brian_index]["to_user"] == "brian" then
    brian_balance.push (blockchain[brian_index]["amount"])
  end
  brian_index += 1
  break if brian_index == blockchain.length
end

evan_balance = []
evan_index = 0

loop do 
  from_evan = if blockchain[evan_index]["from_user"] == "evan" then
    evan_balance.push (blockchain[evan_index]["amount"])*-1
  end
  to_evan = if blockchain[evan_index]["to_user"] == "evan" then
    evan_balance.push (blockchain[evan_index]["amount"])
  end
  evan_index += 1
  break if evan_index == blockchain.length
end

anthony_balance = []
anthony_index = 0

loop do 
  from_anthony = if blockchain[anthony_index]["from_user"] == "anthony" then
    anthony_balance.push (blockchain[anthony_index]["amount"])*-1
  end
  to_anthony = if blockchain[anthony_index]["to_user"] == "anthony" then
    anthony_balance.push (blockchain[anthony_index]["amount"])
  end
  anthony_index += 1
  break if anthony_index == blockchain.length
end

puts "Ben's KelloggCoin balance is #{ben_balance.sum}"
puts "Brian's KelloggCoin balance is #{brian_balance.sum}"
puts "Evan's KelloggCoin balance is #{evan_balance.sum}"
puts "Anthony's KelloggCoin balance is #{anthony_balance.sum}"


