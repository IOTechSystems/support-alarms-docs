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
    * [DeviationAlarmLimit](#deviationalarmlimit)
    * [Device](#device)
    * [LevelAlarmLimit](#levelalarmlimit)
    * [Metadata](#metadata)
    * [OffNormalAlarmLimit](#offnormalalarmlimit)
    * [RateOfChangeAlarmLimit](#rateofchangealarmlimit)
    * [Route](#route)
    * [RouteResponse](#routeresponse)
    * [RoutesResponse](#routesresponse)
    * [StateGroup](#stategroup)
    * [StateGroupsResponse](#stategroupsresponse)
    * [StatesResponse](#statesresponse)
    * [Status](#status)
  * [Inputs](#inputs)
    * [ActionCreateRequest](#actioncreaterequest)
    * [ActionUpdateRequest](#actionupdaterequest)
    * [ConditionCreateRequest](#conditioncreaterequest)
    * [ConditionUpdateRequest](#conditionupdaterequest)
    * [Filter](#filter)
    * [RouteCreateRequest](#routecreaterequest)
    * [RouteUpdateRequest](#routeupdaterequest)
  * [Enums](#enums)
    * [ActionStopConditionType](#actionstopconditiontype)
    * [ActionType](#actiontype)
    * [AlarmType](#alarmtype)
    * [RoutedStatus](#routedstatus)
    * [SeverityType](#severitytype)
  * [Scalars](#scalars)
    * [Any](#any)
    * [Boolean](#boolean)
    * [Float](#float)
    * [ID](#id)
    * [Int](#int)
    * [JSON](#json)
    * [String](#string)
  * [Interfaces](#interfaces)
    * [BaseAlarmLimit](#basealarmlimit)
  * [Unions](#unions)
    * [AlarmLimit](#alarmlimit)

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

Retrieve all alarms in the system that are stored in system

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Number of records to skip (for pagination)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Maximum number of records to return (for pagination)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Field to sort results by (not implemented)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#filter">Filter</a></td>
<td>

Filter criteria to apply to current alarm states

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>States</strong></td>
<td valign="top"><a href="#statesresponse">StatesResponse</a></td>
<td>

Retrieves all states in the system which have occurred and are still stored in system

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">offset</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Number of records to skip (for pagination)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">limit</td>
<td valign="top"><a href="#int">Int</a></td>
<td>

Maximum number of records to return (for pagination)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">sortBy</td>
<td valign="top"><a href="#string">String</a></td>
<td>

Field to sort results by (not implemented)

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#filter">Filter</a></td>
<td>

Filter criteria to apply to states

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>StatesGroups</strong></td>
<td valign="top"><a href="#stategroupsresponse">StateGroupsResponse</a></td>
<td>

Retrieves all states groups as a query optimization for the front end

!!! Not Implemented Yet !!!

</td>
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
<td valign="top"><a href="#filter">Filter</a></td>
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
<td colspan="2" valign="top"><strong>TriggerTestAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Trigger a test alarm

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">severity</td>
<td valign="top"><a href="#severitytype">SeverityType</a>!</td>
<td>

severity level of the test alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ResetTestAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Reset the test alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>DisableAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Disable an alarm

Disabling an alarm prevents it from evaluating its condition and generating new states.
When disabled, the alarm will not trigger regardless of the underlying condition state.
The disabled state persists until explicitly enabled again.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>EnableAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Enable an alarm

Enables a previously disabled alarm, allowing it to resume normal operation.
Once enabled, the alarm will begin evaluating its condition and can generate new states.
The alarm will immediately evaluate its condition upon being enabled and may transition to an active state
if the condition criteria are met.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>SuppressAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Suppress an alarm

Suppression prevents an alarm from being reported even when its condition becomes true.
Unlike disabling, suppression is typically used for temporary conditions where the alarm should
not be reported due to known operational conditions (e.g., during startup sequences or specific
operational modes). The alarm continues to evaluate its condition but will not create new states
or notifications while suppressed.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>UnsuppressAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Unsuppress an alarm

Removes the suppression state from an alarm, allowing it to resume normal reporting.
After unsuppression, the alarm will immediately evaluate its condition and may generate
new states if the condition criteria are met. Any conditions that occurred during
suppression will become visible if they are still active.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>ShelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Shelve an alarm

Shelving is an operator-initiated action to temporarily prevent an alarm from being displayed.
Unlike suppression, shelving is typically used for nuisance alarms that are known issues but
cannot be addressed immediately. The alarm continues to evaluate and maintain its state, but
is hidden from normal operational views. Shelving persists until explicitly unshelved or
until a timed shelving period expires

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>UnshelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Unshelve an alarm

Removes the shelved state from an alarm, making it visible in operational views again.
Any alarm conditions that occurred while shelved will become visible if they are still active.
This is typically used when ready to address previously shelved nuisance alarms.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>TimedShelveAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

!!! This is not currently implemented !!!
Shelve an alarm for a specific fixed time period

Applies temporary shelving to an alarm for a specified duration. After the duration expires,
the alarm automatically unshelves. This is useful for temporarily hiding known alarm conditions
that will be addressed within a specific timeframe. The alarm continues to evaluate its condition
during the shelving period but remains hidden from normal operational views.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">shelvingTime</td>
<td valign="top"><a href="#float">Float</a>!</td>
<td>

Duration of time (ms) that the alarm should be shelved for

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>AddComment</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

!!! This is not currently implemented !!!
Add a comment to an alarm state

Attaches a comment to a specific alarm state for documentation purposes.
Comments provide additional context about the alarm state and can be used
to track operator observations, planned actions, or other relevant information.
Comments become part of the permanent alarm history.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
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

Acknowledges that an operator is aware of the alarm condition.
Acknowledgment is typically required for all active alarms and indicates operator awareness
of the condition. It does not imply that any corrective action has been taken.
The alarm remains active until its condition returns to normal, even after acknowledgment.
Some alarms may require both acknowledgment and confirmation before being fully cleared.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
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

Confirms that appropriate action has been taken to address the alarm condition.
Confirmation is typically used in addition to acknowledgment for critical alarms
where explicit verification of corrective action is required. Some systems may
require both acknowledgment and confirmation before an alarm can be fully cleared.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">stateId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
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

Remove an alarm from service

Marks an alarm as being out of service, typically during maintenance periods.
This state indicates that the alarm or its monitored equipment is undergoing
maintenance and should not generate new states. Unlike suppression or shelving,
out of service is specifically used for maintenance activities.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>PlaceInServiceAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Return an alarm from service

Returns an alarm to normal operation after being out of service.
Out of service typically indicates that the monitored equipment is under maintenance
or the alarm itself is being serviced. Removing from service allows the alarm to
resume normal operation and begin evaluating its condition again.

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
<td colspan="2" valign="top"><strong>ResetAlarm</strong></td>
<td valign="top"><a href="#status">Status</a></td>
<td>

Reset a latched alarm instance

Resets a latched alarm to allow it to return to normal state.
Latched alarms require explicit reset action even after their condition returns
to normal. This is typically used for critical alarms where explicit operator
action is required to clear the alarm state. The alarm must be inactive,
acknowledged, and confirmed (if required) before reset will succeed.

</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">alarmId</td>
<td valign="top"><a href="#id">ID</a>!</td>
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
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#filter">Filter</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>AlarmUpdates</strong></td>
<td valign="top"><a href="#alarm">Alarm</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#filter">Filter</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>StateGroupUpdates</strong></td>
<td valign="top"><a href="#stategroup">StateGroup</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">filter</td>
<td valign="top"><a href="#filter">Filter</a></td>
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
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Action enabled status

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
<td colspan="2" valign="top"><strong>lastStateGroupId</strong></td>
<td valign="top"><a href="#id">ID</a></td>
<td>

Last State Group for this Alarm
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>device</strong></td>
<td valign="top"><a href="#device">Device</a></td>
<td>

Information on the device and resource that is the source of this alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>currentState</strong></td>
<td valign="top"><a href="#alarmstate">AlarmState</a></td>
<td>

Current state of the alarm

</td>
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
<td valign="top"><a href="#alarmlimit">AlarmLimit</a></td>
<td>

Condition settings for the alarm that has been triggers
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>applicationType</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

Type of application that generated the alarm
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>description</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

A description of what this alarm is for
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>group</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

The alarms group
!!! This is not currently implemented !!!

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

Unique identifier for the alarm state.
Used in mutations such as AcknowledgeState to perform that function on the alarm state.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>alarmId</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Unique identifier for the alarm that this state is assocated with

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severity</strong></td>
<td valign="top"><a href="#severitytype">SeverityType</a>!</td>
<td>

Severity level of the alarm.
Value is based on configured ranges in the alarm service.

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

Is the state is of interest to a client.
This can indicate that some action is still required e.g Acknowledgement

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enabled</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Is the alarm enabled?
The primary states of a Alarm's Condition are disabled and enabled.
The Disabled state is intended to allow Conditions to be turned off at the Server, disabling the alarm.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>acked</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Acknowledged state of the alarm.
When true it indicates indicates recognition of an Alarm condition being active.
For example a alarm is triggered, The engineer see this and then acknowledges the alarm is active.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>confirmed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Confirmed state of the alarm.
When set to true it indicates a corrective action has been taken to address the cause of the Alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>active</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

The active state of the alarm.
When True this indicates that the evaluation of the condition the alarm is based upon has returned True.
Transitions of this state back to False can only be done through the result of the evaluation of the condition the alarm is based upon.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>suppressed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

The suppressed state of the alarm.
An Alarm is suppressed when logical criteria are applied to determine that the Alarm should not
occur, even though the base Alarm Condition (e.g. Alarm setting exceeded) is present
Typically used by the system to suppress alarms due to system specific reasons.

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

The service state of the alarm. Used to indicate that an alarm is in maintenance.
Used to ignore alarms from a device that is undergoing maintenance.

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
<td valign="top"><a href="#string">String</a>!</td>
<td>

Time the state occurred.
This is a Unix timestamp.

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>routed</strong></td>
<td valign="top"><a href="#routedstatus">RoutedStatus</a></td>
<td>

The alarm routing status
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>userId</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td>

ID of the user who caused this state change (null if system-generated)
!!! This is not currently implemented !!!

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td>

Status code of the alarm state
!!! This is not currently implemented !!!

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

### DeviationAlarmLimit

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
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#alarmtype">AlarmType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hysteresis</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deadband</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>setpoint</strong></td>
<td valign="top"><a href="#float">Float</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>highDeviation</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>lowDeviation</strong></td>
<td valign="top"><a href="#float">Float</a></td>
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
<td colspan="2" valign="top"><strong>deviceName</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>resourceName</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

### LevelAlarmLimit

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
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#alarmtype">AlarmType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hysteresis</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deadband</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>highHighLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>highLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>lowLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>lowLowLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
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

### OffNormalAlarmLimit

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
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#alarmtype">AlarmType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hysteresis</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deadband</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>normalState</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>allowedStates</strong></td>
<td valign="top">[<a href="#string">String</a>!]!</td>
<td></td>
</tr>
</tbody>
</table>

### RateOfChangeAlarmLimit

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
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#alarmtype">AlarmType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hysteresis</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deadband</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>positiveROCLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>negativeROCLimit</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>timeInterval</strong></td>
<td valign="top"><a href="#float">Float</a>!</td>
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
<td colspan="2" valign="top"><strong>actions</strong></td>
<td valign="top">[<a href="#action">Action</a>!]</td>
<td>

Associated actions to where to route the alarm

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Route enabled status

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

### StateGroup

Represents a lifecycle of states from active to inactive
!!! This is not currently implemented !!!

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

Unique Identifier for the state group

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>alarmId</strong></td>
<td valign="top"><a href="#id">ID</a>!</td>
<td>

Identifier for alarm that this state group i

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>states</strong></td>
<td valign="top">[<a href="#id">ID</a>!]</td>
<td>

Time ordered list of states from active to inactive state

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>initialState</strong></td>
<td valign="top"><a href="#alarmstate">AlarmState</a></td>
<td>

Head and Tail of states from the states list

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>currentState</strong></td>
<td valign="top"><a href="#alarmstate">AlarmState</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>complete</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Boolean on whether this group is historical
I.E. the states in this group have gone active and then inactive

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>duration</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td>

A Float containing the duration from active to inactive state.
This will be nil if it is not complete

</td>
</tr>
</tbody>
</table>

### StateGroupsResponse

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
<td colspan="2" valign="top"><strong>stateGroups</strong></td>
<td valign="top">[<a href="#stategroup">StateGroup</a>!]</td>
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
<td valign="top"><a href="#boolean">Boolean</a>!</td>
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
<td valign="top"><a href="#boolean">Boolean</a></td>
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
<td valign="top"><a href="#string">String</a>!</td>
<td>

Condition name

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

### Filter

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
<td colspan="2" valign="top"><strong>alarmId</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stateId</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>stateGroupId</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>severity</strong></td>
<td valign="top"><a href="#severitytype">SeverityType</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enabled</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>acked</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>confirmed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>active</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>cleared</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>suppressed</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>shelved</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>outOfService</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>latched</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>routed</strong></td>
<td valign="top"><a href="#routedstatus">RoutedStatus</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>retain</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>userId</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>status</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>startTime</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>endTime</strong></td>
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
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td>

Route enabled status

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
<td valign="top"><a href="#string">String</a></td>
<td>

Schedule string (in iCalender format) to define the time window when the alarm route is enabled

</td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>enableStatus</strong></td>
<td valign="top"><a href="#boolean">Boolean</a></td>
<td>

Route enabled status

</td>
</tr>
</tbody>
</table>

## Enums

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

### AlarmType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>LEVEL</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>DEVIATION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>RATE_OF_CHANGE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>OFF_NORMAL</strong></td>
<td></td>
</tr>
</tbody>
</table>

### RoutedStatus

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
<td valign="top"><strong>SUCCESS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>PARTIAL_SUCCESS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>FAILURE</strong></td>
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


## Interfaces


### BaseAlarmLimit

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
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#alarmtype">AlarmType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hysteresis</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>deadband</strong></td>
<td valign="top"><a href="#float">Float</a></td>
<td></td>
</tr>
</tbody>
</table>

## Unions

### AlarmLimit

<table>
<thead>
<th align="left">Type</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong><a href="#levelalarmlimit">LevelAlarmLimit</a></strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong><a href="#deviationalarmlimit">DeviationAlarmLimit</a></strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong><a href="#rateofchangealarmlimit">RateOfChangeAlarmLimit</a></strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong><a href="#offnormalalarmlimit">OffNormalAlarmLimit</a></strong></td>
<td></td>
</tr>
</tbody>
</table>
