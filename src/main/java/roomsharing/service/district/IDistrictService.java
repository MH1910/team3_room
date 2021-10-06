package roomsharing.service.district;

import roomsharing.entity.DistrictEntity;

import java.util.List;
import java.util.UUID;

public interface IDistrictService {
    List<DistrictEntity> listAll();
    void save(DistrictEntity districtEntity);
    DistrictEntity get(UUID districs_id);
}
