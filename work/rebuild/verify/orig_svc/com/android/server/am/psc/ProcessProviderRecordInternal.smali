.class public abstract Lcom/android/server/am/psc/ProcessProviderRecordInternal;
.super Ljava/lang/Object;
.source "ProcessProviderRecordInternal.java"


# instance fields
.field public mLastProviderTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 25
    iput-wide v0, p0, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->mLastProviderTime:J

    return-void
.end method


# virtual methods
.method public getLastProviderTime()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->mLastProviderTime:J

    return-wide v0
.end method

.method public abstract getProviderAt(I)Lcom/android/server/am/psc/ContentProviderRecordInternal;
.end method

.method public abstract getProviderConnectionAt(I)Lcom/android/server/am/psc/ContentProviderConnectionInternal;
.end method

.method public abstract numberOfProviderConnections()I
.end method

.method public abstract numberOfProviders()I
.end method

.method public setLastProviderTime(J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/android/server/am/psc/ProcessProviderRecordInternal;->mLastProviderTime:J

    return-void
.end method
