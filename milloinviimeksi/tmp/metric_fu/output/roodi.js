              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Roodi: design problems';
        g.data('roodi', [0,0,0,0,0]);
        g.labels = {"0":"3/27","1":"3/29","2":"4/7","3":"4/8","4":"4/12"};
        g.draw();
