.class Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/blob/BlobStoreManagerService;

    .line 673
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onStateChanged$0(Ljava/lang/Object;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/blob/BlobStoreSession;

    .line 676
    move-object v0, p0

    check-cast v0, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$monStateChangedInternal(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/blob/BlobStoreSession;

    .line 675
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 677
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    return-void
.end method
