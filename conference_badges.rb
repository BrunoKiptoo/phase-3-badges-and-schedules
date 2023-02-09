# Write your code here.


def badge_maker(name)
    "Hello, my name is #{name}."
  end
  

    
    def batch_badge_creator(attendees)
        badges = []
        attendees.each do |attendee|
        badges << badge_maker(attendee)
    end
        badges
    end
    
    def assign_rooms(attendees)
        room_assignments = []
        attendees.each_with_index do |attendee, index|
        room_assignments << "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
    end
        room_assignments
    end


   
        
    # def batch_badge_creator(attendees)
    #     attendees.map { |attendee| badge_maker(attendee) }
    # end
        
    # def assign_rooms(attendees)
    #     attendees.each_with_index.map do |attendee, index|
    #     "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
    #     end
    # end
        
    def printer(attendees)
        badges = batch_badge_creator(attendees)
        room_assignments = assign_rooms(attendees)
        badges.each { |badge| puts badge }
        room_assignments.each { |room_assignment| puts room_assignment }
    end