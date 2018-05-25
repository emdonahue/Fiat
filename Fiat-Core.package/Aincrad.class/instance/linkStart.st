gui
linkStart
	| e |
	e := AincradGUI new world: self.
	e openWithSpec.
	^ e.