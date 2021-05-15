class Sprite
  class <<self
    attr_reader :objects
  end
  @objects = []
  @objects << {
    x: 100,
    y: 100,
    w: 48,
    h: 96,
    path: 'sprites/non-free/Modern_Interiors/test.png',
    source_x: 0,
    source_y: 288,
    source_w: 48,
    source_h: 96
  }
  @objects << {
    x: 100,
    y: 100,
    w: 48,
    h: 96,
    path: 'sprites/non-free/Modern_Interiors/test.png',
    source_x: 48,
    source_y: 288,
    source_w: 48,
    source_h: 96
  }
end
