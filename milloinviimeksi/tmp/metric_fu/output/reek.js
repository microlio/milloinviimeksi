              var g = new Bluff.Line('graph', "1000x600");
      g.theme_37signals();
      g.tooltips = true;
      g.title_font_size = "24px"
      g.legend_font_size = "12px"
      g.marker_font_size = "10px"

        g.title = 'Reek: code smells';
        g.data('Control Couple', [1,1,,,1,1,1])
g.data('ControlCouple', [,,1,1,,,,1])
g.data('Duplication', [6,6,8,8,6,6,6,6])
g.data('Irresponsible Module', [3,5,,,7,7,7])
g.data('IrresponsibleModule', [,,7,7,,,,7])
g.data('Long Method', [2,2,,,2,2,2])
g.data('LongMethod', [,,2,2,,,,2])
g.data('Uncommunicative Name', [,,,,2])

        g.labels = {"5":"4/13","0":"3/27","6":"4/15","1":"3/29","7":"4/19","2":"4/7","3":"4/8","4":"4/12"};
        g.draw();
