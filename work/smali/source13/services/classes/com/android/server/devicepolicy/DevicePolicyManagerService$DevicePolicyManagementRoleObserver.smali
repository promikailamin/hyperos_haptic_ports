.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevicePolicyManagementRoleObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 18806
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18807
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 18808
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 18809
    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 18810
    return-void
.end method

.method private getDefaultRoleHolderPackageName()Ljava/lang/String;
    .registers 3

    .line 18890
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object v0

    .line 18891
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 18892
    const/4 v1, 0x0

    return-object v1

    .line 18894
    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;
    .registers 4

    .line 18906
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    const v1, 0x104003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18908
    .local v0, "packageNameAndSignature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18909
    const/4 v1, 0x0

    return-object v1

    .line 18911
    :cond_11
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 18912
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 18914
    :cond_1e
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private getDefaultRoleHolderPackageSignature()Ljava/lang/String;
    .registers 4

    .line 18898
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object v0

    .line 18899
    .local v0, "info":[Ljava/lang/String;
    if-eqz v0, :cond_f

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    goto :goto_f

    .line 18902
    :cond_b
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 18900
    :cond_f
    :goto_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private getRoleHolder()Ljava/lang/String;
    .registers 3

    .line 18857
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDevicePolicyManagementRoleHolderPackageName(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificateString"    # Ljava/lang/String;

    .line 18874
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-nez p2, :cond_6

    goto :goto_38

    .line 18879
    :cond_6
    :try_start_6
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_1e

    .line 18883
    .local v0, "certificate":[B
    nop

    .line 18884
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 18885
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v2

    return v2

    .line 18880
    .end local v0    # "certificate":[B
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_1e
    move-exception v1

    .line 18881
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse signing certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18882
    return v0

    .line 18875
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_38
    :goto_38
    return v0
.end method

.method private isDefaultRoleHolder(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 18862
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageName()Ljava/lang/String;

    move-result-object v0

    .line 18863
    .local v0, "defaultRoleHolder":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    if-nez v0, :cond_a

    goto :goto_1b

    .line 18866
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 18867
    return v1

    .line 18869
    :cond_11
    nop

    .line 18870
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageSignature()Ljava/lang/String;

    move-result-object v1

    .line 18869
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 18864
    :cond_1b
    :goto_1b
    return v1
.end method

.method static synthetic lambda$onRoleHoldersChanged$0(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "successful"    # Ljava/lang/Boolean;

    .line 18852
    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 18818
    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 18819
    return-void

    .line 18821
    :cond_9
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getRoleHolder()Ljava/lang/String;

    move-result-object v0

    .line 18822
    .local v0, "newRoleHolder":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->isDefaultRoleHolder(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DevicePolicyManager"

    if-eqz v1, :cond_1c

    .line 18823
    const-string/jumbo v1, "onRoleHoldersChanged: Default role holder is set, returning early"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18825
    return-void

    .line 18827
    :cond_1c
    if-nez v0, :cond_25

    .line 18828
    const-string/jumbo v1, "onRoleHoldersChanged: New role holder is null, returning early"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18830
    return-void

    .line 18832
    :cond_25
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mshouldAllowBypassingDevicePolicyManagementRoleQualificationInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 18833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRoleHoldersChanged: Updating current role holder to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18835
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    .line 18837
    return-void

    .line 18839
    :cond_4b
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v8

    .line 18840
    .local v8, "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    iget-object v1, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 18841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRoleHoldersChanged: You can\'t set a different role holder, role is getting revoked from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18844
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    .line 18846
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    move-object v3, v0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 18854
    :cond_88
    return-void
.end method

.method public register()V
    .registers 4

    .line 18813
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 18814
    return-void
.end method
