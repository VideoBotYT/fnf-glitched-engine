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
        middleOn(127, 10)
        middleOff(258, 10)
        queueEase(258, 258 + 10, "reverse", 1, "quadInOut")
        middleOn(322, 10)
        queueEase(386, 386 + 10, "reverse", 0, "quadInOut")
        middleOff(386, 10)
        queueEase(512, 512 + 2, "boost", 1.5, "quadInOut")
        queueEase(608, 608 + 0, "boost", 0, "quadInOut", 1)
        queueEase(640, 640 + 0, "boost", 2, "quadInOut", 1)
        queueEase(688, 688 + 0, "boost", 0, "quadInOut", 0)
        queueEase(745, 745 + 8, "boost", 2, "quadInOut", 0)
        queueEase(745, 745 + 8, "boost", 0, "quadInOut", 1)
        queueEase(784, 784 + 8, "boost", 0, "quadInOut")
        queueEase(783, 783 + 2, "alpha", 1, "quadInOut", 0)
        queueEase(784, 784 + 0, "transformX", 20, "quadInOut", 1)
        queueEase(788, 788 + 0, "transformX", 40, "quadInOut", 1)
        queueEase(792, 792 + 0, "transformX", 100, "quadInOut", 1)
        queueEase(795, 795 + 0, "transformX", 120, "quadInOut", 1)
        queueEase(798, 798 + 0, "transformX", 160, "quadInOut", 1)
        queueEase(802, 802 + 10, "transformX", 0, "quadInOut", 1)
        queueEase(802, 802 + 10, "confusion", 720, "quadInOut", 1)
        queueEase(830, 830 + 2, "alpha", 1, "quadInOut", 1)
        queueEase(830, 830 + 2, "alpha", 0, "quadInOut", 0)
        queueEase(848, 848 + 0, "transformX", -20, "quadInOut", 0)
        queueEase(852, 852 + 0, "transformX", -40, "quadInOut", 0)
        queueEase(855, 855 + 0, "transformX", -100, "quadInOut", 0)
        queueEase(860, 860 + 0, "transformX", -120, "quadInOut", 0)
        queueEase(861, 861 + 0, "transformX", -160, "quadInOut", 0)
        queueEase(866, 866 + 10, "transformX", 0, "quadInOut", 0)
        queueEase(866, 866 + 10, "confusion", -720, "quadInOut", 0)
        queueEase(868, 868 + 2, "alpha", 0, "quadInOut", 1)
        queueEase(912, 912 + 2, "reverse", 1, "quadInOut", 1)
        queueEase(915, 915 + 2, "flip", 1, "quadInOut", 1)
        queueEase(920, 920 + 2, "reverse", 0, "quadInOut", 1)
        queueEase(924, 924 + 2, "reverse", 1, "quadInOut", 1)
        queueEase(926, 926 + 2, "flip", 0, "quadInOut", 1)
        queueEase(926, 926 + 2, "reverse", 0, "quadInOut", 1)
        queueEase(976, 976 + 2, "reverse", 1, "quadInOut", 0)
        queueEase(980, 980 + 2, "flip", 1, "quadInOut", 0)
        queueEase(982, 982 + 2, "reverse", 0, "quadInOut", 0)
        queueEase(988, 988 + 2, "reverse", 1, "quadInOut", 0)
        queueEase(990, 990 + 10, "flip", 0, "quadInOut", 0)
        queueEase(990, 990 + 10, "reverse", 0, "quadInOut", 0)
        middleOn(990, 10)
        queueEase(1024, 1024 + 30, "transformY", -200, "quadInOut")
    end
end