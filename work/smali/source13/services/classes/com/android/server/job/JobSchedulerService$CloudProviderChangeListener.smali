.class Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudProviderChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2969
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onCloudProviderChanged(ILjava/lang/String;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "authority"    # Ljava/lang/String;

    .line 2974
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2975
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2976
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2977
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 2978
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    .line 2977
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 2979
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_22

    const/4 v2, 0x0

    goto :goto_24

    :cond_22
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2980
    .local v2, "newPkg":Ljava/lang/String;
    :goto_24
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2981
    :try_start_29
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2982
    .local v4, "oldPkg":Ljava/lang/String;
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 2983
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_6b

    .line 2984
    const-string v5, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cloud provider of user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    :cond_6b
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2988
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 2989
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2990
    iput-object v4, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2991
    iput-object v2, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2992
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2994
    .end local v4    # "oldPkg":Ljava/lang/String;
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_8b
    monitor-exit v3

    .line 2995
    return-void

    .line 2994
    :catchall_8d
    move-exception v4

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_29 .. :try_end_8f} :catchall_8d

    throw v4
.end method
