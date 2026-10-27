.class public final Lcom/android/server/appfunctions/DeviceSettingHelperImpl;
.super Ljava/lang/Object;
.source "DeviceSettingHelperImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/DeviceSettingHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceSettingPackages:Ljava/util/Set;

.field public final mDeviceSettingPackagesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mDeviceSettingPackagesLock:Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDeviceSettingPackages()Ljava/util/Set;
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mDeviceSettingPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mDeviceSettingPackages:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 57
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_21

    .line 59
    :cond_b
    iget-object v1, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070019

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->mDeviceSettingPackages:Ljava/util/Set;

    .line 63
    monitor-exit v0

    return-object v2

    .line 64
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_9

    throw p0
.end method

.method public getPermissionOwnerPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;->getDeviceSettingPackages()Ljava/util/Set;

    move-result-object p0

    .line 47
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 48
    const-string p0, "android"

    return-object p0

    :cond_d
    return-object p1
.end method
