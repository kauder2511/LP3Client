$(document).ready(function (){
$('.tabgroup > div').hide();
$('.tabgroup > div:first-of-type').show();
$('.tabs a').click(function(e) {
  e.preventDefault();
  var $this = $(this),
    tabgroup = '#' + $this.parents('.tabs').data('tabgroup'),
    others = $this.closest('div').siblings().children('a'),
    target = $this.attr('href');
  others.parent().removeClass('active');
  $this.parent().addClass('active');
  $(tabgroup).children('div').hide();
  $(target).show();
  });});