chessboard =[   ["Torre-B", "Caballo-B", "Alfil-B", "Reina-B", "Rey-b", "Alfil-B", "Caballo-B", "Torre-B"],
				[     "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B"     ],
				[				      				 												     ],
				[				      				 												     ],
				[			               															     ],
				[				       														    		 ],
				[     "Peon-W", "Peon-W", "Peon-W", "Peon-W", "Peon-W", "Peon-W", "Peon-W", "Peon-W"     ],
				["Torre-W", "Caballo-W", "Alfil-W", "Reina-W", "Rey-W", "Alfil-W", "Caballo-W", "Torre-W"]  ]
table = 
	[ ["Nombre", 			"Edad",   "Genero",      "Grupo" , 	   "Calificaciones"],
  		
	  ["Rodrigo García",	  13,     "Masculino",   "Primero",    [9, 9, 7, 6, 8]],
	  ["Fernanda Gonzales",	  12,      "Femenino", 	 "Tercero",    [6, 9, 8, 6, 8]],
	  ["Luis Perez",		  13,     "Masculino",   "Primero",	   [8, 7, 7, 9, 8]],
	  ["Ana Esponsa",		  14,     "Femenino", 	 "Segundo",    [9, 9, 6, 8, 8]],
      ["Pablo Moran",		  11,     "Masculino",   "Segundo",    [7, 8, 9, 9, 8]]      ]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6