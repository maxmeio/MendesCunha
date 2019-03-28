(function($) {
    'use strict';
    $(function() {
		var http_base = $("base").attr('href');
        if ($('#calendar').length) {
			var day = '';
			var inicial = '';
			var final = '';
			var arrayData = showData();
			var dd = arrayData[2];
			var mm = arrayData[1];
			var yyyy = arrayData[0];
			
			var arrayEvent = buscaProfessor();
			
			var arrayEvent2 = [{title: 'All Day Event', start: '2018-04-26T17:00:00'},{title: 'Long Event', start: '2018-04-27'}];
			
			//alert(JSON.stringify(arrayEvent));
			//alert(JSON.stringify(arrayEvent2));

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
				selectable: true,
                defaultDate: yyyy+'-'+mm+'-'+dd,
                navLinks: true, // can click day/week names to navigate views
                editable: true,
                eventLimit: true, // allow "more" link when too many events
				events: arrayEvent2,
				dayClick: function(date) {
					day = date.format();
					console.log(day);
				},
				select: function(startDate, endDate) {
					inicial = startDate.format();
					final = endDate.format();
					console.log(inicial + ' - ' + final);
				}
            })
        }
		
		function buscaProfessor()
		{
			var arrayDay = showData();
			var year = arrayDay[0];
			var month = arrayDay[1];
			var day = arrayDay[2];
			var arrayEvent = [];
			
			$.ajax({
				type		:	"POST",
				url			:	http_base + "/agendamento/buscaProfessor",
				data		:	{day:day, month:month, year:year},
				cache		:	false,
				dataType	:	"json",
				success	:	function(data)
				{
					for (var i = 0; i < data.length; i++){
						data[i].data = data[i].data.replace(" ", "T");
						var obj = {title: String(data[i].professor), start: String(data[i].data)};
						arrayEvent.push(obj);
					}
					
					alert(JSON.stringify(arrayEvent));
					console.log(arrayEvent);
				},
				error	:	function(jqXHR, textStatus, errorThrown)
				{
					console.log(textStatus);
				}
			});
			
			alert(JSON.stringify(arrayEvent));
			console.log(arrayEvent);
			return arrayEvent;
		}
    });
	
	function showData(){
		var today = new Date();
		var day = today.getDate();
		var month = today.getMonth() + 1;
		var year = today.getFullYear();
		
		if (day < 10) {
			day = '0' + day;
		}
		
		if (month < 10) {
			month = '0' + month;
		}
		
		var arrayDay = [String(year), String(month), String(day)];
		
		return (arrayDay);
	}
	
})(jQuery);
