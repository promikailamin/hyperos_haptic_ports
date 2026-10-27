.class Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/CriticalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSanitizer"
.end annotation


# instance fields
.field mTraceProcessClassEnum:I

.field mTraceProcessName:Ljava/lang/String;

.field mTraceUid:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "traceProcessClassEnum"    # I
    .param p2, "traceProcessName"    # Ljava/lang/String;
    .param p3, "traceUid"    # I

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    .line 457
    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    .line 458
    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    .line 459
    return-void
.end method

.method private static sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p0, "base"    # Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 500
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 502
    .local v0, "anr":Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 503
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 504
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 506
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    .line 507
    .local v1, "sanitized":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    invoke-virtual {v1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 508
    return-object v1
.end method

.method private static sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 4
    .param p0, "base"    # Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 536
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 537
    .local v0, "sanitized":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 538
    return-object v0
.end method

.method private static sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p0, "base"    # Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 512
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    .line 514
    .local v0, "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 515
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 516
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 518
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    .line 519
    .local v1, "sanitized":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    invoke-virtual {v1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 520
    return-object v1
.end method

.method private static sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3
    .param p0, "base"    # Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 524
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    .line 526
    .local v0, "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 527
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 528
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 530
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    .line 531
    .local v1, "sanitized":Lcom/android/server/criticalevents/nano/CriticalEventProto;
    invoke-virtual {v1, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 532
    return-object v1
.end method

.method private shouldSanitize(ILjava/lang/String;I)Z
    .registers 8
    .param p1, "processClassEnum"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    iget-object v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    if-ne v2, p3, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    .line 494
    .local v2, "sameApp":Z
    :goto_13
    if-ne p1, v1, :cond_1c

    iget v3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    if-ne v3, v1, :cond_1c

    if-nez v2, :cond_1c

    move v0, v1

    :cond_1c
    return v0
.end method


# virtual methods
.method process(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 6
    .param p1, "event"    # Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 468
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasAnr()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 469
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v0

    .line 470
    .local v0, "anr":Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 471
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    return-object v1

    .line 473
    .end local v0    # "anr":Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    :cond_1b
    goto :goto_54

    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasJavaCrash()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 474
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v0

    .line 475
    .local v0, "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 476
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    return-object v1

    .line 475
    .end local v0    # "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    :cond_37
    goto :goto_53

    .line 478
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasNativeCrash()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 479
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    .line 480
    .local v0, "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 481
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v1

    return-object v1

    .line 478
    .end local v0    # "crash":Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    :cond_53
    :goto_53
    nop

    .line 485
    :cond_54
    :goto_54
    return-object p1
.end method
