.class Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field mFeature:I

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .registers 4
    .param p2, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p3, "feature"    # I

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 62
    iput p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    .line 63
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayAreaOrganizerController;->getOrganizerByFeature(I)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v1

    .line 69
    .local v1, "featureOrganizer":Landroid/window/IDisplayAreaOrganizer;
    if-eqz v1, :cond_5e

    .line 70
    invoke-interface {v1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 71
    .local v2, "organizerBinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v3}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 72
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 73
    const-string v3, "DisplayAreaOrganizerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead organizer replaced for feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 76
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v3}, Lcom/android/server/wm/DisplayAreaOrganizerController;->-$$Nest$fgetmOrganizersByFeatureIds(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 78
    .end local v1    # "featureOrganizer":Landroid/window/IDisplayAreaOrganizer;
    .end local v2    # "organizerBinder":Landroid/os/IBinder;
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    return-void

    .line 78
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
