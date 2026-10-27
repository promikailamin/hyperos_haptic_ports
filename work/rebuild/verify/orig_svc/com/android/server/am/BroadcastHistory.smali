.class public Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "BroadcastHistory.java"


# instance fields
.field public final MAX_BROADCAST_HISTORY:I

.field public final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mFrozenBroadcasts:Ljava/util/ArrayList;

.field public mHistoryNext:I

.field public final mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

.field public final mPendingBroadcasts:Ljava/util/ArrayList;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 78
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    .line 46
    iget v0, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 47
    iget p1, p1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    iput p1, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 49
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 50
    new-array v0, p1, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 52
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 53
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    return-void
.end method


# virtual methods
.method public addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 7

    .line 142
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 145
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 147
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v3, v0, v1

    .line 148
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v3, v0, v1

    .line 149
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    iget-wide v3, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v3, v0, v1

    .line 150
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v1

    .line 151
    iget p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    return-void
.end method

.method public final dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11

    .line 337
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " broadcasts:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 339
    const-string p0, "    <empty>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_20
    if-ltz p0, :cond_55

    .line 343
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    if-eqz p4, :cond_37

    .line 344
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 345
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_52

    .line 348
    :cond_37
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  broadcast #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v1, "    "

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    if-eqz p4, :cond_51

    if-nez p5, :cond_51

    goto :goto_56

    :cond_51
    move v1, v0

    :goto_52
    add-int/lit8 p0, p0, -0x1

    goto :goto_20

    :cond_55
    move v0, v1

    :goto_56
    if-nez v0, :cond_5d

    .line 356
    const-string p0, "    <no-matches>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 16
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 167
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 168
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    const-wide v3, 0x20b00000007L

    .line 169
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 172
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    const-wide v2, 0x20b00000008L

    .line 173
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 176
    :cond_38
    iget v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    move v1, v0

    .line 181
    :cond_3b
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v2, v2, v1

    if-eqz v2, :cond_50

    const-wide v4, 0x20b00000005L

    .line 184
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_50
    if-ne v1, v0, :cond_3b

    .line 188
    iget v2, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    move v0, v2

    .line 190
    :goto_55
    iget v1, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v1, v0

    if-nez v4, :cond_63

    move-object v5, p1

    goto :goto_a0

    :cond_63
    const-wide v5, 0x20b00000006L

    .line 195
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide v6, 0x10b00000001L

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    .line 196
    invoke-virtual/range {v4 .. v11}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 198
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000002L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 200
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 202
    iget-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v6, p1, v0

    const-wide v8, 0x10300000004L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 204
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_a0
    if-ne v0, v2, :cond_a3

    return-void

    :cond_a3
    move-object p1, v5

    goto :goto_55
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z
    .registers 25
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 213
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Frozen"

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 214
    iget-object v3, v0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    const-string v6, "Pending"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastHistory;->dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;)V

    .line 220
    iget v3, v0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    const/4 v6, -0x1

    move v8, v3

    move v9, v6

    const/4 v10, 0x0

    .line 225
    :goto_20
    iget v11, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    invoke-virtual {v0, v8, v6, v11}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v8

    .line 226
    iget-object v11, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v11, v11, v8

    .line 227
    const-string v12, "    extras: "

    const-string v13, ": "

    const-string v14, "  #"

    const-string v15, "    "

    if-nez v11, :cond_36

    goto/16 :goto_c9

    :cond_36
    add-int/lit8 v9, v9, 0x1

    if-eqz v7, :cond_44

    .line 232
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto/16 :goto_c9

    :cond_44
    if-eqz v4, :cond_54

    .line 235
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 236
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto/16 :goto_c9

    :cond_54
    if-nez v10, :cond_5f

    .line 241
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 244
    const-string v5, "  Historical broadcasts:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 247
    :cond_5f
    const-string v5, ":"

    const-string v6, "  Historical Broadcast #"

    if-eqz v4, :cond_74

    .line 248
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v11, v1, v15, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    if-nez p5, :cond_c9

    goto :goto_cb

    :cond_74
    if-eqz p5, :cond_83

    .line 255
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v11, v1, v15, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    goto :goto_c9

    .line 259
    :cond_83
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6, v6, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v4, :cond_b7

    iget-object v5, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eq v4, v5, :cond_b7

    .line 263
    const-string v4, "    targetComp: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_b7
    iget-object v4, v11, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_c9

    .line 267
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    if-ne v8, v3, :cond_1a7

    :goto_cb
    if-nez v7, :cond_114

    if-nez p3, :cond_114

    .line 273
    iget v3, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    if-eqz p5, :cond_d7

    move v5, v3

    const/4 v9, -0x1

    const/4 v10, 0x0

    goto :goto_ee

    :cond_d7
    move v5, v3

    move v4, v9

    :goto_d9
    if-lez v4, :cond_ee

    if-eq v5, v3, :cond_ee

    .line 281
    iget v6, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v7, v6}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v5

    .line 282
    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v6, v6, v5

    if-nez v6, :cond_eb

    goto :goto_d9

    :cond_eb
    add-int/lit8 v4, v4, -0x1

    goto :goto_d9

    .line 292
    :cond_ee
    :goto_ee
    iget v4, v0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/am/BroadcastHistory;->ringAdvance(III)I

    move-result v5

    .line 293
    iget-object v4, v0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v4, v4, v5

    if-nez v4, :cond_fe

    const/4 v11, 0x0

    goto/16 :goto_1a2

    :cond_fe
    if-nez v10, :cond_109

    .line 299
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 302
    const-string v7, "  Historical broadcasts summary:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_109
    if-nez p5, :cond_118

    const/16 v7, 0x32

    if-lt v9, v7, :cond_118

    .line 306
    const-string v0, "  ..."

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_114
    :goto_114
    const/16 v16, 0x1

    goto/16 :goto_1a6

    :cond_118
    add-int/lit8 v9, v9, 0x1

    .line 310
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 311
    invoke-virtual {v4, v11, v7, v7, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v7, v7, v5

    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v17, v6, v5

    sub-long v7, v7, v17

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 315
    const-string v6, " dispatch "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-object v6, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v6, v6, v5

    iget-object v8, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v17, v8, v5

    sub-long v6, v6, v17

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 318
    const-string v6, " finish"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string v6, "    enq="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    const-string v6, " disp="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v6, " fin="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    new-instance v6, Ljava/util/Date;

    iget-object v7, v0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    aget-wide v7, v7, v5

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1a2

    .line 327
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a2
    :goto_1a2
    if-ne v5, v3, :cond_ee

    goto/16 :goto_114

    :goto_1a6
    return v16

    :cond_1a7
    move-object/from16 v4, p3

    const/4 v6, -0x1

    goto/16 :goto_20
.end method

.method public getPendingBroadcastsCount()I
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_11
    return-void
.end method

.method public onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastHistory;->updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V

    .line 110
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final ringAdvance(III)I
    .registers 4

    .line 0
    add-int/2addr p1, p2

    if-gez p1, :cond_6

    add-int/lit8 p3, p3, -0x1

    return p3

    :cond_6
    if-lt p1, p3, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return p1
.end method

.method public final updatePendingBroadcastCounterAndLogToTrace(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_18

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_18
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string/jumbo v1, "null"

    .line 122
    :cond_1f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_29

    const/4 v2, 0x0

    goto :goto_2d

    .line 123
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2d
    add-int/2addr v2, p2

    if-nez v2, :cond_41

    .line 125
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 127
    iget-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcastCountsPerUid:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_48

    .line 130
    :cond_41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_48
    :goto_48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x40

    const-string p2, "Broadcasts pending per uid"

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 135
    const-string p1, "Broadcasts pending"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method
