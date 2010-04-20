              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Flog: code complexity';
        g.data('average', [6.8,6.1,6.0,6.0,6.0,5.9,6.2,6.2]);
        g.data('top 5% average', [19.9,21.3,20.05,20.05,16.0,16.0,16.5,16.5])
        g.labels = {"5":"4/13","0":"3/27","6":"4/15","1":"3/29","7":"4/19","2":"4/7","3":"4/8","4":"4/12"};
        g.draw();
