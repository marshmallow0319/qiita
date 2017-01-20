$(function(){
 $('#js-title').keyup(function(){
    title = $(this).val();
    $('#title-result').html(title)
  });
  $('#editor-markdown').keyup(function(){
    editor = $(this).val();
    editor = marked(editor);
    $('#result').html(editor);
  });
});
