extends AudioStreamPlayer2D

func stop_music():
	stop()

func start_music():
	if !playing:
		play()
