package roomsharing.enumration;

public enum FileParentType
{
    Room("room",0),
    Review("review",1),
    Comment("comment",2);

   private final String key;
   private final Integer value;

    FileParentType(String key, Integer value) {
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
