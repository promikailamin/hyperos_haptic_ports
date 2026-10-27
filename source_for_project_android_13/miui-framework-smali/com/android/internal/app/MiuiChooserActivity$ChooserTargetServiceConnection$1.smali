.class Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    .line 4287
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4290
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4291
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/MiuiChooserActivity;

    move-result-object v1

    if-nez v1, :cond_35

    .line 4292
    const-string v1, "MiuiChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyed ChooserTargetServiceConnection received result from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmConnectedComponent(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; ignoring..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    monitor-exit v0

    return-void

    .line 4300
    :cond_35
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/MiuiChooserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    .line 4302
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4300
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/app/MiuiChooserActivity;->filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V

    .line 4303
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4304
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4305
    new-instance v2, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v4}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmUserHandle(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4307
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->-$$Nest$fgetmChooserActivity(Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/MiuiChooserActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4308
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 4309
    return-void

    .line 4308
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_76

    throw v1
.end method
