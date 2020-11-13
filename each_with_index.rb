clients = ["un", "deux", "trois"]
clients.each_with_index do |client, index|
    puts "Bonjour vous êtes le client #{index +1 } #{client}"
end