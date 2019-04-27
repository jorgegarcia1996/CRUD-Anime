package crud.anime.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crud.anime.entity.Tipo;
import crud.anime.repo.TipoRepo;
import crud.anime.service.TipoService;

@Service
public class TipoServiceImpl implements TipoService {
	
	@Autowired
	TipoRepo tipoRepo;
	
	public List<Tipo> findAll() {
		return tipoRepo.findAll();
	}
	
	public Tipo findById(Integer codTip) {
		return tipoRepo.findById(codTip).orElse(null);
	}
	
	public void deleteById(Integer codTip) {
		tipoRepo.deleteById(codTip);
	}
	
	public Tipo saveTipo(Tipo tipo) {
		return tipoRepo.save(tipo);
	}
}
