.class public Lcom/android/server/pm/Settings$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "Settings.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V
    .registers 4

    .line 615
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/Settings;
    .registers 3

    .line 618
    new-instance v0, Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/Settings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings-IA;)V

    .line 619
    invoke-static {v0}, Lcom/android/server/pm/Settings;->-$$Nest$fgetmWatchable(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .registers 1

    .line 615
    invoke-virtual {p0}, Lcom/android/server/pm/Settings$2;->createSnapshot()Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method
