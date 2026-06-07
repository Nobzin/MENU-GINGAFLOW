extends AudioStreamPlayer2D
var musicas = []
var nome = " L’Étoile D’Afrique x Les Trompettes D’Afrique"

func stop_music():
	stop()

func start_music():
	if !playing:
		play()
