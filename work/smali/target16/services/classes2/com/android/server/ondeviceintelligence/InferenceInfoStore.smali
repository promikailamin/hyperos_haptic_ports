.class public Lcom/android/server/ondeviceintelligence/InferenceInfoStore;
.super Ljava/lang/Object;
.source "InferenceInfoStore.java"


# instance fields
.field public final inferenceInfos:Ljava/util/TreeSet;

.field public final maxAgeMs:J


# direct methods
.method public static synthetic $r8$lambda$tffXQQ2ks2SHiG2V02f09zrsI4w(JLandroid/app/ondeviceintelligence/InferenceInfo;)Z
    .registers 5

    .line 45
    invoke-virtual {p2}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    .line 39
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;-><init>()V

    .line 40
    invoke-static {p2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    return-void
.end method

.method public static toInferenceInfo(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)Landroid/app/ondeviceintelligence/InferenceInfo;
    .registers 4

    .line 107
    new-instance v0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    iget v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    invoke-direct {v0, v1}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;-><init>(I)V

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setStartTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setEndTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    invoke-virtual {v0, v1, v2}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setSuspendedTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->build()Landroid/app/ondeviceintelligence/InferenceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized add(Landroid/app/ondeviceintelligence/InferenceInfo;)V
    .registers 6

    monitor-enter p0

    .line 88
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/InferenceInfo;

    invoke-virtual {v2}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 91
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    :catchall_26
    move-exception p1

    goto :goto_2f

    .line 93
    :cond_28
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_26

    .line 94
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_26

    throw p1
.end method

.method public final declared-synchronized add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    .registers 6

    monitor-enter p0

    .line 97
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ondeviceintelligence/InferenceInfo;

    invoke-virtual {v2}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 100
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    :catchall_26
    move-exception p1

    goto :goto_33

    .line 102
    :cond_28
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->toInferenceInfo(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)Landroid/app/ondeviceintelligence/InferenceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_26

    .line 103
    monitor-exit p0

    return-void

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_26

    throw p1
.end method

.method public addInferenceInfoFromBundle(Landroid/os/Bundle;)V
    .registers 4

    .line 69
    const-string v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_16

    .line 74
    :cond_9
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_16

    .line 78
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    .line 83
    :catch_17
    const-string p0, "InferenceInfoStore"

    const-string p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    .registers 4

    .line 49
    const-string v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1b

    .line 54
    :cond_9
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    .line 57
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    .line 64
    :catch_1c
    const-string p0, "InferenceInfoStore"

    const-string p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    .line 113
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InferenceInfoStore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "maxAgeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "inferenceInfos ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ondeviceintelligence/InferenceInfo;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/ondeviceintelligence/InferenceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_90

    goto :goto_68

    :catchall_90
    move-exception p1

    goto :goto_94

    .line 120
    :cond_92
    monitor-exit p0

    return-void

    :goto_94
    :try_start_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_90

    throw p1
.end method

.method public getLatestInferenceInfo(J)Ljava/util/List;
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
