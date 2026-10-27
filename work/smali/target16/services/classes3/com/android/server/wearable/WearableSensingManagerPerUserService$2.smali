.class public Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;
.super Ljava/lang/Object;
.source "WearableSensingManagerPerUserService.java"

# interfaces
.implements Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;

.field public final synthetic val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .line 287
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$statusCallback:Landroid/os/RemoteCallback;

    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 305
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_42

    .line 306
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannelLock(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 307
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$currentSecureChannelRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 309
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_38

    .line 310
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v0}, Lcom/android/server/wearable/RemoteWearableSensingService;->killWearableSensingServiceProcess()V

    .line 311
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$fputmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingSecureChannel;)V

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_40

    .line 313
    :cond_38
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_36

    .line 314
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$statusCallback:Landroid/os/RemoteCallback;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    return-void

    .line 313
    :goto_40
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_36

    throw p0

    :catchall_42
    move-exception p0

    .line 305
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onSecureTransportAvailable(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 291
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "calling over to remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->-$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->this$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget-object v1, v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$wrappedWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;->val$statusCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 298
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw p0
.end method
