$(document).ready(function(){
	$(".song-link").click(function(e){
		$('.lyric').empty();
		e.preventDefault();
		$.ajax({
			  url: $(e.target).attr('href'),
			  data: $(e.target).serialize(),
			})
		.done(function(response){
			$('.lyric').append(response)
		})

	})
})