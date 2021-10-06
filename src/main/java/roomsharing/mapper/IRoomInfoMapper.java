package roomsharing.mapper;

import org.mapstruct.Mapper;
import roomsharing.dto.room.RoomInfoBasicDto;
import roomsharing.dto.room.RoomInfoCreateDto;
import roomsharing.dto.room.RoomInfoDetailDto;
import roomsharing.entity.RoomInfoEntity;

import java.util.List;

@Mapper(componentModel = "spring")
public interface IRoomInfoMapper {

    RoomInfoEntity fromCreateToEntity(RoomInfoCreateDto dto);
    RoomInfoBasicDto toBasicDto(RoomInfoEntity returnRoom);
    List<RoomInfoBasicDto> toBasicDtos(List<RoomInfoEntity> returnRoom);
    RoomInfoEntity fromBasicToEntity(RoomInfoDetailDto dto);
    RoomInfoDetailDto toDetailDto(RoomInfoEntity returnRoom);
    List<RoomInfoDetailDto> toDetailDtos(List<RoomInfoEntity> roomInfo);
    RoomInfoCreateDto toCreateDto(RoomInfoEntity returnRoom);
}
