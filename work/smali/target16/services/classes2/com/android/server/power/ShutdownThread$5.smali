.class public Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$endTime:J

.field public final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6

    .line 684
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 686
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smnewTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 693
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_1f

    :cond_1d
    move v4, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v4, v3

    .line 694
    :goto_20
    const-string v5, "ShutdownThread"

    if-nez v4, :cond_33

    .line 695
    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smmetricStarted(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    .line 700
    :cond_33
    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_3e
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_a9

    .line 704
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmRebootHasProgressBar()Z

    move-result v8

    if-eqz v8, :cond_63

    .line 705
    iget v8, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v9, v8

    sub-long/2addr v9, v6

    long-to-double v6, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v6, v9

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x6

    .line 708
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/android/server/power/ShutdownThread;->-$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_63
    if-nez v4, :cond_91

    .line 712
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v4

    xor-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_90

    .line 714
    const-string v4, "Radio turned off."

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smmetricEnded(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetTRON_METRICS()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;

    move-result-object v7

    .line 717
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v4, "ShutdownRadio"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_90
    move v4, v6

    :cond_91
    if-eqz v4, :cond_9d

    .line 722
    const-string v0, "Radio shutdown complete."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, p0, v2

    return-void

    :cond_9d
    const-wide/16 v6, 0x64

    .line 726
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 727
    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    goto :goto_3e

    :cond_a9
    return-void
.end method
