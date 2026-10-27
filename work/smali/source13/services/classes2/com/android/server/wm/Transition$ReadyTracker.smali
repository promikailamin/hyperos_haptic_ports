.class Lcom/android/server/wm/Transition$ReadyTracker;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadyTracker"
.end annotation


# instance fields
.field private final mReadyGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyOverride:Z

.field private mUsed:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    .line 1633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .line 1639
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Transition$ReadyTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>()V

    return-void
.end method

.method private groupsToString()Ljava/lang/String;
    .registers 5

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1694
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1695
    if-eqz v1, :cond_15

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    .line 1697
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1699
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addGroup(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1646
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to add a ready-group twice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void

    .line 1650
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    return-void
.end method

.method allReady()Z
    .registers 11

    .line 1680
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .local v0, "protoLogParam0":Z
    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    .local v3, "protoLogParam1":Z
    invoke-direct {p0}, Lcom/android/server/wm/Transition$ReadyTracker;->groupsToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x150a15ac

    const/16 v7, 0xf

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const-string v9, " allReady query: used=%b override=%b states=[%s]"

    invoke-static {v5, v6, v7, v9, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1682
    .end local v0    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Z
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    if-nez v0, :cond_35

    return v1

    .line 1683
    :cond_35
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    if-eqz v0, :cond_3a

    return v2

    .line 1684
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_41
    if-ltz v0, :cond_6a

    .line 1685
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1686
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_67

    .line 1687
    :cond_58
    iget-object v4, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_67

    return v1

    .line 1684
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    .line 1689
    .end local v0    # "i":I
    :cond_6a
    return v2
.end method

.method setAllReady()V
    .registers 6

    .line 1673
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x63986c7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    const-string v4, " Setting allReady override"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1674
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .line 1675
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyOverride:Z

    .line 1676
    return-void
.end method

.method setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 14
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "ready"    # Z

    .line 1658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mUsed:Z

    .line 1659
    move-object v1, p1

    .line 1660
    .local v1, "current":Lcom/android/server/wm/WindowContainer;
    :goto_4
    if-eqz v1, :cond_41

    .line 1661
    invoke-static {v1}, Lcom/android/server/wm/Transition;->-$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1662
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_41

    move v2, p2

    .local v2, "protoLogParam0":Z
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam2":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x72b3a875

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v3, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const-string v0, " Setting Ready-group to %b. group=%s from %s"

    invoke-static {v5, v6, v7, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1664
    .end local v2    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam2":Ljava/lang/String;
    goto :goto_41

    .line 1667
    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_4

    .line 1669
    :cond_41
    :goto_41
    return-void
.end method
