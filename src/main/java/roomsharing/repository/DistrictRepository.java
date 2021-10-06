package roomsharing.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import roomsharing.entity.DistrictEntity;

import java.util.UUID;

public interface DistrictRepository extends JpaRepository<DistrictEntity, UUID> {
}
