package roomsharing.dto.room;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import roomsharing.dto.file.FileDto;
import roomsharing.dto.user.UserBasicDto;
import roomsharing.enumration.RoomType;
import roomsharing.enumration.StatusType;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Data
public class RoomInfoDetailDto {
    private UUID roomId;
    @Enumerated(EnumType.STRING)
    private RoomType roomType;
    private UUID userId;
    private UUID provinceId;
    private UUID districtId;
    private UUID wardId;
    private String address;
    private Float acreage;
    private Integer roomPrice;
    private String roomDescribe;
    @Enumerated(EnumType.STRING)
    private StatusType statusHired;
    @JsonFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date date;
    private String title;
    private UserBasicDto user;
    private List<FileDto> files;
}
