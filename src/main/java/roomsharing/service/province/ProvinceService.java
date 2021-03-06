package roomsharing.service.province;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import roomsharing.entity.ProvinceEntity;
import roomsharing.repository.ProvinceRepository;

import java.util.List;
import java.util.UUID;

@Service
public class ProvinceService implements IProvinceService {

    @Autowired
    private final ProvinceRepository provinceRepo;

    public ProvinceService(ProvinceRepository provinceRepo) {
        this.provinceRepo = provinceRepo;
    }

    public List<ProvinceEntity> listAll(){
        return provinceRepo.findAll();
    }
    public void save(ProvinceEntity provinceEntity){
        provinceRepo.save(provinceEntity);
    }
    public ProvinceEntity get(UUID Province_id){
        return provinceRepo.findById(Province_id).get();
    }
}
