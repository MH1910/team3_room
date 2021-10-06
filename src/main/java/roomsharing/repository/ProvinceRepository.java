package roomsharing.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import roomsharing.entity.ProvinceEntity;

import java.util.UUID;

public interface ProvinceRepository extends JpaRepository<ProvinceEntity, UUID> {
}
