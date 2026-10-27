.class public Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "PackageManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$realMoveId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V
    .registers 3

    .line 5674
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 5

    .line 5682
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method
