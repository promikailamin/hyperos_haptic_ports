.class public Lcom/android/server/credentials/metrics/RequestSessionMetric;
.super Ljava/lang/Object;
.source "RequestSessionMetric.java"


# instance fields
.field public final mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

.field public mCandidateBrowsingPhaseMetric:Ljava/util/List;

.field public final mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

.field public final mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

.field public mSequenceCounter:I

.field public final mSessionIdTrackTwo:I


# direct methods
.method public static synthetic $r8$lambda$kEazDx4T6PMjuY4Bf5XvCcdZak8(Ljava/util/Map;Landroid/credentials/CredentialOption;)V
    .registers 3

    .line 204
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 205
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 77
    iput p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    .line 78
    new-instance v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 79
    new-instance v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 80
    new-instance v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-direct {v0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    return-void
.end method


# virtual methods
.method public captureMissingLogMetadata()V
    .registers 5

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenUid()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 350
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3f

    .line 351
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 352
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v1

    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setServiceBeganTimeNanoseconds(J)V

    .line 353
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 354
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMinProviderTimestampNanoseconds()J

    move-result-wide v1

    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryStartTimeNanoseconds(J)V

    .line 355
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 356
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMaxProviderTimestampNanoseconds()J

    move-result-wide v1

    .line 355
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryEndTimeNanoseconds(J)V

    .line 357
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFinalFinishTimeNanoseconds(J)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    :cond_3f
    return-void

    :catch_40
    move-exception p0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during final phase missing metadata logging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RequestSessionMetric"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectChosenClassType(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x14

    .line 272
    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 274
    :try_start_6
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenClassType(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting chosen class type metadata: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;Z)V
    .registers 5

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenUid(I)V

    .line 399
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setPrimary(Z)V

    .line 401
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 402
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryLatencyMicroseconds()I

    move-result v0

    .line 401
    invoke-virtual {p2, v0}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryPhaseLatencyMicroseconds(I)V

    .line 404
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 405
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v0

    .line 404
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setServiceBeganTimeNanoseconds(J)V

    .line 406
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 407
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v0

    .line 406
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryStartTimeNanoseconds(J)V

    .line 408
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 409
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    .line 408
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setQueryEndTimeNanoseconds(J)V

    .line 410
    iget-object p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 411
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object p1

    .line 410
    invoke-virtual {p2, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setResponseCollective(Lcom/android/server/credentials/metrics/shared/ResponseCollective;)V

    .line 412
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFinalFinishTimeNanoseconds(J)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p0

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during metric candidate to final transfer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectChosenProviderStatus(I)V
    .registers 3

    .line 177
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenProviderStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error setting chosen provider status metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectCreateFlowInitialMetricInfo(ZLandroid/credentials/CreateCredentialRequest;)V
    .registers 4

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setOriginSpecified(Z)V

    .line 192
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p2}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 192
    invoke-static {p1, p2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setRequestCounts(Ljava/util/Map;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting create flow metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V
    .registers 4

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setHasException(Z)V

    .line 334
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 335
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setChosenProviderStatus(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during final phase provider status metric logging: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectFrameworkException(Ljava/lang/String;)V
    .registers 3

    .line 301
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    const/16 v0, 0x1e

    .line 302
    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFrameworkException(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during metric logging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V
    .registers 4

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setOriginSpecified(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getRequestCountMap(Landroid/credentials/GetCredentialRequest;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setRequestCounts(Ljava/util/Map;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting get flow initial metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;Z)V
    .registers 3

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    .line 238
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setApiUsedPrepareFlow(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting get flow initial metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectInitialPhaseMetricInfo(JII)V
    .registers 6

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setCredentialServiceStartedTimeNanoseconds(J)V

    .line 120
    iget-object p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p1, p3}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setCallerUid(I)V

    .line 121
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {p0, p4}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->setApiName(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting initial phase metric start info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectMetricPerBrowsingSelect(Landroid/credentials/selection/UserSelectionDialogResult;Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    .registers 4

    .line 255
    :try_start_0
    new-instance v0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    invoke-direct {v0}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;-><init>()V

    .line 257
    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCodeFromString(Ljava/lang/String;)I

    move-result p1

    .line 256
    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->setEntryEnum(I)V

    .line 258
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->setProviderUid(I)V

    .line 259
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting browsing metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiCallStartTime(J)V
    .registers 3

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiCallStartTimeNanoseconds(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting ui start metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V
    .registers 6

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 313
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiPackageName()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {p1, v1, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setOemUiUid(I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 315
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getFallbackUiPackageName()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {p1, v1, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setFallbackUiUid(I)V

    .line 316
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 317
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->createFrom(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    move-result-object p1

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setOemUiUsageStatus(Lcom/android/server/credentials/metrics/OemUiUsageStatus;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error during ui configuration result collection: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiResponseData(ZJ)V
    .registers 5

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiReturned(Z)V

    .line 163
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiCallEndTimeNanoseconds(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected error collecting ui response metric: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectUiReturnedFinalPhase(Z)V
    .registers 3

    .line 134
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->setUiReturned(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error collecting ui end time metric: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    return-object p0
.end method

.method public final getRequestCountMap(Landroid/credentials/GetCredentialRequest;)Ljava/util/Map;
    .registers 4

    .line 201
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    :try_start_5
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during get request count map metric logging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RequestSessionMetric"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSessionIdTrackTwo()I
    .registers 1

    .line 516
    iget p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    return p0
.end method

.method public logApiCalledAtFinish(I)V
    .registers 5

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V

    .line 507
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    iget v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during final metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logAuthEntry(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;)V
    .registers 5

    .line 486
    const-string v0, "RequestSessionMetric"

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 487
    const-string p0, "An authentication entry was not clicked"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_f
    move-exception p0

    goto :goto_1b

    .line 490
    :cond_11
    iget v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_f

    return-void

    .line 492
    :goto_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during auth entry metric emit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logCandidateAggregateMetrics(Ljava/util/Map;)V
    .registers 3

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectAverages(Ljava/util/Map;)V

    .line 469
    iget-object p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, v0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during aggregate candidate logging "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logCandidatePhaseMetrics(Ljava/util/Map;)V
    .registers 4

    .line 449
    :try_start_0
    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    iget-object v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-static {p1, v0, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 451
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v0

    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    .line 452
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v1

    if-ne v0, v1, :cond_28

    goto :goto_29

    :cond_28
    return-void

    .line 453
    :cond_29
    :goto_29
    iget p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    invoke-static {p1, p0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidateGetMetric(Ljava/util/Map;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected error during candidate metric emit: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public returnIncrementSequence()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    return v0
.end method

.method public updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;Z)V
    .registers 4

    .line 372
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    if-eqz p1, :cond_17

    .line 375
    invoke-virtual {p1}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object p1

    .line 376
    invoke-virtual {p0, p1, p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    return-void

    :catch_18
    move-exception p0

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception upon candidate to chosen metric transfer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestSessionMetric"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
