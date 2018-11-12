<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>New_to_in_review</fullName>
        <description>change status</description>
        <field>Status__c</field>
        <literalValue>In Review</literalValue>
        <name>New to in review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>cancelled</fullName>
        <description>change status to cancellled</description>
        <field>Status__c</field>
        <literalValue>Cancelled</literalValue>
        <name>cancelled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>confirm</fullName>
        <description>change status to confirm</description>
        <field>Status__c</field>
        <literalValue>Confirmed</literalValue>
        <name>confirm</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>recall</fullName>
        <description>recall the request</description>
        <field>Status__c</field>
        <literalValue>New</literalValue>
        <name>recall</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
