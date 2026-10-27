.class public final Lcom/android/server/input/InputManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputManagerService.java"


# instance fields
.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 3707
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3708
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/input/InputManagerService;
    .registers 1

    .line 3728
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 2

    .line 3719
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$monBootPhase(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public onStart()V
    .registers 5

    .line 3713
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "input"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 3724
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Lifecycle;->mService:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$monUserSwitching(Lcom/android/server/input/InputManagerService;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
