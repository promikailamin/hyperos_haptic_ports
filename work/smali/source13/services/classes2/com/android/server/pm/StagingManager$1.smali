.class Lcom/android/server/pm/StagingManager$1;
.super Ljava/lang/Object;
.source "StagingManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/StagingManager;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/StagingManager;

.field final synthetic val$observer:Landroid/content/pm/IStagedApexObserver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/StagingManager;

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    iput-object p2, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->-$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 195
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->-$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
