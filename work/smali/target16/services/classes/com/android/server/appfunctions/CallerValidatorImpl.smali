.class public Lcom/android/server/appfunctions/CallerValidatorImpl;
.super Ljava/lang/Object;
.source "CallerValidatorImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/CallerValidator;


# instance fields
.field public final mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/os/UserManager;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    iput-object p2, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mAppFunctionAccessService:Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 55
    new-instance p2, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;

    invoke-direct {p2, p1}, Lcom/android/server/appfunctions/DeviceSettingHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mDeviceSettingHelper:Lcom/android/server/appfunctions/DeviceSettingHelper;

    .line 56
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final getDevicePolicyManagerAsUser(Landroid/os/UserHandle;)Landroid/app/admin/DevicePolicyManager;
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/app/admin/DevicePolicyManager;

    .line 301
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public final getPackageUid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    const/4 p0, -0x1

    return p0
.end method

.method public final isAppFunctionPolicyAllowed(IZ)Z
    .registers 3

    .line 0
    if-eqz p1, :cond_8

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return p2

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 66
    :try_start_8
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->validateCallingPackageInternal(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public final validateCallingPackageInternal(ILjava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_14

    .line 265
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0, p2}, Lcom/android/server/appfunctions/CallerValidatorImpl;->getPackageUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_15

    :goto_14
    return-void

    .line 270
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Specified calling package ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] does not match the calling uid "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7

    if-nez p1, :cond_c

    const/4 p0, 0x2

    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 167
    :cond_c
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/appfunctions/CallerValidatorImpl;->verifyCallerCanExecuteAppFunctionHelper(IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public final verifyCallerCanExecuteAppFunctionHelper(IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 134
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.EXECUTE_APP_FUNCTIONS"

    .line 135
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x2

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 141
    :cond_14
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .registers 5

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->getDevicePolicyManagerAsUser(Landroid/os/UserHandle;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAppFunctionsPolicy()I

    move-result v0

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/CallerValidatorImpl;->getDevicePolicyManagerAsUser(Landroid/os/UserHandle;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAppFunctionsPolicy()I

    move-result v1

    .line 178
    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 180
    invoke-virtual {p0, v1, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->isAppFunctionPolicyAllowed(IZ)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->isAppFunctionPolicyAllowed(IZ)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 7

    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 85
    :try_start_c
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/appfunctions/CallerValidatorImpl;->verifyUserInteraction(IIILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 91
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw p0
.end method

.method public verifyUserInteraction(III)V
    .registers 5

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appfunctions/CallerValidatorImpl;->verifyUserInteraction(IIILjava/lang/String;)V

    return-void
.end method

.method public verifyUserInteraction(IIILjava/lang/String;)V
    .registers 7

    .line 192
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 193
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_21

    .line 199
    :cond_f
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ltz v0, :cond_73

    .line 204
    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p3, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_4c

    if-nez p4, :cond_22

    :goto_21
    return-void

    .line 209
    :cond_22
    :try_start_22
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_28} :catch_29

    return-void

    .line 212
    :catch_29
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " haven\'t installed for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Permission denied while calling from uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; Requires permission: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Call does not support special user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
