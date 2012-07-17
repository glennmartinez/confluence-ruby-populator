require 'xmlrpc/client'
#require 'names'
 
confluence = XMLRPC::Client.new2("http://localhost:8090/rpc/xmlrpc").proxy("confluence2")
token = confluence.login("admin", "admin")


# user = {
# "name" => user_name,
# "fullname" => full_name,
# "email" => email
# }

# confluence.addUser(token, user, user_name)



f = File.open('names.txt')
a = f.readlines

a.each do |names|

page_title = names

page = {
"space" => "SPACE",
"title" => page_title,
"content" => "some conent right here" 
}


confluence.storePage(token, page)

end

#puts s
space_name = "Glenn Space"
space_key = "SPACE"
description = "This is glenns space"


space = {

"name" => space_name,
"key" =>  space_key,
"description" => description

}

#page_title = s.random_element
page_title = "FirstPage2"
page_content = "This is the first page content"

# page = {
# "space" => space_key,
# "title" => page_title,
# "content" => page_content 
# }

# confluence.addSpace(token, space)

#confluence.storePage(token, page)

