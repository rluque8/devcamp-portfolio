 module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user 
    #Super does that whenever you override a method,
    #doesn´t change behavior of overrided method
  end

  def guest_user
    guest = GuestUser.new
    guest.name ="Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest #In order to return the entire Object guest
    
    #OpenStruct.new(name: "Guest User", 
    #              first_name: "Guest",
    #             last_name:"User", 
    #             email:"guest@example.com")
  end
end