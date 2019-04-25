package crud.anime.service;

import java.util.List;

import org.springframework.stereotype.Service;

import crud.anime.entity.Tipo;

@Service
public interface TipoService {

	public List<Tipo> findAll();
	public Tipo findById(Integer codTip);
	public void deleteById(Integer codTip);
	public Tipo saveTipo(Tipo tipo);
}