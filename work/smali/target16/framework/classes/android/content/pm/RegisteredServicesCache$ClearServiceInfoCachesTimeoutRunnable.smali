.class Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearServiceInfoCachesTimeoutRunnable"
.end annotation


# instance fields
.field final blacklist mUserId:I

.field final synthetic blacklist this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 950
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput p2, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->mUserId:I

    .line 952
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 956
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 957
    :try_start_7
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v1}, Landroid/content/pm/RegisteredServicesCache;->-$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 958
    monitor-exit v0

    .line 959
    return-void

    .line 958
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
