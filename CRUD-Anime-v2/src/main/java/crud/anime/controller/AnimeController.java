package crud.anime.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import crud.anime.dto.AnimeDTO;
import crud.anime.entity.Anime;
import crud.anime.service.AnimeService;

@Controller
public class AnimeController {

	@Autowired
	AnimeService animeService;
	
	DozerBeanMapper mapper = new DozerBeanMapper();
	
	@GetMapping("/animes")
	public List<AnimeDTO> listAnime() throws SQLException {
		List<Anime> animes = animeService.findAll();
		List<AnimeDTO> animesDTO = new ArrayList<>();
		if (animes != null) {
			animes.stream().forEach(a -> animesDTO.add(mapper.map(a, AnimeDTO.class)));
		}
		return animesDTO;
	}
	
}
