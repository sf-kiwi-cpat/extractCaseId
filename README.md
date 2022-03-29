# extractCaseId
Extracts a Salesforce Case ID from a given string and returns it. Intended to be called from Flow


One use case is for Messaging Sessions with SMS. If you send an outbound SMS with the case ID included (e.g. 'Your new case ID is #12345678'), then you can call this from Flow for when the Messaging Session is created, to extract out that Case ID, search for the case and associate it as appropriate.

