package beans;

@SuppressWarnings({"WeakerAccess", "SameParameterValue"})
public class PalindromeBean {
    private String palindromeFieldValue;

    // Constructor
    public PalindromeBean() {
        setPalindromeFieldValue("");
    }

    // Functions
    public boolean inputHasValueAndIsNotEmpty() {
        return (getPalindromeFieldValue() != null) && (!getPalindromeFieldValue().isEmpty());
    }

    private boolean isPalindrome() {
        String wordToExamine = getPalindromeFieldValue().toLowerCase();
        int n = wordToExamine.length();
        for (int i = 0; i < (n / 2); i++) {
            if (wordToExamine.charAt(i) != wordToExamine.charAt(n - i - 1)) {
                return false;
            }
        }
        return true;
    }

    public String inputWordPalindromeCheck() {
        return !inputHasValueAndIsNotEmpty() ? "No word has been entered yet" : ("The word: " + getPalindromeFieldValue() + (isPalindrome() ? " is " : " is not") + " a palindrome");
    }


    // Set
    public void setPalindromeFieldValue(String palindromeFieldValue) {
        this.palindromeFieldValue = palindromeFieldValue;
    }

    // Get
    public String getPalindromeFieldValue() {
        return palindromeFieldValue;
    }
}
