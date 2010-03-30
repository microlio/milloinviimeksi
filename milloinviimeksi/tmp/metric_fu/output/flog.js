              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Flog: code complexity';
        g.data('average', [6.8,6.1]);
        g.data('top 5% average', [19.9,21.3])
        g.labels = {"0":"3/27","1":"3/29"};
        g.draw();
