import groovy.json.*

def localMethod() {
def cmd = """curl http://headers.jsontest.com"""
def proc = cmd.execute()
proc.waitFor()
def myHeader = ${proc.in.text}
//def stuff = new groovy.json.JsonSlurper()parseText($myHeader)

//println "stuff host= $stuff.Host"
}

def l = localMethod()
println "executing now..."
l()
