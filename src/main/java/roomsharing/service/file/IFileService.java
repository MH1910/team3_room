package roomsharing.service.file;

import roomsharing.dto.file.FileDto;

import java.util.List;
import java.util.UUID;

public interface IFileService {
    FileDto createFile (FileDto file);
    FileDto updateFile (FileDto file, UUID fileId);
    FileDto getById (UUID fileId);
    boolean delete(UUID fileId);
    List<FileDto> getByParentTypeAndParentId(int parentType, UUID parentId);
    void deleteByParentTypeAndParentId(int parentType, UUID parentId);
}
