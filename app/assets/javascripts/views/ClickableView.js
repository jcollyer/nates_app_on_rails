App.EditLesson = Ember.View.extend({
  click: function() {
    var theID = $('#edit_button_id').text();
    window.location = "/lessons/"+theID+"/edit"
    //alert(URL);
  }
});

App.EditPost = Ember.View.extend({
  click: function() {
    var theID = $('#edit_button_id').text();
    window.location = "/posts/"+theID+"/edit"
    //alert(URL);
  }
});

App.EditBook = Ember.View.extend({
  click: function() {
    var theID = $('#edit_button_id').text();
    window.location = "/books/"+theID+"/edit"
    //alert(URL);
  }
});

App.EditBiblebook = Ember.View.extend({
  click: function() {
    var theID = $('#edit_button_id').text();
    window.location = "/biblebooks/"+theID+"/edit"
    //alert(URL);
  }
});

App.ShowNav = Ember.View.extend({
  click: function() {
    $(".hide_show_nav").animate({height: "100px"}, 500);
    $(".hamburger").css("display", "none");
    $(".the_top_nav").css("position", "relative");
    $(".the_top_nav").animate({marginTop: "0px" }, 500);
    }
});

App.HideNav = Ember.View.extend({
  click: function() {
    $(".hide_show_nav").animate({height: "40px"}, 100);
    $(".the_top_nav").css("margin-top", "-140px");
    $(".the_top_nav").css("position", "absolute");
    $(".hamburger").css("display", "block");
    }
});
