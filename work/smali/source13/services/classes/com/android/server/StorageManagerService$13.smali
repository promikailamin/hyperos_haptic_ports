.class Lcom/android/server/StorageManagerService$13;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->runFileDefrag(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$res:[I


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;[ILjava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 2879
    iput-object p1, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$13;->val$res:[I

    iput-object p3, p0, Lcom/android/server/StorageManagerService$13;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2886
    iget-object v0, p0, Lcom/android/server/StorageManagerService$13;->val$res:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2887
    iget-object v0, p0, Lcom/android/server/StorageManagerService$13;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2888
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 2883
    return-void
.end method
