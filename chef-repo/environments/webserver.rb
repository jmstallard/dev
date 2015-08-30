name "webserver"
description "An apache server"
run_list "recipe[iptables]","recipe[apache2]"
override_attributes({
  "starter_name" => "James Stallard",
})
