
Vendor Name* 
	<select id='selectNumber' name = 't3'>
    	<option value='select'>select</option>
	</select> 
<script> 
var dropdown = document.getElementById("selectNumber");
		// Loop through the array
		var arr1=["hello","hi"];
		for (var i = 0; i < arr1.length; ++i) 
		    // Append the element to the end of Array list
		    dropdown[dropdown.length] = new Option(arr1[i], arr1[i]);
		    </script>