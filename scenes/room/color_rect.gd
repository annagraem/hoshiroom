extends ColorRect

var colorDict = {
                    Data.ColorEnum.BLUE: Color.CORNFLOWER_BLUE,
                    Data.ColorEnum.PURPLE: Color.PURPLE,
                    Data.ColorEnum.PINK: Color.HOT_PINK,
                    Data.ColorEnum.RED: Color.ORANGE_RED,
                    Data.ColorEnum.YELLOW: Color.YELLOW,
                    Data.ColorEnum.GREEN: Color.GREEN_YELLOW,
                    Data.ColorEnum.WHITE: Color.WHITE,
                }

# Called when the node enters the scene tree for the first time.
func _ready():
    color = colorDict[Data.hair_color]
