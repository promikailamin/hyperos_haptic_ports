.class public Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;
.super Ljava/lang/Object;
.source "CandidateBrowsingPhaseMetric.java"


# instance fields
.field public mEntryEnum:I

.field public mProviderUid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    return-void
.end method


# virtual methods
.method public getEntryEnum()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    return p0
.end method

.method public getProviderUid()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    return p0
.end method

.method public setEntryEnum(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    return-void
.end method

.method public setProviderUid(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    return-void
.end method
