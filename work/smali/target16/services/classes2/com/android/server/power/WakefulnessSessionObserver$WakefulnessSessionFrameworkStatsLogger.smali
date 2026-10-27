.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToLogUserActivityEvent(I)I
    .registers 2

    .line 0
    packed-switch p1, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public logDimEvent(IIIIII)V
    .registers 7

    .line 770
    invoke-virtual {p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result p3

    const/16 p0, 0x363

    .line 771
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    return-void
.end method

.method public logSessionEvent(IIJIJI)V
    .registers 19

    .line 739
    invoke-virtual {p0, p5}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result v5

    const/16 v0, 0x345

    move/from16 p0, p8

    int-to-long v8, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v6, p6

    .line 740
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJJ)V

    return-void
.end method

.method public logTimeoutOverrideEvent(IIII)V
    .registers 12

    int-to-long v3, p3

    int-to-long v5, p4

    const/16 v0, 0x344

    move v1, p1

    move v2, p2

    .line 755
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    return-void
.end method
