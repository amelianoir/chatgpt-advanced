/**
 * @name Example Query
 * @description A basic example CodeQL query
 * @kind problem
 * @problem.severity warning
 * @id example/basic-query
 */

import javascript

from File f
where f.getExtension() = "js"
select f, "JavaScript file found"
