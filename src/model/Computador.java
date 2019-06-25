package model;

public class Computador {
	float valorInicial, valorFinal, memoria, hd, ssd, placaVideo, monitor;

	public Computador(float valorInicial, float valorFinal, float memoria, float hd, float ssd, float placaVideo,
			float monitor) {
		this.valorInicial = valorInicial;
		this.valorFinal = valorFinal;
		this.memoria = memoria;
		this.hd = hd;
		this.ssd = ssd;
		this.placaVideo = placaVideo;
		this.monitor = monitor;
	}

	public float getValorInicial() {
		return valorInicial;
	}

	public void setValorInicial(float valorInicial) {
		this.valorInicial = valorInicial;
	}

	public float getValorFinal() {
		return valorFinal;
	}

	public void setValorFinal(float valorFinal) {
		this.valorFinal = valorFinal;
	}

	public float getMemoria() {
		return memoria;
	}

	public void setMemoria(float memoria) {
		this.memoria = memoria;
	}

	public float getHd() {
		return hd;
	}

	public void setHd(float hd) {
		this.hd = hd;
	}

	public float getSsd() {
		return ssd;
	}

	public void setSsd(float ssd) {
		this.ssd = ssd;
	}

	public float getPlacaVideo() {
		return placaVideo;
	}

	public void setPlacaVideo(float placaVideo) {
		this.placaVideo = placaVideo;
	}

	public float getMonitor() {
		return monitor;
	}

	public void setMonitor(float monitor) {
		this.monitor = monitor;
	}
	
}
