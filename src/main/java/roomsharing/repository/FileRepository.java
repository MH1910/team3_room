package roomsharing.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import roomsharing.entity.FileEntity;

import java.util.List;
import java.util.UUID;
@Repository
public interface FileRepository extends JpaRepository <FileEntity, UUID> {
    FileEntity findFirstByFileId (UUID fileId);
    void deleteById (UUID fileId);
    List<FileEntity> findByParentTypeAndParentId(int parentType, UUID parentId);

}
