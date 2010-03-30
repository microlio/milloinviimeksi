              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Reek: code smells';
        g.data('Control Couple', [1,1])
g.data('Duplication', [6,6])
g.data('Irresponsible Module', [3,5])
g.data('Long Method', [2,2])

        g.labels = {"0":"3/27","1":"3/29"};
        g.draw();
