<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Birthday_Email_Action</fullName>
        <ccEmails>singh09rahulrock@gmail.com</ccEmails>
        <description>Birthday Email Action</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Birthday_Mail_Template</template>
    </alerts>
    <alerts>
        <fullName>Birthday_Mail_Action</fullName>
        <ccEmails>singh09rahulrock@gmail.com</ccEmails>
        <description>Birthday Mail Action</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Birthday_Mail_Template</template>
    </alerts>
    <alerts>
        <fullName>Mail_to_Team_Members</fullName>
        <ccEmails>singh09rahulrock@gmail.com</ccEmails>
        <description>Mail to Team Members</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Birthday_Mail_Template</template>
    </alerts>
    <rules>
        <fullName>Birthday Flow</fullName>
        <active>false</active>
        <formula>True</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>My_Team__c.Next_Birthday__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Birthday Rule</fullName>
        <active>true</active>
        <formula>True</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Mail_to_Team_Members</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>My_Team__c.Next_Birthday__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
