module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user 
    #Super does that whenever you override a method,
    #doesn´t change behavior of overrided method
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest",
                  last_name:"User", 
                  email:"guest@example.com")
  end
end