RSRC                 	   Resource            €€€€€€€€
   Algorithm                                             
      resource_local_to_scene    resource_name    script    label    icon    time_complexity    space_complexity    price    owned    code       Script !   res://src/resources/algorithm.gd €€€€€€€€
   Texture2D    res://figma/icon_bubble.png yб=арб      local://Resource_2q3qx Ґ      	   Resource                          Bubble Sort                                      Љ            	      •  procedure bubbleSort(A : list of sortable items)
    n := length(A)
    repeat
        swapped := false
        for i := 1 to n-1 inclusive do
            { if this pair is out of order }
            if A[i-1] > A[i] then
                { swap them and remember something changed }
                swap(A[i-1], A[i])
                swapped := true
            end if
        end for
    until not swapped
end procedure RSRC