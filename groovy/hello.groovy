import groovy.json.JsonSlurper

println "Hello world"
def s = "Here we go"
println "$s"

def cmd = """curl http://headers.jsontest.com"""
def proc = cmd.execute()
proc.waitFor()
def myHeader = "${proc.in.text}"
println "${myHeader}"
println "$myHeader"
println myHeader

 def stuff = new groovy.json.JsonSlurper().parseText(myHeader)
//def stuff = new groovy.json.JsonSlurper().parseText('{"person":{"name":"Guillaume","age":33,"pets":["dog","cat"]}}')
println "wow, that took too long!"

println "stuff.Header =" + stuff.Host
