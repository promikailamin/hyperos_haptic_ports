.class Lcom/android/server/wm/RootWindowContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private cls:Landroid/content/ComponentName;

.field private documentData:Landroid/net/Uri;

.field private isDocument:Z

.field private mActivityType:I

.field mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

.field mIdealRecord:Lcom/android/server/wm/ActivityRecord;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTaskAffinity:Ljava/lang/String;

.field private userId:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 6
    .param p1, "activityType"    # I
    .param p2, "taskAffinity"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;

    .line 343
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 344
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 346
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 348
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 350
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 352
    return-void
.end method

.method init(Lcom/android/server/wm/ActivityRecord;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 7
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "activityType"    # I
    .param p3, "taskAffinity"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "info"    # Landroid/content/pm/ActivityInfo;

    .line 332
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 333
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    .line 334
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 335
    iput-object p5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 337
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 338
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 339
    return-void
.end method

.method matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z
    .registers 19
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 429
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 430
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 431
    return v2

    .line 436
    :cond_a
    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 439
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_216

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_216

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-ne v7, v8, :cond_216

    iget v7, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_24

    goto/16 :goto_216

    .line 444
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v7

    iget v9, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    invoke-static {v7, v9}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v7

    if-nez v7, :cond_45

    .line 446
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_44

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x3cecb894

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v7, v8, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_44
    return v2

    .line 450
    :cond_45
    iget-object v7, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 451
    .local v7, "taskIntent":Landroid/content/Intent;
    iget-object v9, v1, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 454
    .local v9, "affinityIntent":Landroid/content/Intent;
    if-eqz v7, :cond_57

    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_57

    .line 455
    const/4 v10, 0x1

    .line 456
    .local v10, "taskIsDocument":Z
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .local v11, "taskDocumentData":Landroid/net/Uri;
    goto :goto_67

    .line 457
    .end local v10    # "taskIsDocument":Z
    .end local v11    # "taskDocumentData":Landroid/net/Uri;
    :cond_57
    if-eqz v9, :cond_65

    invoke-virtual {v9}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 458
    const/4 v10, 0x1

    .line 459
    .restart local v10    # "taskIsDocument":Z
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .restart local v11    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_67

    .line 461
    .end local v10    # "taskIsDocument":Z
    .end local v11    # "taskDocumentData":Landroid/net/Uri;
    :cond_65
    const/4 v10, 0x0

    .line 462
    .restart local v10    # "taskIsDocument":Z
    const/4 v11, 0x0

    .line 465
    .restart local v11    # "taskDocumentData":Landroid/net/Uri;
    :goto_67
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v12, :cond_b2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam1":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam2":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_96

    iget-object v15, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    goto :goto_98

    :cond_96
    const-string v15, ""

    :goto_98
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "protoLogParam3":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v2

    aput-object v13, v8, v5

    aput-object v14, v8, v4

    const/16 v16, 0x3

    aput-object v15, v8, v16

    const/4 v4, 0x0

    const v5, 0x4712c918

    invoke-static {v6, v5, v2, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam1":Ljava/lang/String;
    .end local v14    # "protoLogParam2":Ljava/lang/String;
    .end local v15    # "protoLogParam3":Ljava/lang/String;
    :cond_b2
    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const v5, 0x5cd91d99

    const v6, 0x741b271a

    if-eqz v4, :cond_112

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-eqz v4, :cond_d0

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 474
    invoke-static {v4, v8}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isWpsSameActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_d0
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 475
    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 476
    invoke-static {v4, v8}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isAppLockActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_112

    .line 478
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_ef

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x0

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v8, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_ef
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_10e

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v14, 0x0

    invoke-static {v8, v5, v2, v14, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10f

    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_10e
    const/4 v13, 0x1

    .line 481
    :goto_10f
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 482
    return v13

    .line 483
    :cond_112
    if-eqz v9, :cond_15e

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_15e

    .line 484
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    invoke-virtual {v4, v8}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_15e

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 485
    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 486
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_13b

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x0

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v8, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_13b
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_15a

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v14, 0x0

    invoke-static {v8, v5, v2, v14, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15b

    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_15a
    const/4 v13, 0x1

    .line 488
    :goto_15b
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 489
    return v13

    .line 490
    :cond_15e
    iget-boolean v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    if-nez v4, :cond_1ff

    if-nez v10, :cond_1ff

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_1ff

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_1ff

    iget-object v4, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_1ff

    .line 495
    iget-object v4, v1, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 496
    invoke-static {v4, v8}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isAppLockActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1a8

    .line 498
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_194

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x7989881f

    const/4 v12, 0x0

    move-object v13, v12

    check-cast v13, [Ljava/lang/Object;

    invoke-static {v4, v8, v2, v12, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    :cond_194
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    .line 504
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v8

    invoke-interface {v4, v8}, Lcom/android/server/wm/PreloadStateManagerStub;->isPreloadDisplayId(I)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 505
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 506
    const/4 v2, 0x1

    return v2

    .line 511
    :cond_1a8
    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_215

    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_215

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 512
    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/wm/Task;->behindAppLockPkg:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_215

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    .line 513
    const-string/jumbo v8, "originating_uid"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v8, v1, Lcom/android/server/wm/Task;->originatingUid:I

    if-ne v4, v8, :cond_215

    .line 514
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_1dc

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x0

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v4, v6, v2, v8, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :cond_1dc
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_1fb

    iget-object v4, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const/4 v14, 0x0

    invoke-static {v8, v5, v2, v14, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1fc

    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_1fb
    const/4 v13, 0x1

    .line 516
    :goto_1fc
    iput-object v3, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 517
    return v13

    .line 521
    :cond_1ff
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_215

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x2e31a2c5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    const/4 v12, 0x0

    invoke-static {v5, v6, v2, v12, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_215
    return v2

    .line 441
    .end local v7    # "taskIntent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v10    # "taskIsDocument":Z
    .end local v11    # "taskDocumentData":Landroid/net/Uri;
    :cond_216
    :goto_216
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_233

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x5def8135

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v2, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 442
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_233
    return v2
.end method

.method process(Lcom/android/server/wm/WindowContainer;)V
    .registers 10
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 361
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->cls:Landroid/content/ComponentName;

    .line 363
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    move v3, v1

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->isDocument:Z

    .line 366
    const/4 v3, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_44

    :cond_43
    move-object v0, v3

    :goto_44
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->documentData:Landroid/net/Uri;

    .line 368
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x30904169

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v4, v7, v1

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_63
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    .line 371
    return-void
.end method

.method public test(Lcom/android/server/wm/Task;)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 375
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 375
    invoke-static {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->isCompatibleActivityType(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 377
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x163d3536

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_23
    return v3

    .line 381
    :cond_24
    iget-object v0, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3d

    .line 383
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x318592b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_3c
    return v3

    .line 386
    :cond_3d
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->userId:I

    if-eq v0, v4, :cond_58

    .line 388
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_57

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x17cd80ad

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_57
    return v3

    .line 393
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5e

    move v0, v3

    goto :goto_62

    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 395
    .local v0, "sourceRecordWindowMode":I
    :goto_62
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_69

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_6a

    :cond_69
    move-object v4, v1

    :goto_6a
    invoke-static {v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportFreeFormMultiTask(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 396
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    .line 397
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_7a

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 396
    :cond_7a
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inMultipleTaskWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    goto :goto_83

    :cond_81
    move v1, v3

    goto :goto_84

    :cond_83
    :goto_83
    move v1, v2

    .line 398
    .local v1, "isSupportFreeFormMultiTask":Z
    :goto_84
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_95

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 399
    return v3

    .line 401
    :cond_95
    if-eqz v1, :cond_c9

    if-eqz v0, :cond_c9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_c9

    .line 403
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v4

    if-eqz v4, :cond_c9

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_c9

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 406
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 407
    invoke-static {v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isWpsPreStartActivity(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c9

    .line 408
    return v3

    .line 411
    :cond_c9
    if-eqz v1, :cond_104

    iget-object v4, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getFreeFormWindowMode(I)I

    move-result v4

    if-ne v4, v2, :cond_104

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_104

    .line 413
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_104

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 414
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_104

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_104

    .line 415
    return v3

    .line 419
    :cond_104
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->matchingCandidate(Lcom/android/server/wm/TaskFragment;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 420
    return v2

    .line 424
    :cond_10b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTaskFragment()Z

    move-result v4

    if-nez v4, :cond_11d

    new-instance v4, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_11d

    goto :goto_11e

    :cond_11d
    move v2, v3

    :goto_11e
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 313
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->test(Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
