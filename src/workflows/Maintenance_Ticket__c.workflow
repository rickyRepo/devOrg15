<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Mail_to_technician</fullName>
        <ccEmails>singh09rahul05@gmail.com</ccEmails>
        <description>Mail to technician</description>
        <protected>false</protected>
        <recipients>
            <recipient>rahul.singh2015@vit.ac.in</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Festival_Emails_solution/Maintenance_Notification_solution</template>
    </alerts>
    <alerts>
        <fullName>Mail_to_technician1</fullName>
        <ccEmails>singh09rahul05@gmail.com</ccEmails>
        <description>Mail to technician1</description>
        <protected>false</protected>
        <recipients>
            <recipient>rahul.singh2015@vit.ac.in</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Festival_Emails_solution/Mail_To_Technician</template>
    </alerts>
    <rules>
        <fullName>Alert Technician</fullName>
        <actions>
            <name>Mail_to_technician1</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email technician whenever new ticket is created</description>
        <formula>IF(ISNULL(Technician__r.Email),False, True)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
