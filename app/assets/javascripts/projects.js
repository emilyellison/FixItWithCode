$(document).ready( function() { 

  if ($('#projects').length) {

    var projects = gon.projects;
    var first_project = projects[0];

    $('#project').attr('data-project-id', first_project.id);
    $('#project-title').text(first_project.title);
    $('#project-content').text(first_project.content);
    $('#project-github').attr('href', first_project.github_link);
    $('#project-website').attr('href', first_project.website_link);
    $('#project-photo').attr('src', first_project.photo_link);
    $('#project-administrator').text(first_project.administrator_id);
    
  }

});