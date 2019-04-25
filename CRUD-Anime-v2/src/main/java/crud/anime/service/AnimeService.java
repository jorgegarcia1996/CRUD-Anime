package crud.anime.service;

import java.util.List;

import org.springframework.stereotype.Service;

import crud.anime.entity.Anime;

@Service
public interface AnimeService {

	public List<Anime> findAll();
	public Anime findById(Integer codAni);
	public void deleteById(Integer codAni);
	public Anime saveAnime(Anime anime);
}
