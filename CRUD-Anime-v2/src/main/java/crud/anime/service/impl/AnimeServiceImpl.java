package crud.anime.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crud.anime.entity.Anime;
import crud.anime.repo.AnimeRepo;
import crud.anime.service.AnimeService;

@Service
public class AnimeServiceImpl implements AnimeService {
	
	@Autowired
	AnimeRepo animeRepo;
	
	public List<Anime> findAll() {
		return animeRepo.findAll();
	}
	
	public Anime findById(Integer codAni) {
		return animeRepo.findById(codAni).orElse(null);
	}
	
	public void deleteById(Integer codAni) {
		animeRepo.deleteById(codAni);
	}
	
	public Anime saveAnime(Anime anime) {
		return animeRepo.save(anime);
	}
}
