.class public final Lcom/android/server/am/ProcessReceiverRecord;
.super Lcom/android/server/am/psc/ProcessReceiverRecordInternal;
.source "ProcessReceiverRecord.java"


# instance fields
.field public final mReceivers:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;-><init>(Ljava/lang/Object;)V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addReceiver(Lcom/android/server/am/ReceiverList;)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 6

    .line 65
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    const-string/jumbo p3, "mIsReceivingBroadcast="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->isReceivingBroadcast()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string/jumbo p3, "mBroadcastReceiverSchedGroup="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessReceiverRecordInternal;->getBroadcastReceiverSchedGroup()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 72
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_4e

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mReceivers:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    iget-object p3, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_38
    if-ge p4, p3, :cond_4e

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  - "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_38

    :cond_4e
    return-void
.end method

.method public numberOfReceivers()I
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public onCleanupApplicationRecordLocked()V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 59
    iget-object v1, p0, Lcom/android/server/am/ProcessReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 61
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeReceiver(Lcom/android/server/am/ReceiverList;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/server/am/ProcessReceiverRecord;->mReceivers:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
