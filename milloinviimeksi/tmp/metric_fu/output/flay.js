              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Flay: duplication';
        g.data('flay', [0,0,0,0,0,0,0,0,0,0]);
        g.labels = {"5":"4/13","0":"3/27","6":"4/15","1":"3/29","7":"4/19","2":"4/7","8":"4/26","3":"4/8","9":"4/29","4":"4/12"};
        g.draw();
