.class public Lcom/android/server/storage/DeviceStorageMonitorServiceStub;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/storage/DeviceStorageMonitorServiceStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorServiceStub;

    return-object v0
.end method


# virtual methods
.method public enteringLowStorage(Landroid/os/storage/VolumeInfo;ZZJ)V
    .registers 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "isLow"    # Z
    .param p3, "isFull"    # Z
    .param p4, "usableBytes"    # J

    .line 41
    return-void
.end method

.method public getManageStorageIntent(Z)Landroid/content/Intent;
    .registers 4
    .param p1, "isFull"    # Z

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStorageFullBytes(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeInfo;)J
    .registers 5
    .param p1, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 30
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLowBytes(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeInfo;)J
    .registers 5
    .param p1, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .line 25
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isMIUI()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public leavingLowStorage(Landroid/os/storage/VolumeInfo;J)V
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "usableBytes"    # J

    .line 45
    return-void
.end method

.method public onBootPhase(Landroid/content/Context;I)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "phase"    # I

    .line 21
    return-void
.end method
