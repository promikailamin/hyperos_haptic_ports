.class public Lcom/android/server/os/BugreportManagerServiceImpl$Injector;
.super Ljava/lang/Object;
.source "BugreportManagerServiceImpl.java"


# instance fields
.field public mAllowlistedPackages:Landroid/util/ArraySet;

.field public mContext:Landroid/content/Context;

.field public mMappingFile:Landroid/util/AtomicFile;

.field public mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/ArraySet;Landroid/util/AtomicFile;)V
    .registers 4

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 429
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    .line 430
    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    .line 431
    new-instance p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    invoke-direct {p1, p0}, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    return-void
.end method


# virtual methods
.method public getAllowlistedPackages()Landroid/util/ArraySet;
    .registers 1

    .line 439
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 451
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getMappingFile()Landroid/util/AtomicFile;
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method public getRoleManagerWrapper()Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 447
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 455
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
