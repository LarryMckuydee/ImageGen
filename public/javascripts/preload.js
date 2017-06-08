 (function(){
  var canvas = new fabric.Canvas('front');
  var rect = new fabric.Rect({
    width: 50,
    height: 50,
    fill: 'rgba(0,0,200,0.5)'
  });
  canvas.add(rect);
  canvas.on({
    'object:moving': onchange,
    'object:scaling': onChange,
    'object:rotating': onChange,
  });

  function onChange(options) {
    options.target.setCoords();
    canvas.forEachObject(function(obj) {
      if (obj === options.target) return;
      obj.setOpacity(options.target.intersectsWithObject(obj) ? 0.5 : 1);
    });
  }
  canvas.renderAll();
  window.canvas = canvas;

  var form = document.getElementsByTagName('form');
  form[0].onsubmit = function(){
    var convert_image_input = document.getElementById('convertImage'); 
    convert_image_input.value = canvas.toDataURL({
                                  format: 'png'
                                })
  }
 })();

