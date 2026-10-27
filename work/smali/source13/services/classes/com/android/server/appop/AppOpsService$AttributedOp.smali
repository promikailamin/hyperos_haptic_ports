.class final Lcom/android/server/appop/AppOpsService$AttributedOp;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedOp"
.end annotation


# instance fields
.field private mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPausedInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPausedInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .registers 4
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 922
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 924
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    .line 925
    return-void
.end method

.method private add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1345
    .local p1, "a":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    .local p2, "b":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_3

    .line 1346
    return-object p2

    .line 1349
    :cond_3
    if-nez p2, :cond_6

    .line 1350
    return-object p1

    .line 1353
    :cond_6
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1354
    .local v0, "numEventsToAdd":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_31

    .line 1355
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1356
    .local v2, "keyOfEventToAdd":J
    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1357
    .local v4, "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1359
    .local v5, "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v5, :cond_2b

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2e

    .line 1360
    :cond_2b
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1354
    .end local v2    # "keyOfEventToAdd":J
    .end local v4    # "bEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v5    # "aEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1364
    .end local v1    # "i":I
    :cond_31
    return-object p1
.end method

.method private deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1413
    .local p1, "original":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    if-nez p1, :cond_3

    .line 1414
    return-object p1

    .line 1417
    :cond_3
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1418
    .local v0, "size":I
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 1419
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_24

    .line 1420
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1419
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1423
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method private finishOrPause(Landroid/os/IBinder;ZZ)V
    .registers 33
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "triggerCallbackIfNeeded"    # Z
    .param p3, "isPausing"    # Z

    .line 1111
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_14

    :cond_13
    const/4 v3, -0x1

    .line 1112
    .local v3, "indexOfToken":I
    :goto_14
    if-gez v3, :cond_1a

    .line 1113
    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    .line 1114
    return-void

    .line 1117
    :cond_1a
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1118
    .local v4, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    const/4 v5, 0x1

    if-nez v2, :cond_2a

    .line 1119
    iget v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    sub-int/2addr v6, v5

    iput v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1122
    :cond_2a
    iget v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-eqz v6, :cond_30

    if-eqz v2, :cond_fb

    .line 1123
    :cond_30
    if-nez v2, :cond_3a

    .line 1124
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 1125
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1128
    :cond_3a
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v6, :cond_45

    .line 1129
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 1132
    :cond_45
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_57

    .line 1133
    new-instance v5, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v13, v5

    goto :goto_58

    :cond_57
    move-object v13, v6

    .line 1136
    .local v13, "proxyCopy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v9

    sub-long v14, v7, v9

    .line 1137
    .local v14, "accessDurationMillis":J
    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    move-object v8, v5

    move-wide v11, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1139
    .local v5, "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v9

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1142
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 1143
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v21

    .line 1144
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v22

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v23

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v25

    .line 1145
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v27

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v28

    .line 1142
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    .line 1147
    if-nez v2, :cond_fb

    .line 1148
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    .line 1149
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 1150
    iput-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1153
    if-eqz p2, :cond_fb

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v6

    if-nez v6, :cond_fb

    .line 1154
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v21, 0x0

    .line 1155
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v22

    .line 1156
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v23

    .line 1154
    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-static/range {v16 .. v23}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 1161
    .end local v5    # "finishedEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v13    # "proxyCopy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v14    # "accessDurationMillis":J
    :cond_fb
    return-void
.end method

.method private finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "isPausing"    # Z

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_e

    .line 1166
    const-string v0, "No ops running or paused"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 1170
    :cond_e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 1171
    .local v0, "indexOfToken":I
    if-gez v0, :cond_1c

    .line 1172
    const-string v2, "No op running or paused for the client"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void

    .line 1174
    :cond_1c
    if-eqz p2, :cond_1f

    .line 1176
    return-void

    .line 1180
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1181
    .local v1, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1182
    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-nez v2, :cond_4a

    .line 1183
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1184
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    .line 1185
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1189
    :cond_4a
    return-void
.end method

.method private finished(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "triggerCallbackIfNeeded"    # Z

    .line 1102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 1103
    return-void
.end method

.method static synthetic lambda$startedOrPaused$0(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x$0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "x$1"    # Landroid/os/IBinder;

    .line 1073
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$smonClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method private started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V
    .registers 21
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "proxyUid"    # I
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxyAttributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "triggerCallbackIfNeeded"    # Z
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    .line 1048
    return-void
.end method

.method private startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    .registers 31
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "proxyUid"    # I
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxyAttributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "triggerCallbackIfNeeded"    # Z
    .param p8, "isStarted"    # Z
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1055
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p5

    if-eqz p7, :cond_2a

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz p8, :cond_2a

    .line 1056
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 1060
    :cond_2a
    const/4 v13, 0x1

    if-eqz p8, :cond_39

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_39

    .line 1061
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_46

    .line 1062
    :cond_39
    if-nez p8, :cond_46

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_46

    .line 1063
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1065
    :cond_46
    :goto_46
    if-eqz p8, :cond_4b

    .line 1066
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_4d

    :cond_4b
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_4d
    move-object v12, v1

    .line 1068
    .local v12, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1069
    .local v16, "startTime":J
    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1070
    .local v18, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-nez v18, :cond_96

    .line 1071
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v1

    .line 1072
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    new-instance v2, Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 1073
    invoke-static {v2, v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    .line 1071
    move-wide/from16 v2, v16

    move-object/from16 v6, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v0, v12

    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    move/from16 v12, p5

    move/from16 v19, v13

    move/from16 v13, p6

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    move-result-object v1

    .line 1076
    .end local v18    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .local v1, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, p5

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v0, p0

    goto :goto_ae

    .line 1078
    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .end local v1    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v18    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    :cond_96
    move-object v0, v12

    move/from16 v19, v13

    move-object v12, v15

    .end local v12    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    invoke-static/range {v18 .. v18}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v1

    move/from16 v13, p5

    if-eq v13, v1, :cond_a9

    .line 1079
    move-object v14, v0

    move-object/from16 v0, p0

    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .local v14, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    invoke-virtual {v0, v13}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    goto :goto_ac

    .line 1078
    .end local v14    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :cond_a9
    move-object v14, v0

    move-object/from16 v0, p0

    .line 1083
    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v14    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_ac
    move-object/from16 v15, v18

    .end local v18    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .local v15, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    :goto_ae
    iget v1, v15, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1085
    if-eqz p8, :cond_d5

    .line 1086
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, v16

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 1090
    :cond_d5
    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 30
    .param p1, "proxyUid"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxyAttributionTag"    # Ljava/lang/String;
    .param p4, "uidState"    # I
    .param p5, "flags"    # I

    .line 939
    move-object/from16 v10, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 940
    .local v22, "accessTime":J
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    .line 943
    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v13, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v15, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v16, p4

    move/from16 v17, p5

    move-wide/from16 v18, v22

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 946
    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;II)V
    .registers 26
    .param p1, "noteTime"    # J
    .param p3, "duration"    # J
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "uidState"    # I
    .param p9, "flags"    # I

    .line 962
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p8 .. p9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 964
    .local v2, "key":J
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_14

    .line 965
    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 968
    :cond_14
    const/4 v4, 0x0

    .line 969
    .local v4, "proxyInfo":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 970
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    goto :goto_2b

    .line 969
    :cond_27
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 974
    :goto_2b
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 975
    .local v5, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v5, :cond_45

    .line 976
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v14

    move-object v8, v5

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-virtual/range {v8 .. v14}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_55

    .line 978
    :cond_45
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v15, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v8, v15

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v14, v2, v3, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 980
    :goto_55
    return-void
.end method

.method public add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V
    .registers 7
    .param p1, "opToAdd"    # Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1376
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1377
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1378
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_17

    :cond_15
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1379
    .local v0, "ignoredEvents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1380
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1383
    .local v1, "numInProgressEvents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    if-ge v2, v1, :cond_5d

    .line 1384
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1386
    .local v3, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    .line 1387
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    .line 1383
    .end local v3    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1391
    .end local v0    # "ignoredEvents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .end local v1    # "numInProgressEvents":I
    .end local v2    # "i":I
    :cond_5d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 1392
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 1393
    return-void
.end method

.method createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 16

    .line 1427
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1430
    .local v0, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1432
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1434
    .local v3, "numInProgressEvents":I
    if-nez v0, :cond_1e

    .line 1435
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v0, v4

    .line 1438
    :cond_1e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v3, :cond_4f

    .line 1439
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1441
    .local v5, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v14, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1442
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    .line 1443
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1441
    invoke-virtual {v0, v6, v7, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 1438
    .end local v5    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1447
    .end local v1    # "now":J
    .end local v3    # "numInProgressEvents":I
    .end local v4    # "i":I
    :cond_4f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 1449
    .local v1, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 20
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "proxyUid"    # I
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxyAttributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "attributionFlags"    # I
    .param p8, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    .line 1200
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1098
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    .line 1099
    return-void
.end method

.method hasAnyTime()Z
    .registers 2

    .line 1404
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_16

    .line 1405
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1404
    :goto_17
    return v0
.end method

.method public isPaused()Z
    .registers 2

    .line 1400
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1396
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method onClientDeath(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1269
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 1270
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1271
    monitor-exit v0

    return-void

    .line 1274
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1275
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1c

    :cond_1a
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1276
    .local v1, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_1c
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1277
    .local v2, "deadEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-eqz v2, :cond_27

    .line 1278
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1281
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 1282
    .end local v1    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .end local v2    # "deadEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    monitor-exit v0

    .line 1283
    return-void

    .line 1282
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onUidStateChanged(I)V
    .registers 23
    .param p1, "newState"    # I

    .line 1291
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1292
    return-void

    .line 1295
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v13

    .line 1297
    .local v13, "isRunning":Z
    if-eqz v13, :cond_18

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1a

    :cond_18
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1299
    .local v0, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_1a
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 1300
    .local v14, "numInProgressEvents":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v15, v1

    .line 1301
    .local v15, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    move-object v11, v0

    move v10, v1

    .end local v0    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .local v10, "i":I
    .local v11, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_2b
    if-ge v10, v14, :cond_f2

    .line 1302
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1304
    .local v9, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-eqz v9, :cond_e7

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v0

    move/from16 v8, p1

    if-eq v0, v8, :cond_e7

    .line 1308
    :try_start_42
    iget v0, v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1309
    .local v0, "numPreviousUnfinishedStarts":I
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    .line 1310
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    move-object/from16 v16, v1

    .line 1312
    .local v16, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_55} :catch_e0

    .line 1316
    if-eqz v16, :cond_92

    .line 1317
    :try_start_57
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    .line 1318
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    const/16 v17, 0x0

    .line 1320
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v18

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v19
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_75} :catch_8a

    .line 1317
    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v8, v17

    move-object/from16 v17, v9

    .end local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .local v17, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    move v9, v13

    move/from16 v20, v10

    .end local v10    # "i":I
    .local v20, "i":I
    move/from16 v10, v18

    move-object/from16 v18, v11

    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .local v18, "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    move/from16 v11, v19

    :try_start_86
    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_89} :catch_b9

    goto :goto_b4

    .line 1332
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .end local v20    # "i":I
    .restart local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v10    # "i":I
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :catch_8a
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    move v1, v10

    .end local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v10    # "i":I
    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v20    # "i":I
    goto/16 :goto_ee

    .line 1322
    .end local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .end local v20    # "i":I
    .restart local v0    # "numPreviousUnfinishedStarts":I
    .restart local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v10    # "i":I
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_92
    move-object/from16 v17, v9

    move/from16 v20, v10

    move-object/from16 v18, v11

    .end local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v10    # "i":I
    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v20    # "i":I
    :try_start_98
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1323
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    const/4 v8, 0x0

    .line 1324
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    .line 1322
    move-object/from16 v1, p0

    move/from16 v6, p1

    move v9, v13

    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_b4} :catch_da

    .line 1327
    :goto_b4
    if-eqz v13, :cond_bf

    :try_start_b6
    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_b8} :catch_b9

    goto :goto_c1

    .line 1332
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :catch_b9
    move-exception v0

    move-object/from16 v11, v18

    move/from16 v1, v20

    goto :goto_ee

    .line 1327
    .restart local v0    # "numPreviousUnfinishedStarts":I
    .restart local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_bf
    :try_start_bf
    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c1} :catch_da

    :goto_c1
    move-object v11, v1

    .line 1328
    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    move/from16 v1, v20

    .end local v20    # "i":I
    .local v1, "i":I
    :try_start_c4
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1329
    .local v2, "newEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    if-eqz v2, :cond_d7

    .line 1330
    iget v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_d7} :catch_d8

    .line 1334
    .end local v0    # "numPreviousUnfinishedStarts":I
    .end local v2    # "newEvent":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v16    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :cond_d7
    goto :goto_ee

    .line 1332
    :catch_d8
    move-exception v0

    goto :goto_ee

    .end local v1    # "i":I
    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v20    # "i":I
    :catch_da
    move-exception v0

    move/from16 v1, v20

    move-object/from16 v11, v18

    .end local v20    # "i":I
    .restart local v1    # "i":I
    goto :goto_ee

    .end local v1    # "i":I
    .end local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v10    # "i":I
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :catch_e0
    move-exception v0

    move-object/from16 v17, v9

    move v1, v10

    move-object/from16 v18, v11

    .end local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v10    # "i":I
    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v1    # "i":I
    .restart local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    goto :goto_ee

    .line 1304
    .end local v1    # "i":I
    .end local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .restart local v10    # "i":I
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :cond_e7
    move-object/from16 v17, v9

    move v1, v10

    move-object/from16 v18, v11

    .line 1301
    .end local v9    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .end local v10    # "i":I
    .end local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v1    # "i":I
    .restart local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    move-object/from16 v11, v18

    .end local v18    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    .restart local v11    # "events":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;>;"
    :goto_ee
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_2b

    .line 1337
    .end local v10    # "i":I
    :cond_f2
    return-void
.end method

.method public pause()V
    .registers 13

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1207
    return-void

    .line 1210
    :cond_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 1211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1214
    :cond_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 1215
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1216
    .local v2, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3, v1, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 1219
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    .line 1221
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    .line 1219
    invoke-static/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 1214
    .end local v2    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1223
    .end local v0    # "i":I
    :cond_53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1224
    return-void
.end method

.method public rejected(II)V
    .registers 11
    .param p1, "uidState"    # I
    .param p2, "flags"    # I

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    .line 991
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V

    .line 993
    return-void
.end method

.method public rejected(JII)V
    .registers 16
    .param p1, "noteTime"    # J
    .param p3, "uidState"    # I
    .param p4, "flags"    # I

    .line 1004
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 1006
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v2, :cond_10

    .line 1007
    new-instance v2, Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 1011
    :cond_10
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 1012
    .local v2, "existingEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v2, :cond_29

    .line 1013
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v9

    move-object v3, v2

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_38

    .line 1015
    :cond_29
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v10, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-wide v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1017
    :goto_38
    return-void
.end method

.method public resume()V
    .registers 37

    .line 1231
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1232
    return-void

    .line 1235
    :cond_9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1a

    .line 1236
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1238
    :cond_1a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 1239
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1241
    .local v1, "shouldSendActive":Z
    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1242
    .local v13, "startTime":J
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_33
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_db

    .line 1243
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 1244
    .local v12, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmClientId(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v12, v2, v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fputmStartElapsedTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V

    .line 1246
    invoke-static {v12, v13, v14}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fputmStartTime(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)V

    .line 1247
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmUidState(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v7

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->-$$Nest$fgetmFlags(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v8

    .line 1249
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v11

    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v16

    .line 1247
    move-wide v9, v13

    move-object/from16 v17, v12

    .end local v12    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    .local v17, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    move/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 1250
    if-eqz v1, :cond_aa

    .line 1251
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v23, 0x1

    .line 1252
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    .line 1251
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v18 .. v25}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 1256
    :cond_aa
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    .line 1257
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x2

    .line 1258
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v34

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v35

    .line 1256
    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-static/range {v26 .. v35}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mscheduleOpStartedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 1242
    .end local v17    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_33

    .line 1260
    .end local v15    # "i":I
    :cond_db
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 1261
    return-void
.end method

.method public started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 19
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "proxyUid"    # I
    .param p3, "proxyPackageName"    # Ljava/lang/String;
    .param p4, "proxyAttributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "attributionFlags"    # I
    .param p8, "attributionChainId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V

    .line 1038
    return-void
.end method
