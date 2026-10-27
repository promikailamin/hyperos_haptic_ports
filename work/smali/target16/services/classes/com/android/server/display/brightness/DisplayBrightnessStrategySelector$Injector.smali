.class Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;
.super Ljava/lang/Object;
.source "DisplayBrightnessStrategySelector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
    .registers 2

    .line 450
    new-instance p0, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;-><init>(Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy$Injector;)V

    return-object p0
.end method

.method public getAutomaticBrightnessStrategy1(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
    .registers 4

    .line 436
    new-instance p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method

.method public getAutomaticBrightnessStrategy2(Landroid/content/Context;I)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .registers 3

    .line 441
    new-instance p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    return-object p0
.end method

.method public getBoostBrightnessStrategy()Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;
    .registers 1

    .line 423
    new-instance p0, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getDozeBrightnessStrategy(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;
    .registers 5

    .line 411
    new-instance p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)V

    return-object p0
.end method

.method public getFallbackBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;
    .registers 1

    .line 454
    new-instance p0, Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getFollowerBrightnessStrategy(I)Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
    .registers 2

    .line 427
    new-instance p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;-><init>(I)V

    return-object p0
.end method

.method public getInvalidBrightnessStrategy()Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;
    .registers 1

    .line 431
    new-instance p0, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getOffloadBrightnessStrategy(Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;
    .registers 2

    .line 446
    new-instance p0, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object p0
.end method

.method public getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
    .registers 1

    .line 415
    new-instance p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getScreenOffBrightnessStrategy()Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;
    .registers 1

    .line 406
    new-instance p0, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;-><init>()V

    return-object p0
.end method

.method public getTemporaryBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
    .registers 1

    .line 419
    new-instance p0, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;-><init>()V

    return-object p0
.end method
