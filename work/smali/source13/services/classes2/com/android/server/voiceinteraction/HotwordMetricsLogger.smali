.class public final Lcom/android/server/voiceinteraction/HotwordMetricsLogger;
.super Ljava/lang/Object;
.source "HotwordMetricsLogger.java"


# static fields
.field private static final METRICS_INIT_DETECTOR_DSP:I = 0x1

.field private static final METRICS_INIT_DETECTOR_SOFTWARE:I = 0x2

.field private static final METRICS_INIT_NORMAL_DETECTOR:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static getCreateMetricsDetectorType(I)I
    .registers 2
    .param p0, "detectorType"    # I

    .line 101
    packed-switch p0, :pswitch_data_a

    .line 107
    const/4 v0, 0x0

    return v0

    .line 103
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 105
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static getDetectorMetricsDetectorType(I)I
    .registers 2
    .param p0, "detectorType"    # I

    .line 145
    packed-switch p0, :pswitch_data_a

    .line 151
    const/4 v0, 0x0

    return v0

    .line 147
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 149
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static getInitMetricsDetectorType(I)I
    .registers 2
    .param p0, "detectorType"    # I

    .line 123
    packed-switch p0, :pswitch_data_a

    .line 129
    const/4 v0, 0x0

    return v0

    .line 125
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 127
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static getKeyphraseMetricsDetectorType(I)I
    .registers 2
    .param p0, "detectorType"    # I

    .line 134
    packed-switch p0, :pswitch_data_a

    .line 140
    const/4 v0, 0x0

    return v0

    .line 136
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 138
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static getRestartMetricsDetectorType(I)I
    .registers 2
    .param p0, "detectorType"    # I

    .line 112
    packed-switch p0, :pswitch_data_a

    .line 118
    const/4 v0, 0x0

    return v0

    .line 114
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 116
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static writeDetectorCreateEvent(IZI)V
    .registers 5
    .param p0, "detectorType"    # I
    .param p1, "isCreated"    # Z
    .param p2, "uid"    # I

    .line 59
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getCreateMetricsDetectorType(I)I

    move-result v0

    .line 60
    .local v0, "metricsDetectorType":I
    const/16 v1, 0x1ae

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZI)V

    .line 62
    return-void
.end method

.method public static writeDetectorEvent(III)V
    .registers 5
    .param p0, "detectorType"    # I
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .line 95
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getDetectorMetricsDetectorType(I)I

    move-result v0

    .line 96
    .local v0, "metricsDetectorType":I
    const/16 v1, 0x1b2

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 98
    return-void
.end method

.method public static writeKeyphraseTriggerEvent(II)V
    .registers 4
    .param p0, "detectorType"    # I
    .param p1, "result"    # I

    .line 86
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getKeyphraseMetricsDetectorType(I)I

    move-result v0

    .line 87
    .local v0, "metricsDetectorType":I
    const/16 v1, 0x1b1

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 89
    return-void
.end method

.method public static writeServiceInitResultEvent(II)V
    .registers 4
    .param p0, "detectorType"    # I
    .param p1, "result"    # I

    .line 68
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getInitMetricsDetectorType(I)I

    move-result v0

    .line 69
    .local v0, "metricsDetectorType":I
    const/16 v1, 0x1af

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 71
    return-void
.end method

.method public static writeServiceRestartEvent(II)V
    .registers 4
    .param p0, "detectorType"    # I
    .param p1, "reason"    # I

    .line 77
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->getRestartMetricsDetectorType(I)I

    move-result v0

    .line 78
    .local v0, "metricsDetectorType":I
    const/16 v1, 0x1b0

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 80
    return-void
.end method
