RSRC                 	   Resource            ��������
   Algorithm                                             
      resource_local_to_scene    resource_name    script    label    icon    time_complexity    space_complexity    price    owned    code       Script !   res://src/resources/algorithm.gd ��������
   Texture2D    res://figma/icon_dfs.png D�{���;      local://Resource_lc0dy �      	   Resource                          DFS                                     �            	      �   procedure DFS(G, v) is
    label v as discovered
    for all directed edges from v to w that are in G.adjacentEdges(v) do
        if vertex w is not labeled as discovered then
            recursively call DFS(G, w) RSRC