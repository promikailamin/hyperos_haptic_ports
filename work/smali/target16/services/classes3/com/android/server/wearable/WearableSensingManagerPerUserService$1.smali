.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;
.super Ljava/lang/Object;
.source "WearableSensingManagerPerUserService.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmProvideDataStreamStatusCallback(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Landroid/os/RemoteCallback;

    move-result-object v1

    .line 157
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fputmProvideDataStreamStatusCallback(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/RemoteCallback;)V

    .line 158
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    if-eqz v1, :cond_18

    const/4 p0, 0x3

    .line 160
    invoke-static {v1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    :cond_18
    return-void

    :catchall_19
    move-exception p0

    .line 158
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method
