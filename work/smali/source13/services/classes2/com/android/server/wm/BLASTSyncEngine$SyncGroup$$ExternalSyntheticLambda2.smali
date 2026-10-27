.class public final synthetic Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final synthetic f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->lambda$finishNow$2$com-android-server-wm-BLASTSyncEngine$SyncGroup(Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    return-void
.end method
