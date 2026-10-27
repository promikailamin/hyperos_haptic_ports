.class Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
.super Landroid/app/cloudsearch/ICloudSearchManager$Stub;
.source "CloudSearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cloudsearch/CloudSearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudSearchManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-direct {p0}, Landroid/app/cloudsearch/ICloudSearchManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V

    return-void
.end method

.method static synthetic lambda$destroy$2(Landroid/app/cloudsearch/SearchRequest;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 4
    .param p0, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p1, "service"    # Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    .line 152
    iget-object v0, p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    invoke-virtual {p0}, Landroid/app/cloudsearch/SearchRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onDestroyLocked(Ljava/lang/String;)V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method static synthetic lambda$returnResults$1(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 6
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/app/cloudsearch/SearchResponse;
    .param p3, "service"    # Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    .line 144
    iget-object v0, p3, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onReturnResultsLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method static synthetic lambda$search$0(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V
    .registers 5
    .param p0, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p1, "callBack"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .param p2, "service"    # Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    .line 135
    iget-object v0, p2, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    invoke-virtual {p2, p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "func"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 169
    .local v0, "am":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 169
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-virtual {v2}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 178
    .local v2, "ctx":Landroid/content/Context;
    const-string v3, "android.permission.MANAGE_CLOUDSEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 179
    # getter for: Lcom/android/server/cloudsearch/CloudSearchManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v3}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$000(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v3

    if-nez v3, :cond_88

    iget-object v3, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-static {v3}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v3

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_88

    .line 182
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Cannot call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    .end local v3    # "msg":Ljava/lang/String;
    :cond_88
    :goto_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 190
    .local v3, "origId":J
    :try_start_8c
    iget-object v5, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    # getter for: Lcom/android/server/cloudsearch/CloudSearchManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$100(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_b5

    .line 191
    :try_start_93
    iget-object v6, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    .line 192
    # invokes: Lcom/android/server/cloudsearch/CloudSearchManagerService;->getServiceListForUserLocked(I)Ljava/util/List;
    invoke-static {v6, v1}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->access$200(Lcom/android/server/cloudsearch/CloudSearchManagerService;I)Ljava/util/List;

    move-result-object v6

    .line 193
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_ac

    .line 194
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-interface {p2, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    .line 196
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    .end local v7    # "i":I
    :cond_ac
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_b2

    .line 198
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    nop

    .line 200
    return-void

    .line 196
    :catchall_b2
    move-exception v6

    :try_start_b3
    monitor-exit v5
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    .end local v0    # "am":Landroid/app/ActivityManagerInternal;
    .end local v1    # "userId":I
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
    .end local p1    # "func":Ljava/lang/String;
    .end local p2    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    :try_start_b4
    throw v6
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    .line 198
    .restart local v0    # "am":Landroid/app/ActivityManagerInternal;
    .restart local v1    # "userId":I
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
    .restart local p1    # "func":Ljava/lang/String;
    .restart local p2    # "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/cloudsearch/CloudSearchPerUserService;>;"
    :catchall_b5
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw v5
.end method


# virtual methods
.method public destroy(Landroid/app/cloudsearch/SearchRequest;)V
    .registers 4
    .param p1, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;

    .line 151
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/cloudsearch/SearchRequest;)V

    const-string v1, "destroyCloudSearchSession"

    invoke-direct {p0, v1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 156
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 162
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;)V

    .line 163
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/cloudsearch/CloudSearchManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 164
    return-void
.end method

.method public returnResults(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/app/cloudsearch/SearchResponse;

    .line 143
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V

    const-string/jumbo v1, "returnResults"

    invoke-direct {p0, v1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 148
    return-void
.end method

.method public search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .registers 5
    .param p1, "searchRequest"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callBack"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    .line 132
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->this$0:Lcom/android/server/cloudsearch/CloudSearchManagerService;

    invoke-static {v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->-$$Nest$fgetmContext(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/app/cloudsearch/SearchRequest;->setCallerPackageName(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    const-string/jumbo v1, "search"

    invoke-direct {p0, v1, v0}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->runForUser(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 139
    return-void
.end method
