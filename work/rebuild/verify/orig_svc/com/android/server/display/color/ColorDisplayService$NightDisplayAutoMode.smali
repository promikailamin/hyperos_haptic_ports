.class public abstract Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    return-void
.end method


# virtual methods
.method public abstract onActivated(Z)V
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
