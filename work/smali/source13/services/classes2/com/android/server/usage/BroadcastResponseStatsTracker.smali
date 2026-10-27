.class Lcom/android/server/usage/BroadcastResponseStatsTracker;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/BroadcastResponseStatsTracker$NotificationEventType;
    }
.end annotation


# static fields
.field static final NOTIFICATION_EVENT_TYPE_CANCELLED:I = 0x2

.field static final NOTIFICATION_EVENT_TYPE_POSTED:I = 0x0

.field static final NOTIFICATION_EVENT_TYPE_UPDATED:I = 0x1

.field static final TAG:Ljava/lang/String; = "ResponseStatsTracker"


# instance fields
.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private mExemptedRoleHoldersCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

.field private final mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mUserBroadcastEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastEvents;",
            ">;"
        }
    .end annotation
.end field

.field private mUserResponseStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastResponseStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-n26mEnQZeeiUiCyXsJkkQsm1As(Lcom/android/server/usage/BroadcastResponseStatsTracker;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyInternal;)V
    .registers 3
    .param p1, "appStandby"    # Lcom/android/server/usage/AppStandbyInternal;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 99
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 100
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-direct {v0}, Lcom/android/server/usage/BroadcastResponseStatsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    .line 101
    return-void
.end method

.method private dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 479
    const-string v0, "Broadcast events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 482
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 483
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    .line 484
    .local v2, "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 486
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 487
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 481
    .end local v1    # "userId":I
    .end local v2    # "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 489
    .end local v0    # "i":I
    :cond_47
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 490
    return-void
.end method

.method private dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 494
    const-string v0, "Response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 497
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 498
    .local v1, "sourceUid":I
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 499
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 500
    .local v2, "userBroadcastResponseStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 502
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_76

    .line 503
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 504
    .local v5, "userId":I
    nop

    .line 505
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 506
    .local v6, "broadcastResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 508
    invoke-virtual {v6, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 502
    .end local v5    # "userId":I
    .end local v6    # "broadcastResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 511
    .end local v3    # "j":I
    :cond_76
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 496
    .end local v1    # "sourceUid":I
    .end local v2    # "userBroadcastResponseStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 513
    .end local v0    # "i":I
    :cond_7c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 514
    return-void
.end method

.method private dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 518
    const-string v0, "Role holders:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    const/4 v0, 0x0

    .local v0, "userIdx":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8e

    .line 521
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 522
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 524
    .local v2, "roleHoldersForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 526
    const/4 v3, 0x0

    .local v3, "roleIdx":I
    :goto_3f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_87

    .line 527
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 528
    .local v4, "roleName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 529
    .local v5, "holders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const/4 v6, 0x0

    .local v6, "holderIdx":I
    :goto_68
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_81

    .line 531
    if-lez v6, :cond_75

    .line 532
    const-string v7, ", "

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 534
    :cond_75
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 530
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 536
    .end local v6    # "holderIdx":I
    :cond_81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 526
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "holders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 538
    .end local v3    # "roleIdx":I
    :cond_87
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    .end local v1    # "userId":I
    .end local v2    # "roleHoldersForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 540
    .end local v0    # "userIdx":I
    :cond_8e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 541
    return-void
.end method

.method private getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 391
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 390
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    .line 392
    .local v0, "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    if-nez v0, :cond_10

    .line 393
    const/4 v1, 0x0

    return-object v1

    .line 395
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    return-object v1
.end method

.method private getBroadcastResponseStats(Landroid/util/SparseArray;Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 5
    .param p2, "broadcastEvent"    # Lcom/android/server/usage/BroadcastEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastResponseStats;",
            ">;",
            "Lcom/android/server/usage/BroadcastEvent;",
            ")",
            "Landroid/app/usage/BroadcastResponseStats;"
        }
    .end annotation

    .line 415
    .local p1, "responseStatsForUid":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 416
    return-object v0

    .line 418
    :cond_4
    nop

    .line 419
    invoke-virtual {p2}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v1

    .line 418
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 420
    .local v1, "userResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    if-nez v1, :cond_12

    .line 421
    return-object v0

    .line 423
    :cond_12
    invoke-virtual {v1, p2}, Lcom/android/server/usage/UserBroadcastResponseStats;->getBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v0

    return-object v0
.end method

.method private static getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;
    .registers 13
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "idForResponseEvent"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;I",
            "Ljava/lang/String;",
            "IJ)",
            "Lcom/android/server/usage/BroadcastEvent;"
        }
    .end annotation

    .line 449
    .local p0, "broadcastEvents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/BroadcastEvent;>;"
    new-instance v6, Lcom/android/server/usage/BroadcastEvent;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastEvent;-><init>(ILjava/lang/String;IJ)V

    .line 451
    .local v0, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 452
    .local v1, "index":I
    if-ltz v1, :cond_17

    .line 453
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/BroadcastEvent;

    return-object v2

    .line 455
    :cond_17
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 456
    return-object v0
.end method

.method private getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    .line 403
    .local v0, "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    if-nez v0, :cond_1d

    .line 404
    new-instance v1, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-direct {v1}, Lcom/android/server/usage/UserBroadcastEvents;-><init>()V

    move-object v0, v1

    .line 405
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getOrCreateBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    return-object v1
.end method

.method private getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 6
    .param p1, "broadcastEvent"    # Lcom/android/server/usage/BroadcastEvent;

    .line 430
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getSourceUid()I

    move-result v0

    .line 431
    .local v0, "sourceUid":I
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 432
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 433
    .local v1, "userResponseStatsForUid":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    if-nez v1, :cond_19

    .line 434
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 435
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    :cond_19
    nop

    .line 438
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v2

    .line 437
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 439
    .local v2, "userResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    if-nez v2, :cond_33

    .line 440
    new-instance v3, Lcom/android/server/usage/UserBroadcastResponseStats;

    invoke-direct {v3}, Lcom/android/server/usage/UserBroadcastResponseStats;-><init>()V

    move-object v2, v3

    .line 441
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    :cond_33
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v3

    return-object v3
.end method

.method private getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 324
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 325
    .local v0, "roleHoldersForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v0, :cond_1d

    .line 326
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 327
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 330
    .local v1, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_30

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz v2, :cond_30

    .line 331
    invoke-virtual {v2, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 332
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_30
    return-object v1
.end method

.method private onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 338
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 340
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 341
    .local v1, "roleHoldersForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v1, :cond_13

    .line 342
    monitor-exit v0

    return-void

    .line 344
    :cond_13
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    nop

    .end local v1    # "roleHoldersForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V
    .registers 15
    .param p1, "broadcastEvent"    # Lcom/android/server/usage/BroadcastEvent;

    .line 225
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v0

    .line 226
    .local v0, "timestampsMs":Landroid/util/LongArrayQueue;
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 227
    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v1

    .line 228
    .local v1, "broadcastResponseWindowDurationMs":J
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 229
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsDurationMs()J

    move-result-wide v3

    .line 230
    .local v3, "broadcastsSessionDurationMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 231
    .local v5, "nowElapsedMs":J
    const-wide/16 v7, 0x0

    .line 232
    .local v7, "broadcastsSessionEndTimestampMs":J
    :goto_16
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v9

    if-lez v9, :cond_3d

    .line 233
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    sub-long v11, v5, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_3d

    .line 234
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    .line 235
    .local v9, "eventTimestampMs":J
    cmp-long v11, v9, v7

    if-ltz v11, :cond_39

    .line 236
    nop

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v11

    .line 238
    .local v11, "responseStats":Landroid/app/usage/BroadcastResponseStats;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    .line 239
    add-long v7, v9, v3

    .line 241
    .end local v11    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    :cond_39
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 242
    .end local v9    # "eventTimestampMs":J
    goto :goto_16

    .line 243
    :cond_3d
    return-void
.end method

.method private reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 29
    .param p1, "event"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "timestampMs"    # J

    .line 159
    move-object/from16 v1, p0

    move/from16 v8, p1

    iget-object v2, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 160
    iget-object v2, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    nop

    .line 162
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_19
    invoke-direct {v1, v3, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v0

    .line 163
    .local v0, "broadcastEvents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/BroadcastEvent;>;"
    if-nez v0, :cond_21

    .line 164
    monitor-exit v2

    return-void

    .line 166
    :cond_21
    iget-object v5, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 167
    invoke-interface {v5}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v5

    .line 168
    .local v5, "broadcastResponseWindowDurationMs":J
    iget-object v7, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 169
    invoke-interface {v7}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsWithResponseDurationMs()J

    move-result-wide v9

    .line 170
    .local v9, "broadcastsSessionWithResponseDurationMs":J
    iget-object v7, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 171
    invoke-interface {v7}, Lcom/android/server/usage/AppStandbyInternal;->shouldNoteResponseEventForAllBroadcastSessions()Z

    move-result v7

    .line 172
    .local v7, "recordAllBroadcastsSessionsWithinResponseWindow":Z
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "i":I
    :goto_39
    if-ltz v11, :cond_c2

    .line 173
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usage/BroadcastEvent;

    .line 174
    .local v13, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    invoke-direct {v1, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 176
    invoke-virtual {v13}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v14

    .line 177
    .local v14, "dispatchTimestampsMs":Landroid/util/LongArrayQueue;
    const-wide/16 v15, 0x0

    .line 180
    .local v15, "broadcastsSessionEndTimestampMs":J
    :goto_4a
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    move-result v17

    if-lez v17, :cond_b0

    .line 181
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    cmp-long v17, v17, p4

    if-gez v17, :cond_b0

    .line 182
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    .line 183
    .local v17, "dispatchTimestampMs":J
    sub-long v19, p4, v17

    .line 189
    .local v19, "elapsedDurationMs":J
    cmp-long v21, v19, v5

    if-gtz v21, :cond_a7

    cmp-long v21, v17, v15

    if-ltz v21, :cond_a7

    .line 191
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-eqz v21, :cond_6f

    if-nez v7, :cond_6f

    .line 193
    goto :goto_b0

    .line 195
    :cond_6f
    nop

    .line 196
    invoke-direct {v1, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v21

    move-object/from16 v22, v21

    .line 197
    .local v22, "responseStats":Landroid/app/usage/BroadcastResponseStats;
    move-object/from16 v1, v22

    .end local v22    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    .local v1, "responseStats":Landroid/app/usage/BroadcastResponseStats;
    invoke-virtual {v1, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    .line 198
    add-long v15, v17, v9

    .line 200
    packed-switch v8, :pswitch_data_c8

    .line 211
    const-string v12, "ResponseStatsTracker"

    goto :goto_8f

    .line 208
    :pswitch_83
    invoke-virtual {v1, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    .line 209
    goto :goto_a7

    .line 205
    :pswitch_87
    invoke-virtual {v1, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    .line 206
    goto :goto_a7

    .line 202
    :pswitch_8b
    invoke-virtual {v1, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    .line 203
    goto :goto_a7

    .line 211
    :goto_8f
    move-object/from16 v22, v1

    .end local v1    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    .restart local v22    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown event: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v22    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    :cond_a7
    :goto_a7
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 215
    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    .end local v17    # "dispatchTimestampMs":J
    .end local v19    # "elapsedDurationMs":J
    goto :goto_4a

    .line 216
    :cond_b0
    :goto_b0
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    move-result v1

    if-nez v1, :cond_b9

    .line 217
    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 172
    .end local v13    # "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    .end local v14    # "dispatchTimestampsMs":Landroid/util/LongArrayQueue;
    .end local v15    # "broadcastsSessionEndTimestampMs":J
    :cond_b9
    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    goto/16 :goto_39

    .line 220
    .end local v0    # "broadcastEvents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/BroadcastEvent;>;"
    .end local v5    # "broadcastResponseWindowDurationMs":J
    .end local v7    # "recordAllBroadcastsSessionsWithinResponseWindow":Z
    .end local v9    # "broadcastsSessionWithResponseDurationMs":J
    .end local v11    # "i":I
    :cond_c2
    monitor-exit v2

    .line 221
    return-void

    .line 220
    :catchall_c4
    move-exception v0

    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_19 .. :try_end_c6} :catchall_c4

    throw v0

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_87
        :pswitch_83
    .end packed-switch
.end method


# virtual methods
.method clearBroadcastEvents(II)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserBroadcastEvents;

    .line 285
    .local v1, "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    if-nez v1, :cond_f

    .line 286
    monitor-exit v0

    return-void

    .line 288
    :cond_f
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    .line 289
    .end local v1    # "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method clearBroadcastResponseStats(ILjava/lang/String;JI)V
    .registers 9
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "userId"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 269
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 270
    .local v1, "responseStatsForCaller":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    if-nez v1, :cond_f

    .line 271
    monitor-exit v0

    return-void

    .line 273
    :cond_f
    nop

    .line 274
    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 275
    .local v2, "responseStatsForUser":Lcom/android/server/usage/UserBroadcastResponseStats;
    if-nez v2, :cond_1a

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_1a
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->clearBroadcastResponseStats(Ljava/lang/String;J)V

    .line 279
    .end local v1    # "responseStatsForCaller":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    .end local v2    # "responseStatsForUser":Lcom/android/server/usage/UserBroadcastResponseStats;
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 308
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 309
    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedPermissions()Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "exemptedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_23

    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    .local v3, "permissionName":Ljava/lang/String;
    nop

    .line 313
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 312
    invoke-static {v3, p1, v4}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_20

    .line 314
    return v2

    .line 310
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 317
    .end local v1    # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 293
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedRoles()Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "exemptedRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_26

    .line 296
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, "roleName":Ljava/lang/String;
    invoke-direct {p0, v4, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 299
    monitor-exit v1

    return v3

    .line 295
    .end local v4    # "roleName":Ljava/lang/String;
    .end local v5    # "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 302
    .end local v2    # "i":I
    :cond_26
    monitor-exit v1

    .line 303
    const/4 v1, 0x0

    return v1

    .line 302
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 461
    const-string v0, "Broadcast response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 464
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 466
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 468
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 471
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 472
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_27

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 475
    return-void

    .line 472
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method onPackageRemoved(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserBroadcastEvents;

    .line 362
    .local v1, "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    if-eqz v1, :cond_10

    .line 363
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onPackageRemoved(Ljava/lang/String;)V

    .line 366
    :cond_10
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_30

    .line 367
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 368
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 369
    .local v3, "userResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    if-eqz v3, :cond_2d

    .line 370
    invoke-virtual {v3, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->onPackageRemoved(Ljava/lang/String;)V

    .line 366
    .end local v3    # "userResponseStats":Lcom/android/server/usage/UserBroadcastResponseStats;
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 373
    .end local v1    # "userBroadcastEvents":Lcom/android/server/usage/UserBroadcastEvents;
    .end local v2    # "i":I
    :cond_30
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method onSystemServicesReady(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    .line 105
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 107
    return-void
.end method

.method onUidRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 377
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 379
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onUidRemoved(I)V

    .line 378
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 382
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 352
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_20

    .line 353
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 352
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 355
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "broadcastResponseStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/BroadcastResponseStats;>;"
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_8
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 250
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 251
    .local v2, "responseStatsForCaller":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    if-nez v2, :cond_14

    .line 252
    monitor-exit v1

    return-object v0

    .line 254
    :cond_14
    nop

    .line 255
    invoke-virtual {v2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 256
    .local v3, "responseStatsForUser":Lcom/android/server/usage/UserBroadcastResponseStats;
    if-nez v3, :cond_1f

    .line 257
    monitor-exit v1

    return-object v0

    .line 259
    :cond_1f
    invoke-virtual {v3, v0, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->populateAllBroadcastResponseStats(Ljava/util/List;Ljava/lang/String;J)V

    .line 261
    .end local v2    # "responseStatsForCaller":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/usage/UserBroadcastResponseStats;>;"
    .end local v3    # "responseStatsForUser":Lcom/android/server/usage/UserBroadcastResponseStats;
    monitor-exit v1

    .line 262
    return-object v0

    .line 261
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v2
.end method

.method reportBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 22
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUser"    # Landroid/os/UserHandle;
    .param p4, "idForResponseEvent"    # J
    .param p6, "timestampMs"    # J
    .param p8, "targetUidProcState"    # I

    .line 113
    move-object v1, p0

    move-object v11, p2

    move-object/from16 v12, p3

    iget-object v2, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 115
    iget-object v0, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseFgThresholdState()I

    move-result v0

    move/from16 v8, p8

    if-gt v8, v0, :cond_1e

    .line 118
    return-void

    .line 120
    :cond_1e
    invoke-virtual {p0, p2, v12}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 122
    return-void

    .line 124
    :cond_25
    invoke-virtual {p0, p2, v12}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 127
    return-void

    .line 129
    :cond_2c
    iget-object v9, v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 130
    nop

    .line 131
    :try_start_30
    invoke-direct {p0, p2, v12}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v2

    .line 132
    .local v2, "broadcastEvents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/BroadcastEvent;>;"
    nop

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 132
    move v3, p1

    move-object v4, p2

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    .line 134
    .local v0, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    move-wide/from16 v3, p6

    :try_start_43
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/BroadcastEvent;->addTimestampMs(J)V

    .line 137
    invoke-direct {p0, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 138
    .end local v0    # "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    .end local v2    # "broadcastEvents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/BroadcastEvent;>;"
    monitor-exit v9

    .line 139
    return-void

    .line 138
    :catchall_4b
    move-exception v0

    move-wide/from16 v3, p6

    :goto_4e
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_50

    throw v0

    :catchall_50
    move-exception v0

    goto :goto_4e
.end method

.method reportNotificationCancelled(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "timestampMs"    # J

    .line 154
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 155
    return-void
.end method

.method reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "timestampMs"    # J

    .line 143
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 144
    return-void
.end method

.method reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "timestampMs"    # J

    .line 148
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 150
    return-void
.end method
