package roomsharing.enumration;


public enum StatusType {
    NOT_HIRED("Not_Hired",0),
    HIRED("HiRed",1),
    SHARING("Sharing",2);
    private final String key;
    private final Integer value;

    StatusType(String key, Integer value) {
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return key;
    }

    public Integer getValue() {
        return value;
    }
}


