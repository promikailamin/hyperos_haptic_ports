.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
.super Ljava/lang/Object;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mClientId:I

.field public final mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V
    .registers 4

    .line 1898
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1899
    iput-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 1900
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_2a

    .line 1907
    :try_start_7
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1908
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    invoke-static {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_28

    .line 1910
    :cond_1b
    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_19

    .line 1913
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v4, 0x1f4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z

    return-void

    .line 1910
    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_19

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    .line 1913
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v3, 0x1f4

    invoke-static/range {v1 .. v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z

    .line 1914
    throw v0
.end method

.method public getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .registers 1

    .line 1922
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    return-object p0
.end method
