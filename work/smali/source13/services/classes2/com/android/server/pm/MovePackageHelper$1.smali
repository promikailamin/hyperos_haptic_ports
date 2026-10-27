.class Lcom/android/server/pm/MovePackageHelper$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isCurrentLocationExternal:Z

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/MovePackageHelper;

    .line 226
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_20

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install result for move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_20
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 242
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 244
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 245
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_64

    .line 256
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/4 v3, -0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_62

    .line 252
    :sswitch_3e
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 254
    goto :goto_62

    .line 247
    :sswitch_4b
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$moveId:I

    const/16 v3, -0x64

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 249
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$1;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v2, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$packageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$isCurrentLocationExternal:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper;->-$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V

    .line 250
    nop

    .line 260
    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_4b
        0x6 -> :sswitch_3e
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$1;->val$freezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
