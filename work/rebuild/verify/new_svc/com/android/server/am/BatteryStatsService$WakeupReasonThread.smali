.class public final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# instance fields
.field public mDecoder:Ljava/nio/charset/CharsetDecoder;

.field public mUtf16Buffer:Ljava/nio/CharBuffer;

.field public mUtf8Buffer:Ljava/nio/ByteBuffer;

.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public static synthetic $r8$lambda$N2KzrCRugqFjIZq0ZdEw_hdWITk(Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;JJLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->lambda$run$0(JJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 2852
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 2853
    const-string p1, "BatteryStats_wakeupReason"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$run$0(JJLjava/lang/String;)V
    .registers 13

    .line 2880
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteWakeupTimeAndReason(JJLjava/lang/String;)V

    move-wide p2, v2

    move-wide p4, v4

    move-object p1, v6

    .line 2881
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2882
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;JJ)V

    .line 2883
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public run()V
    .registers 12

    const/4 v0, -0x2

    .line 2857
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2859
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2860
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2861
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 2862
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "?"

    .line 2863
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    const/16 v0, 0x200

    .line 2865
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    .line 2866
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    .line 2870
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->waitWakeup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7e

    .line 2871
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmClock(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/Clock;

    move-result-object v8

    monitor-enter v8
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_37} :catch_7f

    .line 2872
    :try_start_37
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmClock(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 2873
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmClock(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 2876
    const-string/jumbo v0, "wakeup_reason"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v9, 0x20000

    invoke-static {v9, v10, v0, v1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 2879
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;JJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2885
    monitor-exit v8

    move-object p0, v2

    goto :goto_2a

    :catchall_7a
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_37 .. :try_end_7d} :catchall_7a

    :try_start_7d
    throw p0
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_7e} :catch_7f

    :cond_7e
    return-void

    :catch_7f
    move-exception v0

    move-object p0, v0

    .line 2888
    const-string v0, "BatteryStatsService"

    const-string v1, "Failure reading wakeup reasons"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final waitWakeup()Ljava/lang/String;
    .registers 5

    .line 2893
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2894
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 2895
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 2897
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    if-nez v0, :cond_1f

    .line 2901
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 2905
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2909
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mDecoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf8Buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 2910
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2913
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mUtf16Buffer:Ljava/nio/CharBuffer;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
