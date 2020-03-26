$(function(){

  function tagForm(num){
    var html =
    `<div class="contents__form__tag__box__field">
  <input placeholder="tag" type="text" name="study[tags_attributes][${num}][name]" id="study_tags_attributes_${num}_name">
  </div>`
  return html;
  };
  $("#add-tag").on('click', function(){
    console.log('click');
    //タグを追加に与えた数字を取得かつ整数にキャスト
    var tagNum = parseInt($('.contents__form__tag__add').attr('data-index'));
    console.log(tagNum);
    var tagNum = tagNum + 1;
    $('.contents__form__tag__add').attr('data-index', `${tagNum}`);
    // $('#label').attr('for', `bike_images_attributes_${labelIndex}_src`);
    console.log(tagNum);
    $('#tag-field').append(tagForm(tagNum));
  });
  
});