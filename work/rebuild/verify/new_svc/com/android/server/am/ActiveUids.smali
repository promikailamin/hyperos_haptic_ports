.class public final Lcom/android/server/am/ActiveUids;
.super Ljava/lang/Object;
.source "ActiveUids.java"

# interfaces
.implements Lcom/android/server/am/psc/ActiveUidsInternal;


# instance fields
.field public final mActiveUids:Landroid/util/SparseArray;

.field public final mObserver:Lcom/android/server/am/ActiveUids$Observer;


# direct methods
.method public static synthetic $r8$lambda$NgdZNvkwS6lqiR_KpbqmBNFCCTU(Ljava/io/PrintWriter;Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 134
    const-string v0, "      proc="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActiveUids$Observer;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    .line 60
    iput-object p1, p0, Lcom/android/server/am/ActiveUids;->mObserver:Lcom/android/server/am/ActiveUids$Observer;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 115
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 116
    iget-object v2, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_1f

    .line 117
    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-eq v3, p3, :cond_1f

    goto :goto_66

    :cond_1f
    if-nez v1, :cond_2f

    if-eqz p5, :cond_26

    .line 123
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    :cond_26
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 127
    :cond_2f
    const-string v3, "    UID "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-static {p1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 128
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 129
    const-string v3, "      curProcState="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 130
    const-string v3, " curCapability="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getCurCapability()I

    move-result v3

    invoke-static {p1, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 132
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 133
    new-instance v3, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/am/ActiveUids$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_69
    return v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .registers 9

    const/4 v0, 0x0

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 143
    iget-object v1, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidRecord;

    if-eqz p2, :cond_1e

    .line 144
    invoke-virtual {v1}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v2, p3, :cond_1e

    goto :goto_21

    .line 147
    :cond_1e
    invoke-virtual {v1, p1, p4, p5}, Lcom/android/server/am/UidRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method public get(I)Lcom/android/server/am/UidRecord;
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public put(ILcom/android/server/am/UidRecord;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mObserver:Lcom/android/server/am/ActiveUids$Observer;

    if-eqz p0, :cond_10

    .line 66
    invoke-virtual {p2}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/am/ActiveUids$Observer;->onUidActive(II)V

    :cond_10
    return-void
.end method

.method public put(ILcom/android/server/am/psc/UidRecordInternal;)V
    .registers 3

    .line 73
    check-cast p2, Lcom/android/server/am/UidRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mObserver:Lcom/android/server/am/ActiveUids$Observer;

    if-eqz p0, :cond_c

    .line 81
    invoke-interface {p0, p1}, Lcom/android/server/am/ActiveUids$Observer;->onUidInactive(I)V

    :cond_c
    return-void
.end method

.method public size()I
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public valueAt(I)Lcom/android/server/am/UidRecord;
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/server/am/ActiveUids;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidRecord;

    return-object p0
.end method
