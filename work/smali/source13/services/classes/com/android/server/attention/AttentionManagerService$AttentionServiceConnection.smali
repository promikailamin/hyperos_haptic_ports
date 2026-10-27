.class Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttentionServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method

.method private init(Landroid/service/attention/IAttentionService;)V
    .registers 5
    .param p1, "service"    # Landroid/service/attention/IAttentionService;

    .line 764
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_7
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iput-object p1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 766
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fputmBinding(Lcom/android/server/attention/AttentionManagerService;Z)V

    .line 767
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method cleanupService()V
    .registers 4

    .line 759
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fputmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;Ljava/util/concurrent/CountDownLatch;)V

    .line 761
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 750
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 751
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 755
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 756
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 739
    invoke-static {p2}, Landroid/service/attention/IAttentionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 740
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 741
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 745
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 746
    return-void
.end method
