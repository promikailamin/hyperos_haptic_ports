.class final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;
.super Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmbientContextManagerInternal"
.end annotation


# instance fields
.field final mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .registers 3

    .line 320
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>()V

    .line 321
    nop

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 321
    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$000(Lcom/android/server/ambientcontext/AmbientContextManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 383
    return-void

    .line 385
    :cond_11
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # getter for: Lcom/android/server/ambientcontext/AmbientContextManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$500(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 386
    :try_start_18
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    const-string v2, ""

    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    invoke-static {v1, v2, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$600(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 393
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 395
    return-void
.end method

.method public queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "eventTypes"    # [I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$300(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_33

    .line 361
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Detection service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    const/4 v1, 0x3

    invoke-virtual {v0, p3, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusToCallback(Landroid/os/RemoteCallback;I)V

    .line 364
    return-void

    .line 366
    :cond_33
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 368
    return-void
.end method

.method public registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "resultPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$100(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_37

    .line 335
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    const/4 v1, 0x3

    invoke-virtual {v0, p3, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 338
    return-void

    .line 340
    :cond_37
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 341
    return-void
.end method

.method public startConsentActivity([ILjava/lang/String;)V
    .registers 6
    .param p1, "eventTypes"    # [I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 372
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$400(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onStartConsentActivity([ILjava/lang/String;)V

    .line 378
    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    # invokes: Lcom/android/server/ambientcontext/AmbientContextManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$200(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->mService:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    invoke-virtual {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onUnregisterObserver(Ljava/lang/String;)V

    .line 349
    return-void
.end method
