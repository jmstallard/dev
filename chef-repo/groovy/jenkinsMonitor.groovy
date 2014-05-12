import groovy.json.JsonSlurper
 
assert args && args.size() == 2
def urls = args[0].split(',')
def expectedVersion = args[1]
urls.each { url ->
    println "examining url $url"
    def json = new JsonSlurper().parseText(url.toURL().text)
 
    json.jobs.each {
        try
        {
            def job = new JsonSlurper().parseText("${it.url}/api/json?depth=1".toURL().text)
            if (!job.builds[0].changeSet.revisions[0].module.endsWith(expectedVersion))
            {
                println "$it.url fails!"
            }
            else
            {
                println "$it.url passes!"
            }
        }
        catch (e)
        {
            println "Exception thrown processing $it.url : $e"
        }
    }
}
