package org.example;


public class Logger {

    public void beginRule(String ruleName, Variable variable) {
        System.out.println("Start rule " + ruleName + " for variable " + variable);
    }

    public void endRule(String ruleName, Variable variable) {
        System.out.println("End rule " + ruleName + " for variable " + variable);
    }

}
