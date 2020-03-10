$(document).on('ready turbolinks:load', function() {

  $('#calendar').fullCalendar({
   events: "/events.json",
   firstDay: 1
   });
})
