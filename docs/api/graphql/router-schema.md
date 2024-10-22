# Schema Types

<details>
  <summary><strong>Table of Contents</strong></summary>

  * [Query](#query)
  * [Mutation](#mutation)
  * [Objects](#objects)
    * [Action](#action)
    * [ActionResponse](#actionresponse)
    * [Condition](#condition)
    * [ConditionResponse](#conditionresponse)
    * [DeleteResponse](#deleteresponse)
    * [Device](#device)
    * [Route](#route)
    * [RouteResponse](#routeresponse)
  * [Inputs](#inputs)
    * [ActionCreateRequest](#actioncreaterequest)
    * [ActionUpdateRequest](#actionupdaterequest)
    * [ConditionCreateRequest](#conditioncreaterequest)
    * [ConditionUpdateRequest](#conditionupdaterequest)
    * [DeviceInput](#deviceinput)
    * [RouteCreateRequest](#routecreaterequest)
    * [RouteUpdateRequest](#routeupdaterequest)
  * [Enums](#enums)
    * [ActionEnableStatus](#actionenablestatus)
    * [ActionStopConditionType](#actionstopconditiontype)
    * [ActionType](#actiontype)
    * [SeverityType](#severitytype)
  * [Scalars](#scalars)
    * [Boolean](#boolean)
    * [ID](#id)
    * [Int](#int)
    * [JSON](#json)
    * [String](#string)

</details>

## Query
<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>Condition</strong></td>
<td valign="top">[<a href="#condition">Condition</a>!]</td>
<td>

List conditions

Equivalent to GET /conditions

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Get by condition ID

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">name</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Get by condition name

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Limit the number of returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Offset the returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Sort in ascending/descending order on a chosen field, for example: desc(name), asc(name). If asc/desc is not provided, defaults to ascending.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>Action</strong></td>
<td valign="top">[<a href="#action">Action</a>!]</td>
<td>

List actions

Equivalent to GET /actions

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Get by action ID

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">name</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Get by action name

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Limit the number of returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Offset the returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Sort in ascending/descending order on a chosen field, for example: desc(name), asc(name). If asc/desc is not provided, defaults to ascending.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>Route</strong></td>
<td valign="top">[<a href="#route">Route</a>!]</td>
<td>

List routes

Equivalent to GET /routes

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Get by route ID

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">name</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Get by route name

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">conditionId</td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Get by condition ID

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">actionId</td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Get by action ID

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Limit the number of returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Offset the returned results

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Sort in ascending/descending order on a chosen field, for example: desc(name), asc(name). If asc/desc is not provided, defaults to ascending.

</td>
</tr>
</tbody>
</table>

## Mutation
<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>ConditionCreate</strong></td>
<td valign="top"><a href="#conditionresponse">ConditionResponse</a>!</td>
<td>

Create a condition

Equivalent to POST /condition

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#conditioncreaterequest">ConditionCreateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ConditionUpdate</strong></td>
<td valign="top"><a href="#conditionresponse">ConditionResponse</a>!</td>
<td>

Update a condition

Equivalent to PATCH /condition

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#conditionupdaterequest">ConditionUpdateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ConditionDelete</strong></td>
<td valign="top"><a href="#deleteresponse">DeleteResponse</a></td>
<td>

delete a condition

Equivalent to DELETE /condition

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ActionCreate</strong></td>
<td valign="top"><a href="#actionresponse">ActionResponse</a>!</td>
<td>

Create an action

Equivalent to POST /action

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#actioncreaterequest">ActionCreateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ActionUpdate</strong></td>
<td valign="top"><a href="#actionresponse">ActionResponse</a>!</td>
<td>

Update an action

Equivalent to PATCH /action

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

action ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#actionupdaterequest">ActionUpdateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ActionDelete</strong></td>
<td valign="top"><a href="#deleteresponse">DeleteResponse</a></td>
<td>

Delete an action

Equivalent to DELETE /action

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

action ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>RouteCreate</strong></td>
<td valign="top"><a href="#routeresponse">RouteResponse</a>!</td>
<td>

Create a route

Equivalent to POST /route

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#routecreaterequest">RouteCreateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>RouteUpdate</strong></td>
<td valign="top"><a href="#routeresponse">RouteResponse</a>!</td>
<td>

Update a route

Equivalent to PATCH /route

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Route ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#routeupdaterequest">RouteUpdateRequest</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>RouteDelete</strong></td>
<td valign="top"><a href="#deleteresponse">DeleteResponse</a></td>
<td>

Delete a route

Equivalent to DELETE /route

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Route ID - single, no wildcards

</td>
</tr>
</tbody>
</table>

## Objects

### Action

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

the action ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

the action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional  description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#actiontype">ActionType</a>!</td>
<td>

Action types 

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>config</strong></td>
<td valign="top"><a href="#json">JSON</a></td>
<td>

Action configuration (in JSON format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#actionenablestatus">ActionEnableStatus</a></td>
<td>

Action trigger mode

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stopConditionType</strong></td>
<td valign="top"><a href="#actionstopconditiontype">ActionStopConditionType</a></td>
<td>

stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the length of time (in seconds) the alarm output will be active

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
</tbody>
</table>

### ActionResponse

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>error</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>action</strong></td>
<td valign="top"><a href="#action">Action</a></td>
<td></td>
</tr>
</tbody>
</table>

### Condition

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

the condition ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>devices</strong></td>
<td valign="top">[<a href="#device">Device</a>!]</td>
<td>

devices details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td>

alarm severities

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
</tbody>
</table>

### ConditionResponse

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>error</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#condition">Condition</a></td>
<td></td>
</tr>
</tbody>
</table>

### DeleteResponse

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>error</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

### Device

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>address</strong></td>
<td valign="top"><a href="#id">ID</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>mode</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>codeNumber</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>version</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>group</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

### Route

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

the route ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

the route name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#condition">Condition</a>!</td>
<td>

associated condition to filter alarms based on devices and alarm severity

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>actions</strong></td>
<td valign="top">[<a href="#action">Action</a>!]</td>
<td>

associated actions to where to route the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

unix timestamp

</td>
</tr>
</tbody>
</table>

### RouteResponse

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>error</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>route</strong></td>
<td valign="top"><a href="#route">Route</a></td>
<td></td>
</tr>
</tbody>
</table>

## Inputs

### ActionCreateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

the action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional  description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#actiontype">ActionType</a>!</td>
<td>

Action types 

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>config</strong></td>
<td valign="top"><a href="#json">JSON</a></td>
<td>

Action configuration (in JSON format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#actionenablestatus">ActionEnableStatus</a>!</td>
<td>

Action trigger mode

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stopConditionType</strong></td>
<td valign="top"><a href="#actionstopconditiontype">ActionStopConditionType</a></td>
<td>

stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the length of time (in seconds) the alarm output will be active

</td>
</tr>
</tbody>
</table>

### ActionUpdateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

the action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional  description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#actiontype">ActionType</a></td>
<td>

Action types 

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>config</strong></td>
<td valign="top"><a href="#json">JSON</a></td>
<td>

Action configuration (in JSON format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#actionenablestatus">ActionEnableStatus</a></td>
<td>

Action trigger mode

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stopConditionType</strong></td>
<td valign="top"><a href="#actionstopconditiontype">ActionStopConditionType</a></td>
<td>

stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the length of time (in seconds) the alarm output will be active

</td>
</tr>
</tbody>
</table>

### ConditionCreateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>devices</strong></td>
<td valign="top">[<a href="#deviceinput">DeviceInput</a>!]</td>
<td>

devices details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td></td>
</tr>
</tbody>
</table>

### ConditionUpdateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>devices</strong></td>
<td valign="top">[<a href="#deviceinput">DeviceInput</a>!]</td>
<td>

devices details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td>

alarm severities

</td>
</tr>
</tbody>
</table>

### DeviceInput

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>address</strong></td>
<td valign="top"><a href="#id">ID</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>mode</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>codeNumber</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>version</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>group</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

### RouteCreateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

the route name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

optional description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>conditionId</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

the condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>actionIds</strong></td>
<td valign="top">[<a href="#id">ID</a>!]</td>
<td>

associated actions IDs to where to route the alarm

</td>
</tr>
</tbody>
</table>

### RouteUpdateRequest

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

the route name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>conditionId</strong></td>
<td valign="top"><a href="#id">ID</a></td>
<td>

the condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

the number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>actionIds</strong></td>
<td valign="top">[<a href="#id">ID</a>!]</td>
<td>

associated actions IDs to where to route the alarm

</td>
</tr>
</tbody>
</table>

## Enums

### ActionEnableStatus

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>ANYTIME</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ONSCHEDULE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>OFFSCHEDULE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>DISABLED</strong></td>
<td></td>
</tr>
</tbody>
</table>

### ActionStopConditionType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>NONE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ONTIME</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ONACKED</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ONCLEARED</strong></td>
<td></td>
</tr>
</tbody>
</table>

### ActionType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>EMAIL</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ALSENSE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>MQTT</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>RELAY</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>VARIABLE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>TELEGRAM</strong></td>
<td></td>
</tr>
</tbody>
</table>

### SeverityType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>CRITICAL</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>HIGH</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>MEDIUM</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>LOW</strong></td>
<td></td>
</tr>
</tbody>
</table>

## Scalars

### Boolean

The `Boolean` scalar type represents `true` or `false`.

### ID

The `ID` scalar type represents a unique identifier, often used to refetch an object or as key for a cache. The ID type appears in a JSON response as a String; however, it is not intended to be human-readable. When expected as an input type, any string (such as `"4"`) or integer (such as `4`) input value will be accepted as an ID.

### Int

The `Int` scalar type represents non-fractional signed whole numeric values. Int can represent values between -(2^31) and 2^31 - 1.

### JSON

### String

The `String` scalar type represents textual data, represented as UTF-8 character sequences. The String type is most often used by GraphQL to represent free-form human-readable text.

