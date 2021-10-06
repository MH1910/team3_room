package roomsharing.mapper;

import org.mapstruct.Mapper;
import roomsharing.dto.user.UserBasicDto;
import roomsharing.dto.user.UserCreateDto;
import roomsharing.dto.user.UserInfoDto;
import roomsharing.entity.UserEntity;

import java.util.List;

@Mapper(componentModel = "spring")
public interface IUserMapper {
    UserEntity fromCreateToEntity(UserCreateDto dto);
    UserEntity fromBasicToEntity(UserBasicDto dto);
    UserBasicDto toBasicDto(UserEntity userEntity);
    UserInfoDto toInfoDto(UserEntity userEntity);
    List<UserBasicDto> toBasicDtos(List<UserEntity> users);
}
