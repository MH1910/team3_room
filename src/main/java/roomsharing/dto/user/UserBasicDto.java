package roomsharing.dto.user;

import lombok.Data;
import roomsharing.enumration.UserRole;

import java.util.Date;
import java.util.UUID;

@Data
public class UserBasicDto {
    private UUID userId;
    private String userName;
    private String name;
    private String email;
    private String address;
    private String phone;
    private Date birthDate;
    private boolean gender;
    private String avatarUrl;
    private UserRole role;
}
