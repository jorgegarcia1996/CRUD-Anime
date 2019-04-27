package crud.anime.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "TIPO")
public class Tipo {

	@Id
	@Column(name = "CodTip")
	private Integer codTip;
	
	@Column(name = "NomTip")
	private String nomTip;
}
