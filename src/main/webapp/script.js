   
    function onsavebtnclick(){
    	var table = document.getElementById('tableFixHead');
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
			url: "inserttable",
			type: "POST",
			data: { r1: formdata[1].join('$'),
					r2: formdata[2].join('$'),
					r3: formdata[3].join('$'),
					r4: formdata[4].join('$'),
					r5: formdata[5].join('$'),
					r6: formdata[6].join('$'),
					r7: formdata[7].join('$'),
					r8: formdata[8].join('$'),
					r9: formdata[9].join('$'),
					r10: formdata[10].join('$'),
					r11: formdata[11].join('$'),
					r12: formdata[12].join('$'),
					r13: formdata[13].join('$'),
					r14: formdata[14].join('$'),
					r15: formdata[15].join('$'),
					r16: formdata[16].join('$'),
					r17: formdata[17].join('$'),
					r18: formdata[18].join('$'),
					r19: formdata[19].join('$'),
					r20: formdata[20].join('$'),
					r21: formdata[21].join('$'),
					r22: formdata[22].join('$'),
					r23: formdata[23].join('$'),
					r24: formdata[24].join('$'),
					
					}
		}).done(function(data) {
			console.log(data);
		});
		
		 window.location.reload();
    
   }
    
