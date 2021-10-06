package roomsharing.service.province;

import roomsharing.entity.ProvinceEntity;

import java.util.List;
import java.util.UUID;

public interface IProvinceService {

    List<ProvinceEntity> listAll();
    void save(ProvinceEntity provinceEntity);
    ProvinceEntity get(UUID Province_id);
}
