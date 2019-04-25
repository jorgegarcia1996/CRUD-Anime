package crud.anime.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AnimeDTO {
	
	private Integer codAni;
	private String nomAni;
	private String sinAni;
	private String genAni;
	private Integer numEpiAni;
	private Integer durEpiAni;
	private Date fecEstAni;
	private String estAni;
	private TipoDTO tipo;
	
}
