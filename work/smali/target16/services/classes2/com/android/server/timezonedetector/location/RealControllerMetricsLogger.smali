.class public final Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;
.super Ljava/lang/Object;
.source "RealControllerMetricsLogger.java"

# interfaces
.implements Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metricsState(Ljava/lang/String;)I
    .registers 2

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    goto :goto_54

    :sswitch_8
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x7

    return p0

    :sswitch_12
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x3

    return p0

    :sswitch_1c
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x4

    return p0

    :sswitch_26
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x5

    return p0

    :sswitch_30
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x6

    return p0

    :sswitch_3a
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_54

    :sswitch_40
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x1

    return p0

    :sswitch_4a
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x2

    return p0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return p0

    :sswitch_data_56
    .sparse-switch
        -0x4584e253 -> :sswitch_4a
        -0x1be9cf16 -> :sswitch_40
        0x19d1382a -> :sswitch_3a
        0x1c83a5f9 -> :sswitch_30
        0x33ff1fc9 -> :sswitch_26
        0x52aa9882 -> :sswitch_1c
        0x72462c4d -> :sswitch_12
        0x7b29883d -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public onStateChange(Ljava/lang/String;)V
    .registers 2

    const/16 p0, 0x19f

    .line 53
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;->metricsState(Ljava/lang/String;)I

    move-result p1

    .line 51
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method
