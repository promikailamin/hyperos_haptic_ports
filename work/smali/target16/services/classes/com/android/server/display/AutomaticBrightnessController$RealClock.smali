.class public Lcom/android/server/display/AutomaticBrightnessController$RealClock;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Clock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController$RealClock;-><init>()V

    return-void
.end method


# virtual methods
.method public getSensorEventScaleTime()J
    .registers 3

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public uptimeMillis()J
    .registers 3

    .line 1659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
