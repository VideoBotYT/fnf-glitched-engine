function middleOn(step, duration)
    queueEase(step, step + duration, "opponentSwap", 0.5, "smootherStepInOut")
    queueEase(step, step + duration, "confusion", 360, "quadOut")
    queueEase(step, step + duration, "alpha", 0.5, "smootherStepInOut", 1)
end

function middleOff(step, duration)
    queueEase(step, step + duration, "opponentSwap", 0, "smootherStepInOut")
    queueEase(step, step + duration, "confusion", -360, "quadOut")
    queueEase(step, step + duration, "alpha", 0, "smootherStepInOut", 1)
end

function onCreatePost()
    if difficulty == 3 then
        middleOn(0, 20)
        queueEase(0, 0 + 20, "reverse", 1, "quadInOut", 1)
        queueEase(0, 0 + 20, "alpha", 0, "quadInOut", 1)
        middleOff(132, 20)
        queueEase(132, 132 + 20, "reverse", 0, "quadInOut", 1)
        queueEase(192, 192 + 20, "flip", 1, "quadInOut", 0)
        queueEase(192, 192 + 20, "boost", 1, "quadInOut", 0)
        queueEase(256, 256 + 20, "flip", 0, "quadInOut", 0)
        queueEase(288, 288 + 10, "transformX", -320, "quadInOut", 0)
        queueEase(288, 288 + 10, "transformX", -800, "quadInOut", 1)
        queueEase(288, 288 + 10, "boost", 0, "quadInOut", 0)
        queueEase(384, 384 + 40, "transformX", 0, "quadInOut")
        queueEase(384, 384 + 40, "boost", -4, "quadInOut")
        queueEase(512, 512 + 40, "boost", 2, "quadInOut")
        queueEase(640, 640 + 10, "boost", 0, "quadInOut")
        middleOn(704, 40)
        middleOff(896, 2)
        queueEase(911, 911 + 4, "reverse", 1, "quadInOut")
        queueEase(928, 928 + 4, "invert", 1, "quadInOut")
        queueEase(943, 943 + 40, "reverse", 0, "quadInOut")
        queueEase(943, 943 + 40, "invert", 0, "quadInOut")
        queueEase(1024, 1024 + 20, "boost", 4, "quadInOut")
        queueEase(1152, 1152 + 80, "boost", 0, "quadInOut", 0)
        queueEase(1216, 1216 + 10, "boost", 0, "quadInOut")
        middleOn(1216, 66)
        middleOff(1280, 2)
        queueEase(1392, 1392 + 40, "transformY", -400)
    end
end