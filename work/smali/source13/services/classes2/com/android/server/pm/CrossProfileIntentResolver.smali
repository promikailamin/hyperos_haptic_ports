.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "CrossProfileIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 54
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V
    .registers 3
    .param p1, "f"    # Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 65
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2

    .line 73
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentResolver$1;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method protected getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;
    .registers 3
    .param p1, "input"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 50
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 30
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 30
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 3
    .param p1, "size"    # I

    .line 35
    new-array v0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 3
    .param p1, "f"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 59
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    return-void
.end method
