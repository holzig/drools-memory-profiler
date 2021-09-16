package org.example;

public class Message {
    private final String type;
    private final Variable variable;
    private final boolean flag;

    public Message(final String type, final Variable variable, final boolean flag) {
        this.type = type;
        this.variable = variable;
        this.flag = flag;
    }
}
