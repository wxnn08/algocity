RSRC                 	   Resource                    
   Algorithm                                             
      resource_local_to_scene    resource_name    script    label    icon    time_complexity    space_complexity    price    owned    code       Script !   res://src/resources/algorithm.gd         
   Texture2D    res://figma/icon_bfs.png ]Му;║де9      local://Resource_rq2n3 Я      	   Resource                          BFS                                                 	      ?  procedure BFS(G, root) is
	let Q be a queue
	label root as explored
	Q.enqueue(root)
	 while Q is not empty do
	 	v := Q.dequeue()
		if v is the goal then
			return v
		for all edges from v to w in G.adjacentEdges(v) do
			if w is not labeled as explored then
				label w as explored
				w.parent := v
				Q.enqueue(w) RSRC