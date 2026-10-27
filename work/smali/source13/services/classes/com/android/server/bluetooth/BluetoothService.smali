.class public Lcom/android/server/bluetooth/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mInitialized:Z

    .line 34
    new-instance v0, Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/bluetooth/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 35
    return-void
.end method

.method private initialize()V
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleOnBootPhase()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mInitialized:Z

    .line 42
    :cond_c
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 50
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_b

    .line 51
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    const-string v1, "bluetooth_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/bluetooth/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    :cond_b
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 46
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 58
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 59
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothService;->initialize()V

    .line 61
    :cond_9
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_8

    .line 66
    invoke-direct {p0}, Lcom/android/server/bluetooth/BluetoothService;->initialize()V

    goto :goto_11

    .line 68
    :cond_8
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleOnSwitchUser(Landroid/os/UserHandle;)V

    .line 70
    :goto_11
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 74
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothService;->mBluetoothManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->handleOnUnlockUser(Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method
