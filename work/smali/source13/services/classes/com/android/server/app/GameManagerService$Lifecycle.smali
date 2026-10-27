.class public Lcom/android/server/app/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 768
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 781
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 782
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService;->onBootCompleted()V

    .line 784
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 772
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 773
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/app/GameManagerService;

    invoke-direct {v1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    .line 774
    const-string v2, "game"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/app/GameManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V

    .line 776
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V

    .line 777
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 788
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 789
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 798
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 799
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 803
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    .line 804
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 793
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameManagerService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    .line 794
    return-void
.end method
