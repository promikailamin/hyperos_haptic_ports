.class public Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
.super Ljava/lang/Object;
.source "BatteryStatsManagerStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsManagerStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoleCalculateApp"
.end annotation


# instance fields
.field public blacklist oldBin:I

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist refreshRate:F

.field public blacklist screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 13
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    .line 353
    const/16 v0, 0x64

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_22

    .line 358
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    rsub-int v6, v1, -0x2710

    const/4 v7, 0x0

    move-object v3, v9

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v9, v2, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 361
    .end local v1    # "i":I
    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist reset(J)V
    .registers 6
    .param p1, "elapsedRealtimeUs"    # J

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    .line 365
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
