def badge_maker(name)
    badge = "Hello, my name is #{name}."
    return badge
end

def batch_badge_creator(attendees)
    badges = []
    attendees.each do |name|
        badges.push(badge_maker(name))
    end
    badges
end

def assign_rooms(attendees)
    rooms = []
    attendees.each_with_index{|name,index|
        rooms.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
    } 
     rooms
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end
    assign_rooms(attendees).each do |room|
        puts room
    end
end

# batch_badge_creator(["KJ", "Shannon", "Marty", "Lola", "Jasmine"])
# assign_rooms(["KJ", "Shannon", "Marty", "Lola", "Jasmine"])
# printer(["KJ", "Shannon", "Marty", "Lola", "Jasmine"])