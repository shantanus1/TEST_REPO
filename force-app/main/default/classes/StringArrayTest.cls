public class StringArrayTest {
	public static List<String> newL1 = new List<String>();
    public static List<String> generateStringArray(Integer n)
    {
        for(Integer i=0;i<n;i++)
        {
            String var='Test '+i;
            newL1.add(var);
        }
        return newL1;
    }
    
}