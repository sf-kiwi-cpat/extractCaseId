global class ExtractCaseNumber {
    
    @InvocableMethod(label='Find any case ID in the given String' description='')
    global static List <CaseNumberResult> extractCaseId(List<String> messages) {
		List<CaseNumberResult> results = new List<CaseNumberResult>();
        // This pattern looks for 8 digits or more, that have a # before it and returns all the digits
        Pattern pat = Pattern.compile('(?>#)(\\d{8,})\\b');
        
        for (String text : messages)
        {
            Matcher match = pat.matcher(text);
            CaseNumberResult result = new CaseNumberResult();   
            while(match.find()) {
		// Only care about the first result, so let's return that
                result.caseId = match.group(1);
                break; 
            }
        	results.add(result);
        }
        
        return results;
    }

    global class CaseNumberResult {
        @InvocableVariable(label='Id found within String. Null if not found' required=true)
        global String caseId;

    }

} 
