# Schema Types

<details>
  <summary><strong>Table of Contents</strong></summary>

  * [Query](#query)
  * [Mutation](#mutation)
  * [Subscription](#subscription)
  * [Objects](#objects)
    * [Action](#action)
    * [ActionResponse](#actionresponse)
    * [ActionsResponse](#actionsresponse)
    * [Alarm](#alarm)
    * [AlarmState](#alarmstate)
    * [AlarmsResponse](#alarmsresponse)
    * [Condition](#condition)
    * [ConditionResponse](#conditionresponse)
    * [ConditionsResponse](#conditionsresponse)
    * [Metadata](#metadata)
    * [Route](#route)
    * [RouteResponse](#routeresponse)
    * [RoutesResponse](#routesresponse)
    * [StatesResponse](#statesresponse)
    * [Status](#status)
  * [Inputs](#inputs)
    * [ActionCreateRequest](#actioncreaterequest)
    * [ActionUpdateRequest](#actionupdaterequest)
    * [AlarmsFilter](#alarmsfilter)
    * [ConditionCreateRequest](#conditioncreaterequest)
    * [ConditionUpdateRequest](#conditionupdaterequest)
    * [RouteCreateRequest](#routecreaterequest)
    * [RouteUpdateRequest](#routeupdaterequest)
    * [StatesFilter](#statesfilter)
  * [Enums](#enums)
    * [ActionEnableStatus](#actionenablestatus)
    * [ActionStopConditionType](#actionstopconditiontype)
    * [ActionType](#actiontype)
    * [RoutingStatus](#routingstatus)
    * [SeverityType](#severitytype)
  * [Scalars](#scalars)
    * [Any](#any)
    * [Boolean](#boolean)
    * [Float](#float)
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
<td valign="top"><a href="#conditionsresponse">ConditionsResponse</a></td>
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
<td valign="top"><a href="#actionsresponse">ActionsResponse</a></td>
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
<td valign="top"><a href="#routesresponse">RoutesResponse</a></td>
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
<tr>
<td colspan="2" valign="top"><strong>Alarms</strong></td>
<td valign="top"><a href="#alarmsresponse">AlarmsResponse</a></td>
<td>

Retrieve all alarm in the system which have ever been active

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top">[<a href="#id">ID</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#alarmsfilter">AlarmsFilter</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>States</strong></td>
<td valign="top"><a href="#statesresponse">StatesResponse</a></td>
<td>

Retrieves all states in the system which have occurred and are still stored in system

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top">[<a href="#id">ID</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#statesfilter">StatesFilter</a></td>
<td></td>
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
<td valign="top"><a href="#status">Status</a></td>
<td>

Delete a condition

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
<td valign="top"><a href="#status">Status</a></td>
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
<td colspan="2" valign="top"><strong>ActionTest</strong></td>
<td valign="top"><a href="#actionresponse">ActionResponse</a></td>
<td>

Manually test an action

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
<td valign="top"><a href="#routeresponse">RouteResponse</a></td>
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
<td valign="top"><a href="#status">Status</a></td>
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
<tr>
<td colspan="2" valign="top"><strong>RouteActionAssociate</strong></td>
<td valign="top"><a href="#routeresponse">RouteResponse</a></td>
<td>

Associate an action with a route

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">actionId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">routeId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>RouteActionDissociate</strong></td>
<td valign="top"><a href="#routeresponse">RouteResponse</a></td>
<td>

Dissociate an action from a route

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">actionId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">routeId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>DisableAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Disable an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>EnableAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Enable an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>SuppressAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Suppress an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>UnsuppressAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Unsuppress an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ShelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Shelve an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>UnshelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Unshelve an alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>TimedShelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Shelve an alarm for a specific fixed time.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">shelvingTime</td>
<td valign="top"><a href="#float">Float</a>!</td>
<td>

Duration of time (ms) that the alarm should be shelved for

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>AddComment</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Add a comment to an alarm state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>AcknowledgeState</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Acknowledge an alarm state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ConfirmState</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Confirm an alarm state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>RemoveFromServiceAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Remove an alarm from an out of service state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>PlaceInServiceAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Place an alarm in an out of service state

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ResetAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Reset a latched alarm instance

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

ID of the alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">comment</td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

## Subscription
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
<td colspan="2" valign="top"><strong>StateUpdates</strong></td>
<td valign="top"><a href="#alarmstate">AlarmState</a>!</td>
<td></td>
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

The action ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

The action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional  description

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

Stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The length of time (in seconds) the alarm output will be active

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

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
<td colspan="2" valign="top"><strong>action</strong></td>
<td valign="top"><a href="#action">Action</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
</tbody>
</table>

### ActionsResponse

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
<td colspan="2" valign="top"><strong>actions</strong></td>
<td valign="top">[<a href="#action">Action</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>metadata</strong></td>
<td valign="top"><a href="#metadata">Metadata</a></td>
<td></td>
</tr>
</tbody>
</table>

### Alarm

Represents a complete alarm entity with its current state and history

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

Unique identifier for the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>currentState</strong></td>
<td valign="top"><a href="#alarmstate">AlarmState</a>!</td>
<td>

Current state of the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>previousStates</strong></td>
<td valign="top">[<a href="#alarmstate">AlarmState</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stateBranches</strong></td>
<td valign="top">[<a href="#alarmstate">AlarmState</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>processValue</strong></td>
<td valign="top"><a href="#any">Any</a></td>
<td>

Current process value that triggered the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>alarmLimit</strong></td>
<td valign="top"><a href="#any">Any</a></td>
<td>

Threshold limit that triggered the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>applicationType</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Type of application that generated the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>source</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Identification details of the alarm source (e.g., Device name)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Human-readable description of the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>group</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Grouping category for the alarm

</td>
</tr>
</tbody>
</table>

### AlarmState

Represents a specific state of an alarm at a point in time

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

Unique identifier for the alarm state

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>isBranch</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Branch identifier for state tree management

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severity</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td>

Severity level of the alarm in this state from 0 to 999

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>comment</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional comment associated with this state

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retain</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Is the state is of interest to a client. This can indicate that some action is still required e.g Acknowledgement

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enabled</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Enabled state of the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>acked</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Acknowledged state of the alarm. When False this indicates the state requires acknowledgement

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>confirmed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Confirmed state of the alarm. When False this indicates the state requires confirmation.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>active</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

The active state of the alarm. When True this indicates that the situation the alarm represents exists.
Transitions of this state can only be done through the result of the evaluation of the condition the alarm is based upon.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>suppressed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

The suppressed state of the alarm. Typically used by the system to suppress alarms due to system specific reasons.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>shelved</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

The shelved state of the alarm. Suggests whether an alarm shall be prevented from being displayed to the user.
Indicates that system operators have blocked a nuisance alarm.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>outOfService</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

The service state of the alarm. Used to indicate that an alarm is in maintenance. Used to ignore alarms from a device that is undergoing maintenance.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>latched</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

The latched state of the alarm. If true the alarm requires additional processing.
If latching is enabled for the alarm - Once the alarm becomes active this value will be set to true and will remain true until until the state is no longer active,
is acknowledged, is confirmed (if required) and then reset. The retain property will remain true also for this period.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>timestamp</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td>

Time the state occurred

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>routingStatus</strong></td>
<td valign="top"><a href="#routingstatus">RoutingStatus</a></td>
<td>

Placeholder for alarm status

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>userId</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

ID of the user who caused this state change (null if system-generated)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td>

Status code of the alarm state

</td>
</tr>
</tbody>
</table>

### AlarmsResponse

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
<td colspan="2" valign="top"><strong>alarms</strong></td>
<td valign="top">[<a href="#alarm">Alarm</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>metadata</strong></td>
<td valign="top"><a href="#metadata">Metadata</a></td>
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

The condition ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceNames</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device names details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceGroups</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device groups details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td>

Alarm severities

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

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
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#condition">Condition</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
</tbody>
</table>

### ConditionsResponse

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
<td colspan="2" valign="top"><strong>conditions</strong></td>
<td valign="top">[<a href="#condition">Condition</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>metadata</strong></td>
<td valign="top"><a href="#metadata">Metadata</a></td>
<td></td>
</tr>
</tbody>
</table>

### Metadata

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
<td colspan="2" valign="top"><strong>count</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>limit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>offset</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>total</strong></td>
<td valign="top"><a href="#int">Int</a></td>
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

The route ID (in UUID format)

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>name</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

The route name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#condition">Condition</a>!</td>
<td>

Associated condition to filter alarms based on devices and alarm severity

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>maintenanceSchedule</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is disabled for maintenance

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>actions</strong></td>
<td valign="top">[<a href="#action">Action</a>!]</td>
<td>

Associated actions to where to route the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsCreated</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>tsModified</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Unix timestamp

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
<td colspan="2" valign="top"><strong>route</strong></td>
<td valign="top"><a href="#route">Route</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
</tbody>
</table>

### RoutesResponse

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
<td colspan="2" valign="top"><strong>routes</strong></td>
<td valign="top">[<a href="#route">Route</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>metadata</strong></td>
<td valign="top"><a href="#metadata">Metadata</a></td>
<td></td>
</tr>
</tbody>
</table>

### StatesResponse

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
<td colspan="2" valign="top"><strong>alarmStates</strong></td>
<td valign="top">[<a href="#alarmstate">AlarmState</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>metadata</strong></td>
<td valign="top"><a href="#metadata">Metadata</a></td>
<td></td>
</tr>
</tbody>
</table>

### Status

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

The action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional  description

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

Stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The length of time (in seconds) the alarm output will be active

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

The action name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional  description

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

Stop conditions for Relay actions

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The length of time (in seconds) the alarm output will be active

</td>
</tr>
</tbody>
</table>

### AlarmsFilter

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
<td colspan="2" valign="top"><strong>isActive</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
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

Optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceNames</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device names details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceGroups</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device groups details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td>

Alarm severities

</td>
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

Optional name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceNames</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device names details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deviceGroups</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Device groups details

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severities</strong></td>
<td valign="top">[<a href="#severitytype">SeverityType</a>!]</td>
<td>

Alarm severities

</td>
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

The route name

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Optional description

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>conditionId</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

The condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>maintenanceSchedule</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is disabled for maintenance

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

The route name

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

The condition ID - single, no wildcards

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>delay</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Delay time (in minutes) to wait before an alarm is routed

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retries</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td>

The number of retries to run the action before terminated

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>schedule</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>maintenanceSchedule</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is disabled for maintenance

</td>
</tr>
</tbody>
</table>

### StatesFilter

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
<td colspan="2" valign="top"><strong>isActive</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
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
<td>

Action enabled all time 24/7

</td>
</tr>
<tr>
<td valign="top"><strong>ONSCHEDULE</strong></td>
<td>

Action enabled only in the time window defined in the schedule of associated route

</td>
</tr>
<tr>
<td valign="top"><strong>OFFSCHEDULE</strong></td>
<td>

Action enabled only outside the time window defined in the schedule of associated route

</td>
</tr>
<tr>
<td valign="top"><strong>DISABLED</strong></td>
<td>

Action disabled all time

</td>
</tr>
</tbody>
</table>

### ActionStopConditionType

Defines the stop conditions for the actions of alarm relay type

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>NONE</strong></td>
<td>

No stop condition

</td>
</tr>
<tr>
<td valign="top"><strong>ONTIME</strong></td>
<td>

the alarm output will remain active until the duration defined in the action has elapsed

</td>
</tr>
<tr>
<td valign="top"><strong>ONACKED</strong></td>
<td>

the alarm output will remain active until it is acknowledged

</td>
</tr>
<tr>
<td valign="top"><strong>ONCLEARED</strong></td>
<td>

the alarm output will remain active until it is cleared

</td>
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

### RoutingStatus

Represents the routing status of an alarm
This is placeholder

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>RED</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GREEN</strong></td>
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

### Any

### Boolean

The `Boolean` scalar type represents `true` or `false`.

### Float

The `Float` scalar type represents signed double-precision fractional values as specified by [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).

### ID

The `ID` scalar type represents a unique identifier, often used to refetch an object or as key for a cache. The ID type appears in a JSON response as a String; however, it is not intended to be human-readable. When expected as an input type, any string (such as `"4"`) or integer (such as `4`) input value will be accepted as an ID.

### Int

The `Int` scalar type represents non-fractional signed whole numeric values. Int can represent values between -(2^31) and 2^31 - 1.

### JSON

### String

The `String` scalar type represents textual data, represented as UTF-8 character sequences. The String type is most often used by GraphQL to represent free-form human-readable text.

