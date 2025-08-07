/**
 * @name Find all method calls
 * @description This query finds all method calls in the codebase
 * @kind problem
 * @problem.severity warning
 * @id example/find-method-calls
 * @tags custom-query
 */

// Choose one of the following imports based on the language you're analyzing:
import javascript
// import java
// import csharp

import OpenAI from "openai";
const client = new OpenAI();

const response = await client.responses.create({
    model: "gpt-4.1",
    input: "Write a one-sentence bedtime story about a unicorn."
});

console.log(response.output_text);
import { MethodCall } from "codeql";
import { Method } from "codeql";    


from MethodCall call in MethodCall::all() 
where call.getMethod().getName() = "someMethodName" // Replace with the method name you want to find
select call, "Found a method call to 'someMethodName'." 
// Note: Replace "someMethodName" with the actual method name you want to search for.   
// This query will find all calls to the specified method in the codebase.
// You can modify the query to search for different methods or add more conditions as needed.
// Ensure you have the correct imports and context for your specific language analysis.
// This is a basic example; you can expand it to include more complex logic or additional filters
// based on your requirements.
// For example, you could filter by the method's parameters, return type, or the class
// it belongs to, depending on what you're looking for in your codebase.            

