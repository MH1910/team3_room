package roomsharing.service.room;

import roomsharing.dto.room.RoomInfoBasicDto;
import roomsharing.dto.room.RoomInfoCreateDto;
import roomsharing.dto.room.RoomInfoDetailDto;

import java.util.List;
import java.util.UUID;

public interface IRoomInfoService {
    RoomInfoDetailDto getById(UUID roomId);
    boolean delete(UUID room_id);
    RoomInfoDetailDto updateRoomInfo (RoomInfoDetailDto dto, UUID roomId) throws Exception;
    List<RoomInfoBasicDto> listAll();
    RoomInfoDetailDto createRoomInfo(RoomInfoCreateDto newRoomInfo) throws Exception;
}
