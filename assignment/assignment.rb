require_relative '../config/environment'

# Use Active Record Model methods to implement the following methods.
class Assignment

  #
  # Insert rows in DB
  #
  def create_user(params)
      user = User.create(params)
  end

  def create_todolist(params)
      todolist = TodoList.create(list_name: params[:name], list_due_date: params[:due_date])
  end

  #
  # Retrieve paginated results from DB
  #
  def find_allusers(offset, limit)
      User.offset(offset).limit(limit).all.order(:updated_at)
  end

  def find_alllists(offset, limit)
      TodoList.offset(offset).limit(limit).all.order(list_due_date: :desc)
  end

  #
  # Query DB with exact match
  #
  def find_user_byname(username)
      User.where(username: username)
  end 

  def find_todolist_byname(name)
      TodoList.where(list_name: name)
  end     

  #
  # Get rows from DB by PK
  #
  def get_user_byid(id)
      User.find(id)
  end

  def get_todolist_byid(id)
      # accept an id input parameter
      # use the TodoList Model class to get the TodoList associated with the `id` primary key
      # return the TodoList instance that matches the provided id
      TodoList.find(id)
  end

  #
  # Update rows in DB
  #
  def update_password(id, password_digest)
      # accept an id and password_digest input parameters
      # use the User Model class to update the `password_digest` for the User associated with the id primary key
      # (no return is required)
  end

  def update_listname(id, name)
      # accept an id and name input parameters
      # use the TodoList Model class to update the `list_name` for the TodoList associated with id primary key 
      # (no return is required)
  end 

  #
  # Delete rows from DB
  #
  def delete_user(id)
      # accept an id input parameter
      # use the User Model class to remove the User associated with the `id` primary key from the database
      # (no return is required)
  end 

  def delete_todolist(id)
      # accept an id input parameter
      # use the TodoList Model class to remove the TodoList associated with the `id` primary key.
      # (no return is required)
  end
end
a = Assignment.new

#h_list = {list_name: "john list", list_due_date: "2015-11-12"}
#h_list2 = {name: "johnlist2", due_date: "2015-11-13"}
#a.create_user({username: "jane", password_digest: "qwerty"})
#a.create_todolist(h_list)
#a.create_todolist(h_list2)
#puts a.find_allusers(5,5)
#puts a.find_alllists(3,2)
#puts a.find_todolist_byname("johnlist2")
#puts a.get_user_byid(94)
puts a.get_todolist_byid(67)