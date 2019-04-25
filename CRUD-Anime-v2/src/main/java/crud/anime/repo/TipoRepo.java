package crud.anime.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import crud.anime.entity.Tipo;

@Repository
public interface TipoRepo extends JpaRepository<Tipo, Integer> {

}
