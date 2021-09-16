package org.example;

public class RuleContext {

    private final Variable variable;
    private boolean validationError;

    public RuleContext(final Variable variable) {
        this.variable = variable;
    }

    public boolean isValidationError() {
        return validationError;
    }

    public void setValidationError(final boolean validationError) {
        this.validationError = validationError;
    }

    public boolean checkPreCondition() {
        return true;
    }
}
