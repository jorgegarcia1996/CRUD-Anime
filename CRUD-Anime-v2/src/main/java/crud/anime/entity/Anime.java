package crud.anime.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Anime {
	
	@Id
	private Integer codAni;
	private String nomAni;
	private String sinAni;
	private String genAni;
	private Integer numEpiAni;
	private Integer durEpiAni;
	private Date fecEstAni;
	private String estAni;
	
	@OneToOne
	@JoinColumn(name = "CodAni")
	public Tipo tipo;
	
}
