<!---
   Copyright 2010 Mark Mandel
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at
       http://www.apache.org/licenses/LICENSE-2.0
   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
 --->

<cfcomponent hint="Exceptions for abstract methods" extends="Exception" output="false">

<cffunction name="init" hint="Constructor" access="public" returntype="void" output="false">
	<cfargument name="methodName" hint="the name of the method" type="string" required="Yes">
	<cfargument name="component" hint="the component that the method is attempting to be called on" type="any" required="Yes">

	<cfscript>
		super.init("This method is abstract and must be overwritten",
					"The method '#arguments.methodName#' in '#getMetaData(arguments.component).name#' is abstract and must be overwritten"
					);
	</cfscript>
</cffunction>

</cfcomponent>