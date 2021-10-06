package roomsharing.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import roomsharing.entity.WardEntity;

import java.util.UUID;

public interface WardRepository extends JpaRepository<WardEntity, UUID> {
}
