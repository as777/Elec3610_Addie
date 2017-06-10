function up(span) {
    var upvote = parseInt(span.getElementsByTagName('span')[0].innerHTML, 10);
    span.getElementsByTagName('span')[0].innerHTML = ++upvote;
    span.style.pointerEvents = 'none';
    span.style.color="#70ad46";
    
    // change downvote span
    var downspan = span.parentElement.getElementsByTagName('span')[2];
    
    style = window.getComputedStyle(downspan);
    color = style.getPropertyValue('color');
    if (color != "rgb(255, 255, 255)") {
        var downvote = parseInt(downspan.getElementsByTagName('span')[0].innerHTML, 10);
        downspan.getElementsByTagName('span')[0].innerHTML = --downvote;
        downspan.style.pointerEvents = 'auto';
        downspan.style.color = 'white';
    }

}

function down(span) {
    var downvote = parseInt(span.getElementsByTagName('span')[0].innerHTML, 10);
    span.getElementsByTagName('span')[0].innerHTML = ++downvote;
    span.style.pointerEvents = 'none';
    span.style.color="Tomato";
    
    // change upvote span
    var upspan = span.parentElement.getElementsByTagName('span')[0];
    
    style = window.getComputedStyle(upspan);
    color = style.getPropertyValue('color');
    if (color != "rgb(255, 255, 255)") {
        var upvote = parseInt(upspan.getElementsByTagName('span')[0].innerHTML, 10);
        upspan.getElementsByTagName('span')[0].innerHTML = --upvote;
        upspan.style.pointerEvents = 'auto';
        upspan.style.color = 'white';
    }
}

function search() {
	
	var input = document.getElementById('searchinput');
    var filter = input.value.toUpperCase();
	var posts = document.getElementsByClassName("grid-item");
	
    for (i = 0; i < posts.length; i++) {
        a = posts[i].getElementsByTagName("h2")[0];
        b = posts[i].getElementsByTagName("p")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            posts[i].style.display = "";
        } else if (b.innerHTML.toUpperCase().indexOf(filter) > -1) {
        	posts[i].style.display = "";
        } else {
            posts[i].style.display = "none";
        }
    }
	
}

function filtertag(input) {
	
	var tag = '.'+input.value+':visible';
	console.log(tag);
	
	$('#masonryContainer').masonry({
	    itemSelector: tag
	});
  
  
//    $(function() {
//
//        // initialize Masonry
//        var $container = $('#masonryContainer');
//
//        $container.multipleFilterMasonry({
//          itemSelector: '.all',
//          filtersGroupSelector:'.filters',
//          // set the selectorType to use <ul> instead of inputs
//          selectorType: 'list'
//        });
//      });
	
}

//init Isotope
var $grid = $('.grid').isotope({
  itemSelector: '.grid-item',
  layoutMode: 'fitRows'
});

// bind filter button click
$('.filters-button-group').on( 'click', 'button', function() {
  var filterValue = $( this ).attr('data-filter');
  // use filterFn if matches value
  $grid.isotope({ filter: filterValue });
});
// change is-checked class on buttons
$('.button-group').each( function( i, buttonGroup ) {
  var $buttonGroup = $( buttonGroup );
  $buttonGroup.on( 'click', 'button', function() {
    $buttonGroup.find('.is-checked').removeClass('is-checked');
    $( this ).addClass('is-checked');
  });
});



