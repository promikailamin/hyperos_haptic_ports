.class Lcom/android/server/media/MediaRouter2ServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 114
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 119
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_32

    .line 120
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 121
    .local v3, "userHandler":Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    nop

    .end local v3    # "userHandler":Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 124
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_32
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method
