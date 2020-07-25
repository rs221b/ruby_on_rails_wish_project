module LoginHelper
    def self.start(name, contact, wish)
        Wish.create!(name: name, contact: contact, wish: wish)
        count = Wish.last.id
        {name: name, count: count}
    end
end
