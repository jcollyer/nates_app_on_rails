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
    $(".hide_show_nav").animate({height: "100px"}, 300);
    $(".hamburger").css("position", "absolute");
    $(".the_top_nav").css("position", "relative");
    $(".the_top_nav").animate({marginTop: "0px" }, 300);
    $(".hamburger_piece").animate({width: "4px", left: "10px", height: "26px"}, 200);
    $(".hamburger_middle").animate({top: "30px"}, 300);
    $(".hamburger_bottom").animate({top: "60px"}, 300);
    }
});

App.HideNav = Ember.View.extend({
  click: function() {
    $(".hide_show_nav").animate({height: "33px"}, 700);
    $(".the_top_nav").css("margin-top", "-140px");
    $(".the_top_nav").css("position", "absolute");
    $(".hamburger").css("position", "relative");
    $(".hamburger_piece").animate({width: "26px", left: "0px", height: "3px"}, 300);
    $(".hamburger_middle").animate({top: "7px"}, 200);
    $(".hamburger_bottom").animate({top: "14px"}, 200);
    }
});
