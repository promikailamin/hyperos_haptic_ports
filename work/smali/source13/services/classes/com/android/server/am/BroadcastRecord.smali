.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4

.field static sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final allowBackgroundActivityStarts:Z

.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerFeatureId:Ljava/lang/String;

.field final callerInstantApp:Z

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field deferred:Z

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchRealTime:J

.field dispatchTime:J

.field final duration:[J

.field enqueueClockTime:J

.field enqueueRealTime:J

.field enqueueTime:J

.field final excludedPackages:[Ljava/lang/String;

.field final excludedPermissions:[Ljava/lang/String;

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field final mBackgroundActivityStartsToken:Landroid/os/IBinder;

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field splitCount:I

.field splitToken:I

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field timeoutExempt:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V
    .registers 44
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callerFeatureId"    # Ljava/lang/String;
    .param p6, "_callingPid"    # I
    .param p7, "_callingUid"    # I
    .param p8, "_callerInstantApp"    # Z
    .param p9, "_resolvedType"    # Ljava/lang/String;
    .param p10, "_requiredPermissions"    # [Ljava/lang/String;
    .param p11, "_excludedPermissions"    # [Ljava/lang/String;
    .param p12, "_excludedPackages"    # [Ljava/lang/String;
    .param p13, "_appOp"    # I
    .param p14, "_options"    # Landroid/app/BroadcastOptions;
    .param p15, "_receivers"    # Ljava/util/List;
    .param p16, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p17, "_resultCode"    # I
    .param p18, "_resultData"    # Ljava/lang/String;
    .param p19, "_resultExtras"    # Landroid/os/Bundle;
    .param p20, "_serialized"    # Z
    .param p21, "_sticky"    # Z
    .param p22, "_initialSticky"    # Z
    .param p23, "_userId"    # I
    .param p24, "allowBackgroundActivityStarts"    # Z
    .param p25, "backgroundActivityStartsToken"    # Landroid/os/IBinder;
    .param p26, "timeoutExempt"    # Z

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p15

    invoke-direct/range {p0 .. p0}, Landroid/os/Binder;-><init>()V

    .line 274
    if-eqz v1, :cond_8e

    .line 277
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 278
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 280
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 281
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 282
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 283
    move/from16 v7, p6

    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 284
    move/from16 v8, p7

    iput v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 285
    move/from16 v9, p8

    iput-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 286
    move-object/from16 v10, p9

    iput-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 287
    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 288
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 289
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 290
    move/from16 v14, p13

    iput v14, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 291
    move-object/from16 v15, p14

    iput-object v15, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 292
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 293
    if-eqz v2, :cond_52

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v1, v16

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 294
    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 295
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 296
    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 297
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 298
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 299
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 300
    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 301
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 302
    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 303
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 304
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 305
    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 306
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    .line 307
    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 308
    return-void

    .line 275
    :cond_8e
    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v1, p26

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "newIntent"    # Landroid/content/Intent;

    .line 314
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 316
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 318
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 319
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 320
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 321
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 322
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 323
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 324
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 325
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 326
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 327
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 328
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 330
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 331
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 332
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 333
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 334
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 335
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 336
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 337
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 338
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 339
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 340
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 341
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 342
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 343
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 344
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 345
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 346
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 347
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 348
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 349
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 350
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 351
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 352
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 353
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 354
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 355
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 356
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 357
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 358
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    .line 359
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 360
    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 501
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 502
    return v1

    .line 505
    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_c

    move v4, v3

    goto :goto_d

    :cond_c
    move v4, v1

    .line 506
    .local v4, "cleanupAllUsers":Z
    :goto_d
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    .line 507
    .local v2, "sendToAllUsers":Z
    :goto_14
    if-eq v5, p3, :cond_1b

    if-nez v4, :cond_1b

    if-nez v2, :cond_1b

    .line 508
    return v1

    .line 511
    :cond_1b
    const/4 v5, 0x0

    .line 513
    .local v5, "didSomething":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_6f

    .line 514
    iget-object v6, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 515
    .local v6, "o":Ljava/lang/Object;
    instance-of v7, v6, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_2e

    .line 516
    goto :goto_6c

    .line 518
    :cond_2e
    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 520
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_4c

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 521
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    if-eqz p2, :cond_4c

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 522
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_4c

    :cond_4a
    move v8, v1

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v8, v3

    .line 523
    .local v8, "sameComponent":Z
    :goto_4d
    if-eqz v8, :cond_6c

    if-nez v4, :cond_5b

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 524
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p3, :cond_6c

    .line 525
    :cond_5b
    if-nez p4, :cond_5e

    .line 526
    return v3

    .line 528
    :cond_5e
    const/4 v5, 0x1

    .line 529
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v9, :cond_6c

    .line 531
    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 513
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "sameComponent":Z
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 535
    .end local v0    # "i":I
    .end local v6    # "o":Ljava/lang/Object;
    :cond_6f
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 537
    return v5
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " to user "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v2, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eq v2, v3, :cond_3d

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  targetComp: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    :cond_3d
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 149
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_54

    .line 150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  extras: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    :cond_54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "caller="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    :cond_6f
    const-string/jumbo v4, "null"

    :goto_72
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    const-string v4, " pid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 155
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 156
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v5, -0x1

    if-eqz v4, :cond_91

    array-length v4, v4

    if-gtz v4, :cond_95

    :cond_91
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v4, v5, :cond_b1

    .line 158
    :cond_95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "requiredPermissions="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string v4, "  appOp="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    :cond_b1
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_c9

    array-length v4, v4

    if-lez v4, :cond_c9

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "excludedPermissions="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    :cond_c9
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v4, :cond_e1

    array-length v4, v4

    if-lez v4, :cond_e1

    .line 167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "excludedPackages="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    :cond_e1
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v4, :cond_f7

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "options="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 173
    :cond_f7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enqueueClockTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    const-string v4, " dispatchClockTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "dispatchTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 179
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v8, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 181
    const-string v6, " since enq)"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_162

    .line 183
    const-string v6, " finishTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 184
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 186
    const-string v4, " since disp)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_16c

    .line 188
    :cond_162
    const-string v4, " receiverTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 190
    :goto_16c
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v4, :cond_182

    .line 192
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "anrCount="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    :cond_182
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v4, :cond_18e

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v4, v5, :cond_18e

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v4, :cond_1b0

    .line 195
    :cond_18e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "resultTo="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 196
    const-string v4, " resultCode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 197
    const-string v4, " resultData="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    :cond_1b0
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_1c2

    .line 200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "resultExtras="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 202
    :cond_1c2
    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v4, :cond_1d2

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v4, :cond_1d2

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v4, :cond_1d2

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v4, :cond_1fe

    .line 203
    :cond_1d2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "resultAbort="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    const-string v4, " ordered="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 205
    const-string v4, " sticky="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 206
    const-string v4, " initialSticky="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 208
    :cond_1fe
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v4, :cond_206

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v4, :cond_21e

    .line 209
    :cond_206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "nextReceiver="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 210
    const-string v4, " receiver="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 212
    :cond_21e
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_22f

    .line 213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "curFilter="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    :cond_22f
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_240

    .line 216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "curReceiver="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    :cond_240
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_280

    .line 219
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "curApp="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "curComponent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_262

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    goto :goto_264

    :cond_262
    const-string v4, "--"

    :goto_264
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_280

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_280

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "curSourceDir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    :cond_280
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v4, :cond_2a6

    .line 228
    const-string v5, " (?)"

    .line 229
    .local v5, "stateStr":Ljava/lang/String;
    packed-switch v4, :pswitch_data_336

    goto :goto_295

    .line 233
    :pswitch_28a
    const-string v5, " (WAITING_SERVICES)"

    goto :goto_295

    .line 232
    :pswitch_28d
    const-string v5, " (CALL_DONE_RECEIVE)"

    goto :goto_295

    .line 231
    :pswitch_290
    const-string v5, " (CALL_IN_RECEIVE)"

    goto :goto_295

    .line 230
    :pswitch_293
    const-string v5, " (APP_RECEIVE)"

    .line 235
    :goto_295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .end local v5    # "stateStr":Ljava/lang/String;
    :cond_2a6
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_2b0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2b1

    :cond_2b0
    move v4, v5

    .line 238
    .local v4, "N":I
    :goto_2b1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "p2":Ljava/lang/String;
    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 240
    .local v7, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2ca
    if-ge v8, v4, :cond_334

    .line 241
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 242
    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v10, v10, v8

    packed-switch v10, :pswitch_data_342

    .line 248
    const-string v10, "???????"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f9

    .line 247
    :pswitch_2e2
    const-string v10, "Timeout"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f9

    .line 246
    :pswitch_2e8
    const-string v10, "Skipped"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f9

    .line 245
    :pswitch_2ee
    const-string v10, "Deliver"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f9

    .line 244
    :pswitch_2f4
    const-string v10, "Pending"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    :goto_2f9
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    aget-wide v10, v10, v8

    invoke-static {v10, v11, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 251
    const-string v10, " #"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    instance-of v10, v9, Lcom/android/server/am/BroadcastFilter;

    if-eqz v10, :cond_31e

    .line 253
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 254
    move-object v10, v9

    check-cast v10, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v10, p1, v6}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_331

    .line 255
    :cond_31e
    instance-of v10, v9, Landroid/content/pm/ResolveInfo;

    if-eqz v10, :cond_32e

    .line 256
    const-string v10, "(manifest)"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    move-object v10, v9

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v10, v7, v6, v5}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_331

    .line 259
    :cond_32e
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    .end local v9    # "o":Ljava/lang/Object;
    :goto_331
    add-int/lit8 v8, v8, 0x1

    goto :goto_2ca

    .line 262
    .end local v8    # "i":I
    :cond_334
    return-void

    nop

    :pswitch_data_336
    .packed-switch 0x1
        :pswitch_293
        :pswitch_290
        :pswitch_28d
        :pswitch_28a
    .end packed-switch

    :pswitch_data_342
    .packed-switch 0x0
        :pswitch_2f4
        :pswitch_2ee
        :pswitch_2e8
        :pswitch_2e2
    .end packed-switch
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 548
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 549
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 550
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 551
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 552
    return-void
.end method

.method getReceiverUid(Ljava/lang/Object;)I
    .registers 3
    .param p1, "receiver"    # Ljava/lang/Object;

    .line 484
    instance-of v0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_a

    .line 485
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget v0, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return v0

    .line 487
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_9

    .line 493
    return-object p0

    .line 495
    :cond_9
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;
    .registers 40
    .param p1, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p2, "deferType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManagerInternal;",
            "I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation

    .line 421
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 422
    .local v2, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/BroadcastRecord;>;"
    if-nez v1, :cond_c

    .line 423
    return-object v2

    .line 426
    :cond_c
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v3, :cond_11

    .line 427
    return-object v2

    .line 430
    :cond_11
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 432
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 433
    return-object v2

    .line 436
    :cond_28
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 437
    .local v4, "uid2receiverList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_35
    if-ltz v5, :cond_84

    .line 438
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 439
    .local v7, "receiver":Ljava/lang/Object;
    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v8

    .line 440
    .local v8, "uid":I
    if-eq v1, v6, :cond_62

    .line 441
    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_52

    .line 442
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_54

    .line 445
    goto :goto_81

    .line 441
    :cond_52
    move-object/from16 v9, p1

    .line 448
    :cond_54
    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_64

    .line 449
    const-wide/32 v10, 0xc2449f6

    invoke-static {v10, v11, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v10

    if-nez v10, :cond_64

    .line 452
    goto :goto_81

    .line 440
    :cond_62
    move-object/from16 v9, p1

    .line 457
    :cond_64
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 458
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 459
    .local v10, "receiverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    if-eqz v10, :cond_76

    .line 460
    invoke-interface {v10, v11, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_81

    .line 462
    :cond_76
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v12, "splitReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v12, v11, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    invoke-virtual {v4, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    .end local v7    # "receiver":Ljava/lang/Object;
    .end local v8    # "uid":I
    .end local v10    # "receiverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12    # "splitReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_81
    add-int/lit8 v5, v5, -0x1

    goto :goto_35

    :cond_84
    move-object/from16 v9, p1

    .line 467
    .end local v5    # "i":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 468
    .local v5, "uidSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8b
    if-ge v6, v5, :cond_109

    .line 469
    new-instance v7, Lcom/android/server/am/BroadcastRecord;

    move-object v10, v7

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move/from16 v16, v8

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v17, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    move/from16 v18, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v19, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v21, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move-object/from16 v22, v8

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v23, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v24, v8

    .line 472
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v25, v8

    check-cast v25, Ljava/util/List;

    const/16 v26, 0x0

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v27, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v28, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v29, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v30, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v31, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v32, v8

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v33, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v34, v8

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    move-object/from16 v35, v8

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v36, v8

    invoke-direct/range {v10 .. v36}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    .line 475
    .local v7, "br":Lcom/android/server/am/BroadcastRecord;
    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v10, v7, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 476
    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v10, v7, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 477
    iget-wide v10, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v10, v7, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 478
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    .end local v7    # "br":Lcom/android/server/am/BroadcastRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 480
    .end local v6    # "i":I
    :cond_109
    return-object v2
.end method

.method splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;
    .registers 34
    .param p1, "slowAppUid"    # I
    .param p2, "startingAt"    # I

    .line 370
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 371
    .local v1, "splitReceivers":Ljava/util/ArrayList;
    move/from16 v2, p2

    .local v2, "i":I
    :goto_5
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 372
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 373
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    move/from16 v15, p1

    if-ne v4, v15, :cond_2c

    .line 374
    if-nez v1, :cond_23

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 377
    :cond_23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    .line 380
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 382
    .end local v3    # "o":Ljava/lang/Object;
    :goto_2e
    goto :goto_5

    .line 371
    :cond_2f
    move/from16 v15, p1

    .line 385
    .end local v2    # "i":I
    if-nez v1, :cond_35

    .line 386
    const/4 v2, 0x0

    return-object v2

    .line 390
    :cond_35
    new-instance v2, Lcom/android/server/am/BroadcastRecord;

    move-object v3, v2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v19, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v20, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v23, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v25, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v26, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v27, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    move-object/from16 v28, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v29, v2

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    move-object/from16 v2, v30

    .line 396
    .local v2, "split":Lcom/android/server/am/BroadcastRecord;
    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 397
    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 398
    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 399
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v3, v2, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 400
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 544
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    return-object v0
.end method
