package crud.anime.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import crud.anime.entity.Anime;

@Repository
public interface AnimeRepo extends JpaRepository<Anime, Integer> {

}
