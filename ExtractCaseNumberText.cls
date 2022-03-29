@isTest
public class ExtractCaseNumberTest {
	
    static testMethod void checkExtractCaseId()
    {
    	String testString1 = 'Here is a string with a case id #12345678 which should match;';
        String testString2 = 'Here is a string with a case id #1234567890 which should match;';
        String testString3 = 'Here is a string with a case id 12345678 which should not match;';
        String testString4 = 'Here is a string without a case ID;';
        
        List<String> input = new List<String>();
        input.add(testString1);
        List<ExtractCaseNumber.CaseNumberResult> results = ExtractCaseNumber.extractCaseId(input);
        System.assert(results[0].caseId == '12345678');
        
        input.clear();
        input.add(testString2);
        results = ExtractCaseNumber.extractCaseId(input);
        System.assert(results[0].caseId == '1234567890');
        
        input.clear();
        input.add(testString3);
        results = ExtractCaseNumber.extractCaseId(input);
        System.assert(results[0].caseId == null);
        
        input.clear();
        input.add(testString4);
        results = ExtractCaseNumber.extractCaseId(input);
        System.assert(results[0].caseId == null);
        
    }
}
