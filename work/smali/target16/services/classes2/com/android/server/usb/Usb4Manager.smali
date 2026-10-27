.class public Lcom/android/server/usb/Usb4Manager;
.super Ljava/lang/Object;
.source "Usb4Manager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Usb4Manager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mLock:Ljava/lang/Object;

.field public mUsb4ManagerNative:Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/Usb4Manager;->mLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/android/server/usb/Usb4Manager;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/server/usb/Usb4Manager;->mUserManager:Landroid/os/UserManager;

    .line 86
    iput-object p3, p0, Lcom/android/server/usb/Usb4Manager;->mUsb4ManagerNative:Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/android/server/usb/Usb4Manager;->mCurrentUserId:I

    .line 92
    invoke-virtual {p3, p0}, Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;->init(Lcom/android/server/usb/Usb4Manager;)V

    return-void
.end method


# virtual methods
.method public native enablePciTunnels(Z)V
.end method

.method public native nativeInit()V
.end method

.method public onEnablePciTunnels(Z)V
    .registers 6

    .line 113
    sget-object v0, Lcom/android/server/usb/Usb4Manager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePciTunnels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/usb/Usb4Manager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_19
    iget-object v2, p0, Lcom/android/server/usb/Usb4Manager;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/usb/Usb4Manager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 118
    const-string p0, "enablePciTunnels: UserInfo is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_4c

    .line 122
    :cond_2c
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 126
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_2a

    .line 128
    iget-object p0, p0, Lcom/android/server/usb/Usb4Manager;->mUsb4ManagerNative:Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;->enablePciTunnels(Z)V

    return-void

    .line 123
    :cond_3f
    :try_start_3f
    const-string p0, "enablePciTunnels: User is not full or admin"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "User is not full or admin"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_2a

    throw p0
.end method

.method public onUpdateLoggedInState(ZI)V
    .registers 6

    .line 155
    sget-object v0, Lcom/android/server/usb/Usb4Manager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLoggedInState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/server/usb/Usb4Manager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_29

    .line 160
    :try_start_24
    iput p2, p0, Lcom/android/server/usb/Usb4Manager;->mCurrentUserId:I

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_3a

    .line 162
    :cond_29
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_27

    if-nez p2, :cond_33

    .line 165
    const-string/jumbo p0, "updateLoggedInState: User is system user. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_33
    iget-object p0, p0, Lcom/android/server/usb/Usb4Manager;->mUsb4ManagerNative:Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/usb/Usb4Manager$Usb4ManagerNative;->updateLoggedInState(ZJ)V

    return-void

    .line 162
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_27

    throw p0
.end method

.method public native updateLockState(Z)V
.end method

.method public native updateLoggedInState(ZJ)V
.end method
