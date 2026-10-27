.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$0$com-android-server-wm-WindowOrganizerController(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method
