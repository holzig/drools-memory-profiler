package org.example;

public class Helper {

    public RuleContext createContext(Variable variable) {
        return new RuleContext(variable);
    }

    public Message createMessage(String type, Variable variable, boolean flag) {
        return new Message(type, variable, flag);
    }

}
