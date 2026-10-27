.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidObserverController$UidObserverRegistration;,
        Lcom/android/server/am/UidObserverController$ChangeRecord;
    }
.end annotation


# static fields
.field private static final SLOW_UID_OBSERVER_THRESHOLD_MS:I = 0x14

.field private static final VALIDATE_UID_STATES:Z = true


# instance fields
.field private mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field private final mAvailUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatchRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUidChangeDispatchCount:I

.field final mUidObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 67
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/server/am/ActiveUids;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    .line 78
    return-void
.end method

.method private dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .registers 25
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "reg"    # Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    .param p3, "changesSize"    # I

    .line 247
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, ": "

    if-nez v7, :cond_9

    .line 248
    return-void

    .line 251
    :cond_9
    const/4 v1, 0x0

    move v9, v1

    .local v9, "j":I
    :goto_b
    move/from16 v10, p3

    if-ge v9, v10, :cond_226

    .line 252
    move-object/from16 v11, p0

    :try_start_11
    iget-object v1, v11, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v1, v1, v9

    move-object v12, v1

    .line 253
    .local v12, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide v13, v1

    .line 254
    .local v13, "start":J
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    move v15, v1

    .line 255
    .local v15, "change":I
    const/high16 v1, -0x80000000

    const/4 v6, 0x1

    if-ne v15, v1, :cond_2e

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v6

    if-nez v1, :cond_2e

    .line 259
    move-object/from16 v20, v0

    goto/16 :goto_21e

    .line 261
    :cond_2e
    const/16 v4, 0x40

    if-ne v15, v4, :cond_3d

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_36} :catch_224

    and-int/2addr v1, v4

    if-nez v1, :cond_3d

    .line 265
    move-object/from16 v20, v0

    goto/16 :goto_21e

    .line 267
    :cond_3d
    and-int/lit8 v1, v15, 0x2

    const-string v2, "UID active uid="

    const-string v3, "ActivityManager"

    if-eqz v1, :cond_71

    .line 268
    :try_start_45
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9c

    .line 269
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_69

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID idle uid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_69
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v5}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_9c

    .line 274
    :cond_71
    and-int/lit8 v1, v15, 0x4

    if-eqz v1, :cond_9c

    .line 275
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9c

    .line 276
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_97

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_97
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 282
    :cond_9c
    :goto_9c
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/4 v5, 0x0

    if-eqz v1, :cond_ee

    .line 283
    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_cb

    .line 284
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_c5

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID cached uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_c5
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v6}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_ee

    .line 288
    :cond_cb
    and-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_ee

    .line 289
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_e9

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_e9
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v5}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    .line 295
    :cond_ee
    :goto_ee
    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_138

    .line 296
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11d

    .line 297
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_116

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID gone uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_116
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v3}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 302
    :cond_11d
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_130

    .line 303
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->delete(I)V

    move-object/from16 v20, v0

    move/from16 v18, v6

    const/16 v0, 0x14

    goto/16 :goto_20a

    .line 302
    :cond_130
    move-object/from16 v20, v0

    move/from16 v18, v6

    const/16 v0, 0x14

    goto/16 :goto_20a

    .line 306
    :cond_138
    const/4 v1, 0x0

    .line 307
    .local v1, "doReport":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v16

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_17e

    .line 308
    const/4 v1, 0x1

    .line 309
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v16

    if-ltz v16, :cond_17b

    .line 310
    iget-object v4, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 312
    .local v4, "lastState":I
    if-eq v4, v6, :cond_170

    .line 313
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v5

    if-gt v4, v5, :cond_15b

    const/4 v5, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v5, 0x0

    .line 314
    .local v5, "lastAboveCut":Z
    :goto_15c
    iget v6, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    if-gt v6, v2, :cond_166

    const/4 v2, 0x1

    goto :goto_167

    :cond_166
    const/4 v2, 0x0

    .line 315
    .local v2, "newAboveCut":Z
    :goto_167
    if-eq v5, v2, :cond_16b

    const/4 v6, 0x1

    goto :goto_16c

    :cond_16b
    const/4 v6, 0x0

    :goto_16c
    move v1, v6

    .line 316
    .end local v2    # "newAboveCut":Z
    .end local v5    # "lastAboveCut":Z
    const/16 v5, 0x14

    goto :goto_180

    .line 317
    :cond_170
    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    const/16 v5, 0x14

    if-eq v2, v5, :cond_178

    const/4 v2, 0x1

    goto :goto_179

    :cond_178
    const/4 v2, 0x0

    :goto_179
    move v1, v2

    goto :goto_180

    .line 309
    .end local v4    # "lastState":I
    :cond_17b
    const/16 v5, 0x14

    goto :goto_180

    .line 307
    :cond_17e
    const/16 v5, 0x14

    .line 321
    :goto_180
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_196

    .line 322
    and-int/lit8 v2, v15, 0x20

    if-eqz v2, :cond_18f

    const/16 v17, 0x1

    goto :goto_191

    :cond_18f
    const/16 v17, 0x0

    :goto_191
    or-int v1, v1, v17

    move/from16 v17, v1

    goto :goto_198

    .line 321
    :cond_196
    move/from16 v17, v1

    .line 324
    .end local v1    # "doReport":Z
    .local v17, "doReport":Z
    :goto_198
    if-eqz v17, :cond_1f2

    .line 325
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_1ca

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID CHANGED uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1ca
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_1d7

    .line 330
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    :cond_1d7
    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget-wide v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move-object/from16 v1, p1

    move-object/from16 v20, v0

    const/16 v0, 0x14

    move/from16 v16, v4

    const/16 v19, 0x40

    move-wide v4, v5

    const/16 v18, 0x1

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_1f9

    .line 324
    :cond_1f2
    move-object/from16 v20, v0

    move v0, v5

    const/16 v18, 0x1

    const/16 v19, 0x40

    .line 336
    :goto_1f9
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_20a

    and-int/lit8 v1, v15, 0x40

    if-eqz v1, :cond_20a

    .line 338
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1}, Landroid/app/IUidObserver;->onUidProcAdjChanged(I)V

    .line 341
    .end local v17    # "doReport":Z
    :cond_20a
    :goto_20a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v13

    long-to-int v1, v1

    .line 342
    .local v1, "duration":I
    iget v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v2, v1, :cond_216

    .line 343
    iput v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    .line 345
    :cond_216
    if-lt v1, v0, :cond_21e

    .line 346
    iget v0, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_21e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_21e} :catch_224

    .line 251
    .end local v1    # "duration":I
    .end local v12    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v13    # "start":J
    .end local v15    # "change":I
    :cond_21e
    :goto_21e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_b

    .line 349
    .end local v9    # "j":I
    :catch_224
    move-exception v0

    goto :goto_229

    .line 251
    .restart local v9    # "j":I
    :cond_226
    move-object/from16 v11, p0

    .line 350
    .end local v9    # "j":I
    nop

    .line 351
    :goto_229
    return-void
.end method

.method private getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 170
    .local v0, "size":I
    const-string v1, "ActivityManager"

    if-lez v0, :cond_2f

    .line 171
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 172
    .local v2, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_4e

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving available item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 176
    .end local v2    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :cond_2f
    new-instance v2, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v2}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    .line 177
    .restart local v2    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_4e

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocating new item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4e
    :goto_4e
    return-object v2
.end method

.method static mergeWithPendingChange(II)I
    .registers 4
    .param p0, "currentChange"    # I
    .param p1, "pendingChange"    # I

    .line 139
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_7

    .line 140
    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    .line 144
    :cond_7
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_e

    .line 145
    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    .line 151
    :cond_e
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_14

    .line 152
    and-int/lit8 p0, p0, -0xd

    .line 154
    :cond_14
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_1a

    .line 155
    or-int/lit8 p0, p0, 0x20

    .line 157
    :cond_1a
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_21

    .line 158
    or-int/2addr p0, v0

    .line 160
    :cond_21
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_27

    .line 161
    or-int/lit8 p0, p0, 0x40

    .line 163
    :cond_27
    return p0
.end method


# virtual methods
.method dispatchUidsChanged()V
    .registers 11

    .line 187
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 189
    .local v1, "numUidChanges":I
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_12

    .line 190
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 192
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v3, 0x0

    if-ge v2, v1, :cond_32

    .line 193
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 194
    .local v4, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v2

    .line 195
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 196
    iput-boolean v3, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 192
    .end local v4    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 198
    .end local v2    # "i":I
    :cond_32
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 199
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_59

    .line 200
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Delivering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid changes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_59
    iget v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 203
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_fe

    .line 205
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 206
    .local v0, "i":I
    :goto_65
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    if-lez v0, :cond_7e

    .line 207
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 208
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 207
    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v2

    goto :goto_65

    .line 210
    :cond_7e
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 212
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_e4

    .line 213
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_8c
    if-ge v0, v1, :cond_e4

    .line 214
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 215
    .local v4, "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_a0

    .line 216
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_e1

    .line 218
    :cond_a0
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    .line 219
    .local v5, "validateUid":Lcom/android/server/am/UidRecord;
    if-nez v5, :cond_ba

    .line 220
    new-instance v7, Lcom/android/server/am/UidRecord;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v5, v7

    .line 221
    iget-object v7, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 223
    :cond_ba
    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_c4

    .line 224
    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_cd

    .line 225
    :cond_c4
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_cd

    .line 226
    invoke-virtual {v5, v3}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 228
    :cond_cd
    :goto_cd
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 229
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 230
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 231
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 213
    .end local v4    # "item":Lcom/android/server/am/UidObserverController$ChangeRecord;
    .end local v5    # "validateUid":Lcom/android/server/am/UidRecord;
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 236
    .end local v0    # "j":I
    :cond_e4
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 237
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_e8
    if-ge v0, v1, :cond_f9

    .line 238
    :try_start_ea
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v0

    .line 239
    .local v5, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 240
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    nop

    .end local v5    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    .line 242
    .end local v0    # "j":I
    :cond_f9
    monitor-exit v4

    .line 243
    return-void

    .line 242
    :catchall_fb
    move-exception v0

    monitor-exit v4
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_fb

    throw v0

    .line 203
    .end local v1    # "numUidChanges":I
    .end local v2    # "i":I
    :catchall_fe
    move-exception v1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 360
    .local v1, "count":I
    const/4 v2, 0x0

    .line 361
    .local v2, "printed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_37

    .line 362
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 363
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 364
    .local v4, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_21

    invoke-static {v4}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 365
    :cond_21
    if-nez v2, :cond_29

    .line 366
    const-string v5, "  mUidObservers:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const/4 v2, 0x1

    .line 369
    :cond_29
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    .line 361
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 373
    .end local v3    # "i":I
    :cond_37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 374
    const-string v3, "  mUidChangeDispatchCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 377
    const-string v3, "  Slow UID dispatches:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4d
    if-ge v3, v1, :cond_8c

    .line 379
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 380
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 381
    .restart local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 385
    const-string v5, " / Max "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 387
    const-string/jumbo v5, "ms"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    .end local v4    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 389
    .end local v1    # "count":I
    .end local v2    # "printed":Z
    .end local v3    # "i":I
    :cond_8c
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    .line 395
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2b

    .line 396
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 397
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 398
    .local v3, "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    if-eqz p2, :cond_20

    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 399
    :cond_20
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 395
    .end local v3    # "reg":Lcom/android/server/am/UidObserverController$UidObserverRegistration;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 402
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2b
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "needSep"    # Z

    .line 407
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "dumpAppId"    # I
    .param p4, "fieldId"    # J

    .line 412
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 413
    return-void
.end method

.method enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIJIZ)I
    .registers 12
    .param p1, "currentRecord"    # Lcom/android/server/am/UidObserverController$ChangeRecord;
    .param p2, "uid"    # I
    .param p3, "change"    # I
    .param p4, "procState"    # I
    .param p5, "procStateSeq"    # J
    .param p7, "capability"    # I
    .param p8, "ephemeral"    # Z

    .line 96
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1d

    .line 98
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_16

    .line 99
    const-string v1, "ActivityManager"

    const-string v2, "*** Enqueueing dispatch uid changed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_1d
    if-eqz p1, :cond_21

    .line 105
    move-object v1, p1

    goto :goto_25

    :cond_21
    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v1

    .line 106
    .local v1, "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :goto_25
    iget-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v2, :cond_32

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 108
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 110
    :cond_32
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, v2}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result v2

    move p3, v2

    .line 113
    :goto_39
    iput p2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 114
    iput p3, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 115
    iput p4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 116
    iput-wide p5, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 117
    iput p7, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 118
    iput-boolean p8, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 120
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    monitor-exit v0

    return v2

    .line 121
    .end local v1    # "changeRecord":Lcom/android/server/am/UidObserverController$ChangeRecord;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method getDispatchRunnableForTest()Ljava/lang/Runnable;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getPendingUidChangesForTest()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .registers 3
    .param p1, "uid"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method getValidateUidsForTest()Lcom/android/server/am/ActiveUids;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-object v0
.end method

.method register(Landroid/app/IUidObserver;IILjava/lang/String;I)V
    .registers 9
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I
    .param p3, "cutpoint"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUid"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    invoke-direct {v2, p5, p4, p2, p3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method unregister(Landroid/app/IUidObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 89
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
