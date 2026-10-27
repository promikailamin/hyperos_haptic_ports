.class public Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

.field public mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public isLinked()Z
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    const-string v1, "ProcessRecordNode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v2

    goto :goto_2c

    :cond_2b
    const/4 v2, -0x1

    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v2

    goto :goto_3d

    :cond_3b
    const/16 v2, 0x3e9

    :goto_3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 299
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unlink()V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eqz v0, :cond_8

    .line 272
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object v1, v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 274
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eqz v1, :cond_e

    .line 275
    iput-object v0, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    :cond_e
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    return-void
.end method
