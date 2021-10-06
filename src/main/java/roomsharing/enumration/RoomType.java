package roomsharing.enumration;

public enum RoomType {
    Room("room",0),
    House("house",1);
    private final String key;
    private final Integer value;

    RoomType(String key, Integer value) {
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
