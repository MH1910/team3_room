package roomsharing.mapper;

import org.mapstruct.Mapper;
import roomsharing.dto.file.FileDto;
import roomsharing.entity.FileEntity;

import java.util.List;

@Mapper(componentModel = "spring")
public interface IFileMapper {
    FileEntity fromFileDtoToFileEntity(FileDto dto);
    FileDto toFileDto(FileEntity fileEntity);
    List<FileDto> toFileDtos(List<FileEntity> fileEntity);

}
