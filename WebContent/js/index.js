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