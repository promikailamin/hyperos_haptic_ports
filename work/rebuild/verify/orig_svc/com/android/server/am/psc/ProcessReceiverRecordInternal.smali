.class public abstract Lcom/android/server/am/psc/ProcessReceiverRecordInternal;
.super Ljava/lang/Object;
.source "ProcessReceiverRecordInternal.java"


# instance fields
.field public mBroadcastReceiverSchedGroup:I

.field public mIsReceivingBroadcast:Z

.field public final mServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 32
    iput v0, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mBroadcastReceiverSchedGroup:I

    .line 36
    iput-object p1, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mServiceLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBroadcastReceiverSchedGroup()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mBroadcastReceiverSchedGroup:I

    return p0
.end method

.method public isReceivingBroadcast()Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mIsReceivingBroadcast:Z

    return p0
.end method

.method public setBroadcastReceiverSchedGroup(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mBroadcastReceiverSchedGroup:I

    return-void
.end method

.method public setIsReceivingBroadcast(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->mIsReceivingBroadcast:Z

    return-void
.end method
