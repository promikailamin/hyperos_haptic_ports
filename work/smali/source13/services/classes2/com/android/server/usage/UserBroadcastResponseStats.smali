.class Lcom/android/server/usage/UserBroadcastResponseStats;
.super Ljava/lang/Object;
.source "UserBroadcastResponseStats.java"


# instance fields
.field private mResponseStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/usage/BroadcastEvent;",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method clearBroadcastResponseStats(Ljava/lang/String;J)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J

    .line 68
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_36

    .line 69
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    .line 70
    .local v1, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_21

    .line 71
    goto :goto_33

    .line 73
    :cond_21
    if-eqz p1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 74
    goto :goto_33

    .line 76
    :cond_2e
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 68
    .end local v1    # "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 78
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 90
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    .line 91
    .local v1, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/BroadcastResponseStats;

    .line 92
    .local v2, "responseStats":Landroid/app/usage/BroadcastResponseStats;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 93
    const-string v3, " -> "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    .end local v1    # "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    .end local v2    # "responseStats":Landroid/app/usage/BroadcastResponseStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method getBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 3
    .param p1, "broadcastEvent"    # Lcom/android/server/usage/BroadcastEvent;

    .line 38
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/BroadcastResponseStats;

    return-object v0
.end method

.method getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 7
    .param p1, "broadcastEvent"    # Lcom/android/server/usage/BroadcastEvent;

    .line 43
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/BroadcastResponseStats;

    .line 44
    .local v0, "responseStats":Landroid/app/usage/BroadcastResponseStats;
    if-nez v0, :cond_1d

    .line 45
    new-instance v1, Landroid/app/usage/BroadcastResponseStats;

    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/BroadcastResponseStats;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    .line 47
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1d
    return-object v0
.end method

.method onPackageRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 82
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 83
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 81
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 86
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method populateAllBroadcastResponseStats(Ljava/util/List;Ljava/lang/String;J)V
    .registers 9
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 55
    .local p1, "broadcastResponseStatsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/BroadcastResponseStats;>;"
    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 56
    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/BroadcastEvent;

    .line 57
    .local v1, "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getIdForResponseEvent()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-eqz v2, :cond_21

    .line 58
    goto :goto_39

    .line 60
    :cond_21
    if-eqz p2, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/usage/BroadcastEvent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 61
    goto :goto_39

    .line 63
    :cond_2e
    iget-object v2, p0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/BroadcastResponseStats;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v1    # "broadcastEvent":Lcom/android/server/usage/BroadcastEvent;
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 65
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method
