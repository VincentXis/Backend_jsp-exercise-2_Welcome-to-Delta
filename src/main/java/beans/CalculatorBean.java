package beans;

public class CalculatorBean {
    private double calcFieldValue1;
    private double calcFieldValue2;
    private char chosenOperator = '0';
    private double result;

    // Functions
    private void doOperation() {
        switch (getChosenOperator()) {
            case '+':
                setResult(getCalcFieldValue1() + getCalcFieldValue2());
                break;
            case '-':
                setResult(getCalcFieldValue1() - getCalcFieldValue2());
                break;
            case '*':
                setResult(getCalcFieldValue1() * getCalcFieldValue2());
                break;
            case '/':
                setResult(getCalcFieldValue1() / getCalcFieldValue2());
                break;
            default:
                setResult(0.0f);
                break;
        }
    }

    // Set
    public void setCalcFieldValue1(double calcFieldValue1) {
        this.calcFieldValue1 = calcFieldValue1;
    }

    public void setCalcFieldValue2(double calcFieldValue2) {
        this.calcFieldValue2 = calcFieldValue2;
    }

    public void setChosenOperator(char chosenOperator) {
        this.chosenOperator = chosenOperator;
    }

    private void setResult(double result) {
        this.result = result;
    }

    // Get
    private double getCalcFieldValue1() {
        return calcFieldValue1;
    }

    private double getCalcFieldValue2() {
        return calcFieldValue2;
    }

    private char getChosenOperator() {
        return chosenOperator;
    }

    private double getResult() {
        return result;
    }

    // Show result or message on page
    public String showResultOrMessage() {
        if (getChosenOperator() != '0') {
            doOperation();
            return writeResultString();
        } else {
            return "Please enter your values and select an operator";
        }
    }

    // Write result string
    private String writeResultString() {
        return "Result for: " +
                (valueHasDecimals(getCalcFieldValue1())
                        ? String.format("%.0f", getCalcFieldValue1()) : getCalcFieldValue1()) +
                String.format(" %c ", getChosenOperator()) +
                (valueHasDecimals(getCalcFieldValue2())
                        ? String.format("%.0f", getCalcFieldValue2()) : getCalcFieldValue2()) +
                "<br/>is: " +
                (valueHasDecimals(getResult())
                        ? String.format("%.0f", getResult()) : getResult());
    }

    private boolean valueHasDecimals(double value) {
        return value % 1 == 0;
    }
}
