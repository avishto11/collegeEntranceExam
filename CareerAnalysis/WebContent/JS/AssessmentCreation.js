var response_json;
$(document).ready(function() {
	
	 $('#submit-btn').click( function () {
		 question_bank = [];
			$('select[name="question_bank"]').each(function() {
				question_bank.push($(this).val());
			});
			$.ajax({
		        url: 'CreateAssessment',
		        type: 'get',
		        data: {
		        	action:"SubmitAssessment",
		        	question_bank : question_bank.join(),
		        	Num_of_questions : $('#q_id_string').val(),
		        	keyword_3 : $('#Keyword_3').val(),
		        	keyword_2 : $('#Keyword_2').val(),
		        	keyword_1 : $('#Keyword_1').val(),
		        	Assesment_name : $('#Assesment_name').val()
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
	        data: {action:"GETQuestions"},
	        dataType: 'json',
	        success:function(response){
	        	response_json = response;
	            
	        }
	});
	
});
function myMfiFunction(){
	var x = document.getElementById("q_id_string").value;
	if(x>0){
		var y = document.getElementById("question_bank");
		y.className = "";
		var i;
		var codeBlock='';
		for(i=0; i<x; i++){
		codeBlock +='<div class="form-group row">'+'<select name="question_bank" id="question_bank_'+i+'" class="input-mandatory-text question_bank_options" required >'+'</select></div><br>';
		}
		document.getElementById("question_bank").innerHTML = codeBlock;
		var len = response_json.length;
        $(".question_bank_options").append("<option>Select</option>");
        for( var j = 0; j<len; j++){
            var id = response_json[j]['id'];
            var name = response_json[j]['keyword'];
            $(".question_bank_options").append("<option value='"+id+"'>"+name+"</option>");
            
        }
	}else{
			var y = document.getElementById("mfi")
			y.className = "hide";
			var codeBlock='';
			document.getElementById("mfi").innerHTML = codeBlock;
		}
}