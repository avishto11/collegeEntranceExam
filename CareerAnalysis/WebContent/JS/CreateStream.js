var response_json;
$(document).ready(function() {
	
	 $('#submit-btn').click( function () {
		 	assessments = [];
			$('select[name="assessments"]').each(function() {
				assessments.push($(this).val());
			});
			average_opening = [];
			$('input[name="average_opening"]').each(function() {
				average_opening.push($(this).val());
			});
			average_closing = [];
			$('input[name="average_closing"]').each(function() {
				average_closing.push($(this).val());
			});
			$.ajax({
		        url: 'CreateStream',
		        type: 'get',
		        data: {
		        	action:"SubmitStream",
		        	assessments : assessments.join(),
		        	average_opening : average_opening.join(),
		        	average_closing : average_closing.join(),
		        	level : $('#level').val(),
		        	Choose_Stream : $('#Choose_Stream').val()
		        		},
		        dataType: 'html',
		        success:function(response){
		        	if(response == 0){
		        		alert('Failed to Create Assessment');
		        	}else{
		        		
		        		alert('Successfully Created Assessment');
		        	}
		        }
			});
			
	 });
	 $.ajax({
	        url: 'CreateAssessment',
	        type: 'get',
	        data: {action:"GETAssessment"},
	        dataType: 'json',
	        success:function(response){
	        	response_json = response;
	            
	        }
	});
	
});
function myMfiFunction(){
	var x = document.getElementById("Assesment_NO").value;
	if(x>0){
		var y = document.getElementById("Assessment_Names");
		y.className = "";
		var i;
		var codeBlock='';
		for(i=0; i<x; i++){
		codeBlock +='<div class="form-group row">'+'<label>Assessments: '+i+'::</label><br>'+'<div><select name="assessments" id="assessments_'+i+'" class="input-mandatory-text assessment_options" required >'+'</select></div></div><br>';
		codeBlock +='<div class="form-group row">'+'<label>Enter Opening Cuttoff::</label><br>'+'<div><input name="average_opening" id="average_opening_'+i+'" class="input-mandatory-text" required ></div></div>';
		codeBlock +='<div class="form-group row">'+'<label>Enter Closing Cuttoff::</label><br>'+'<div><input name="average_closing" id="average_closing_'+i+'" class="input-mandatory-text" required ></div>'+'</div>';
		}
		document.getElementById("Assessment_Names").innerHTML = codeBlock;
		var len = response_json.length;
		$(".assessment_options").empty();
        $(".assessment_options").append("<option>Select</option>");
        for( var j = 0; j<len; j++){
            var id = response_json[j]['assessment_id'];
            var name = response_json[j]['assessment_name'];
            $(".assessment_options").append("<option value='"+id+"'>"+name+"</option>");
            
        }
	}else{
			var y = document.getElementById("Assessment_Names");
			y.className = "hide";
			var codeBlock='';
			document.getElementById("Assessment_Names").innerHTML = codeBlock;
		}
}
