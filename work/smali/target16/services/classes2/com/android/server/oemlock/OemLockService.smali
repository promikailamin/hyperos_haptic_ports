.class public Lcom/android/server/oemlock/OemLockService;
.super Lcom/android/server/SystemService;
.source "OemLockService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mOemLock:Lcom/android/server/oemlock/OemLock;

.field public final mService:Landroid/os/IBinder;

.field public final mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->enforceUserIsAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misOemUnlockAllowedByAdmin(Lcom/android/server/oemlock/OemLockService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLockService;->isOemUnlockAllowedByAdmin()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-static {p1}, Lcom/android/server/oemlock/OemLockService;->getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oemlock/OemLockService;-><init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lcom/android/server/oemlock/OemLockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/OemLockService$1;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    .line 120
    new-instance v1, Lcom/android/server/oemlock/OemLockService$2;

    invoke-direct {v1, p0}, Lcom/android/server/oemlock/OemLockService$2;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    .line 84
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 87
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void
.end method

.method public static getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;
    .registers 3

    .line 66
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object v0

    const-string v1, "OemLock"

    if-eqz v0, :cond_13

    .line 67
    const-string v0, "Using vendor lock via the HAL(aidl)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/android/server/oemlock/VendorLockAidl;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/VendorLockAidl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 69
    :cond_13
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 70
    const-string v0, "Using vendor lock via the HAL(hidl)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/android/server/oemlock/VendorLockHidl;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/VendorLockHidl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 73
    :cond_24
    const-string v0, "Using persistent data block based lock"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isHalPresent()Z
    .registers 1

    .line 60
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    if-nez v0, :cond_f

    .line 61
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final enforceUserIsAdmin()V
    .registers 4

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 265
    :try_start_8
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 269
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 266
    :cond_18
    :try_start_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Must be an admin user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 269
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw p0
.end method

.method public final isOemUnlockAllowedByAdmin()Z
    .registers 3

    .line 257
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const-string/jumbo v0, "no_factory_reset"

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 258
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onStart()V
    .registers 3

    .line 93
    const-string/jumbo v0, "oem_lock"

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setPersistentDataBlockOemUnlockAllowedBit(Z)V
    .registers 4

    .line 247
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 248
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    if-eqz v0, :cond_29

    .line 250
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    instance-of p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    if-nez p0, :cond_29

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update OEM Unlock bit in pst partition to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OemLock"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface {v0, p1}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->forceOemUnlockEnabled(Z)V

    :cond_29
    return-void
.end method
