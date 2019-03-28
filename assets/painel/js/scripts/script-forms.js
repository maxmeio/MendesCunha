var http_base = $("base").attr("href");
var rel_base = $("base").attr("rel");

$(document).ready(function()
{
	//$(".datahora").mask("99/99/9999 99:99:99");
	//$(".data").mask("99/99/9999");

	//$("#select2-basic").select2();
	//$("#select2-multi-value").select2();
	//$("#select2-max-value").select2({maximumSelectionSize: 3});
	//$("#select2-tags").select2({tags:["red", "green", "blue"],tokenSeparators: [",", " "]});

	//$('.colorpicker-rgb').colorpicker({ format:'rgb'});
	//$('.colorpicker-rgba').colorpicker({ format:'rgba'});
	//$('.colorpicker-hex').colorpicker({ format:'hex'});

	//$("#select2-max-value").select2({maximumSelectionSize: 1});
	
	var tomorrow = new Date();
	tomorrow.setDate(tomorrow.getDate() + 1);
	
	var nextweek = new Date();
	nextweek.setDate(nextweek.getDate() + 14);
	
	$(function() {
        $( ".datepicker" ).datepicker({
            beforeShowDay: function(date) {
                var day = date.getDay();
                return [(day != 0 && day != 6)];
            },
            altField: "#hiddenInput",
            altFormat: "dd/mm/yy",
            dayNames: ["Domingo", "Segunda", "Terça", "Quarte", "Quinta", "Sexta", "Sábado"],
            dayNamesMin: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"],
            monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
            minDate: tomorrow,
            maxDate: nextweek,
            onSelect: function (date) {
                // Your CSS changes, just in case you still need them
                console.log($('#hiddenInput').attr('value'));
            }
        });
    });

    $('.timepicker-24hrs').timepicker({showMeridian:false,showInputs:false});
	
	// Maintain array of dates
	var dates = new Array();

	function addDate(date) {
		if (jQuery.inArray(date, dates) < 0) 
			dates.push(date);
	}

	function removeDate(index) {
		dates.splice(index, 1);
	}

	// Adds a date if we don't have it yet, else remove it
	function addOrRemoveDate(date) {
		var index = jQuery.inArray(date, dates);
		if (index >= 0) 
			removeDate(index);
		else 
			addDate(date);
	}

	// Takes a 1-digit number and inserts a zero before it
	function padNumber(number) {
		var ret = new String(number);
		if (ret.length == 1) 
			ret = "0" + ret;
		return ret;
	}

	/*jQuery(function () {
		jQuery("#datepicker").datepicker({
			onSelect: function (dateText, inst) {
				addOrRemoveDate(dateText);
				$('a.ui-state-default.ui-state-active').addClass('marked-day');
				console.log($('a.ui-state-default.ui-state-active').html());
			},
			altField: "#hiddenInput",
		  	altFormat: "dd/mm/yy",
    	  	minDate: tomorrow,
		  	maxDate: nextweek,
			beforeShowDay: function (date) {
				var year = date.getFullYear();
				// months and days are inserted into the array in the form, e.g "01/01/2009", but here the format is "1/1/2009"
				var month = padNumber(date.getMonth() + 1);
				var day = padNumber(date.getDate());
				// This depends on the datepicker's date format
				var dateString = month + "/" + day + "/" + year;

				var gotDate = jQuery.inArray(dateString, dates);
				if (gotDate >= 0) {
					// Enable date so it can be deselected. Set style to be highlighted
					return [true, "ui-state-highlight"];
				}
				// Dates not in the array are left enabled, but with no extra style
				return [true, ""];
			}
		});
	});*/

	/*$(".datepicker").datepicker({
		daysOfWeekDisabled: "0,6"
	});*/
	//$('#datepicker-years').datepicker({viewMode:2});

	//$('.timepicker-12hrs').timepicker();
	//$('.timepicker-24hrs').timepicker({showMeridian:false,showInputs:false});

	$(".monetario").maskMoney({
        symbol		:	"R$",
        decimal		:	",",
        thousands	:	"."
    });
	
	$(".coeficiente").mask("9.99999");
	
	$(".telefone").mask("(99) 9999-9999");
	$(".nascimento").mask("99/99/9999");


	$('.tags').tagsInput({width:'80%', height:'80px', defaultText:'add uma tag'});

	$(document).on("click", ".cb-enable", function(e)
	{
		var parent = $(this).parents('.switch');
		$('.cb-disable',parent).removeClass('selected');
		$(this).addClass('selected');
		$('.checkbox',parent).attr('checked', true);
	});

	$(document).on("click", ".cb-disable", function(e)
	{
		var parent = $(this).parents('.switch');
		$('.cb-enable',parent).removeClass('selected');
		$(this).addClass('selected');
		$('.checkbox',parent).attr('checked', false);
	});
});