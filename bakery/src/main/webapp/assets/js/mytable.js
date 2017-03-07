$(function(){
	
	$('#mytable').DataTable( {
		ajax: {
	        url: '/onlinebakery/products/all/data',
	        dataSrc: ''
	    },
	    columns: [
	       
	        { data: 'id' },
	        { data: 'name' },
	        { data: 'description' },
	        {data: null,
	        	mRender: function ( data, type, row ) {
	                return '<img src="/onlinebakery/resources/img/'+ row.id +'.jpg" height="50" width="50">';
	        	}
	        },
	        {data: null,
	        	mRender: function ( data, type, row ) {
	                return '<a class="btn btn-primary" href="/onlinebakery/show/'+row.id+'/product">View Item</a> &nbsp;<a class="btn btn-primary" href="'+data+'">Add To Cart</a> ';
	            }	
	        }
	        
	        
	    ]
	} );
	
	
	
});