 
 
 function onsavebtnclick_ops(){
    	var table = document.getElementById('optionstableFixHead');
    	 var formdata = []
    	    
        for (var r = 0, n = table.rows.length; r < n; r++) {
        	formdata[r] =[]
            for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
            	if(r!=0){
            		 var x = table.rows[r].cells[c].children[0].value;
            		 formdata[r][c] = x;
            	}
            	
            	
        }
    }
		console.log(formdata);
		

		$.ajax({
			url: "inseroptionstable",
			type: "POST",
			data: { or1: formdata[1].join('$'),
					or2: formdata[2].join('$'),
					or3: formdata[3].join('$'),
					or4: formdata[4].join('$'),
					or5: formdata[5].join('$'),
					or6: formdata[6].join('$'),
					or7: formdata[7].join('$'),
					or8: formdata[8].join('$'),
					or9: formdata[9].join('$'),
					or10: formdata[10].join('$'),
					or11: formdata[11].join('$'),
					or12: formdata[12].join('$'),
					or13: formdata[13].join('$'),
					or14: formdata[14].join('$'),
					or15: formdata[15].join('$'),
					or16: formdata[16].join('$'),
					or17: formdata[17].join('$'),
					or18: formdata[18].join('$'),
					or19: formdata[19].join('$'),
					or20: formdata[20].join('$'),
					or21: formdata[21].join('$'),
					or22: formdata[22].join('$'),
					or23: formdata[23].join('$'),
					or24: formdata[24].join('$'),
					
					}
		}).done(function(data) {
			console.log(data);
		});
		
		
		 window.location.reload();
    
   }