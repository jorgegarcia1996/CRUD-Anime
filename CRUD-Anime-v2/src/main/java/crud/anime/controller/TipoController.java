package crud.anime.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import crud.anime.dto.TipoDTO;
import crud.anime.entity.Tipo;
import crud.anime.service.TipoService;

@RestController
public class TipoController {

	@Autowired
	private TipoService tipoService;
	
	DozerBeanMapper mapper = new DozerBeanMapper();
	
	@GetMapping("/tipos")
	public List<TipoDTO> listTipo() throws SQLException {
		List<Tipo> tipos = tipoService.findAll();
		List<TipoDTO> tiposDTO = new ArrayList<>();
		if (tipos != null) {
			tipos.stream().forEach(a -> tiposDTO.add(mapper.map(a, TipoDTO.class)));
		}
		return tiposDTO;
	}
	
}
