.class Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;
.super Ljava/lang/Object;
.source "DisplayBrightnessController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayBrightnessStrategySelector(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
    .registers 11

    .line 646
    new-instance v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;ILcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-object v0
.end method
