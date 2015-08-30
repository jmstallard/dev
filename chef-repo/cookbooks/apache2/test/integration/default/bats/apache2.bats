

@test "Apace2 is up and running" {
run service httpd status
echo "$output" |grep -Eq 'httpd.*is running.*'
}

@test "Server accepts HTTP requests" {
echo "GET / HTTP/1.1" | nc localhost 80
}

@test "Server accepts HTTP requests" {
echo "GET / HTTP/1.1" | nc localhost 81
}
