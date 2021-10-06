package roomsharing.dto.room;

import lombok.Data;
import roomsharing.dto.file.FileDto;
import roomsharing.enumration.RoomType;
import roomsharing.enumration.StatusType;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Data
public class RoomInfoCreateDto {
    @Enumerated(EnumType.STRING)
    private RoomType roomType;
    private UUID userId;
    private UUID provinceId;
    private UUID districtId;
    private UUID wardId;
    private String address;
    private Float acreage;
    private Integer roomPrice = 0;
    private String roomDescribe;
    @Enumerated(EnumType.STRING)
    private StatusType statusHired;
    private Date date;
    private String title;
    private List<FileDto> files;
}
