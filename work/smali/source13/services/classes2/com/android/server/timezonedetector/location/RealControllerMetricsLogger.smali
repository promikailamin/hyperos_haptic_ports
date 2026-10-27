.class final Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;
.super Ljava/lang/Object;
.source "RealControllerMetricsLogger.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static metricsState(Ljava/lang/String;)I
    .registers 10
    .param p0, "state"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_6c

    :cond_f
    goto :goto_60

    :sswitch_10
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_61

    :sswitch_1a
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v7

    goto :goto_61

    :sswitch_24
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    goto :goto_61

    :sswitch_2e
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_61

    :sswitch_38
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_61

    :sswitch_42
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_61

    :sswitch_4c
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_61

    :sswitch_56
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v8

    goto :goto_61

    :goto_60
    const/4 v0, -0x1

    :goto_61
    packed-switch v0, :pswitch_data_8e

    .line 77
    return v1

    .line 74
    :pswitch_65
    return v2

    .line 72
    :pswitch_66
    return v3

    .line 70
    :pswitch_67
    return v4

    .line 68
    :pswitch_68
    return v5

    .line 66
    :pswitch_69
    return v6

    .line 64
    :pswitch_6a
    return v7

    .line 61
    :pswitch_6b
    return v8

    :sswitch_data_6c
    .sparse-switch
        -0x4584e253 -> :sswitch_56
        -0x1be9cf16 -> :sswitch_4c
        0x19d1382a -> :sswitch_42
        0x1c83a5f9 -> :sswitch_38
        0x33ff1fc9 -> :sswitch_2e
        0x52aa9882 -> :sswitch_24
        0x72462c4d -> :sswitch_1a
        0x7b29883d -> :sswitch_10
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method public onStateChange(Ljava/lang/String;)V
    .registers 4
    .param p1, "state"    # Ljava/lang/String;

    .line 51
    nop

    .line 53
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;->metricsState(Ljava/lang/String;)I

    move-result v0

    .line 51
    const/16 v1, 0x19f

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 54
    return-void
.end method
