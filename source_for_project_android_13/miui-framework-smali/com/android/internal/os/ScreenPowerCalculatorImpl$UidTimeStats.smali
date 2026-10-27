.class Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;
.super Ljava/lang/Object;
.source "ScreenPowerCalculatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ScreenPowerCalculatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidTimeStats"
.end annotation


# instance fields
.field public blacklist fgTimeMs:J

.field public blacklist screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$UidTimeStats;-><init>()V

    return-void
.end method
