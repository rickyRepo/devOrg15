<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Vehicle_Creator</fullName>
        <description>Update Creator Name field on Vehicle object</description>
        <field>Creator_Name__c</field>
        <formula>Creator_Name__c</formula>
        <name>Update Vehicle Creator</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Vehicle_CreatorName</fullName>
        <field>Creator_Name__c</field>
        <formula>Name</formula>
        <name>Update Vehicle CreatorName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Udate Creator Name</fullName>
        <actions>
            <name>Update_Vehicle_CreatorName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update Creator name field of Vehicle Object</description>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
