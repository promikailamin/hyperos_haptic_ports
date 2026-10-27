.class Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 324
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V

    return-void
.end method

.method private isAppBackupAndRestoreRunning(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const-string v1, "android.permission.BACKUP"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 368
    return v1

    .line 372
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 373
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_26

    move v2, v3

    goto :goto_27

    :cond_26
    move v2, v1

    .line 375
    .local v2, "isInSetup":Z
    :goto_27
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object v4

    .line 376
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_setup_personalization_state"

    .line 375
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_38
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_38} :catch_43

    if-ne v4, v3, :cond_3c

    move v4, v3

    goto :goto_3d

    :cond_3c
    move v4, v1

    .line 379
    .local v4, "isInDeferredSetup":Z
    :goto_3d
    if-nez v2, :cond_41

    if-eqz v4, :cond_42

    :cond_41
    move v1, v3

    :cond_42
    return v1

    .line 380
    .end local v0    # "userId":I
    .end local v2    # "isInSetup":Z
    .end local v4    # "isInDeferredSetup":Z
    :catch_43
    move-exception v0

    .line 381
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check if the user is in restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v1
.end method

.method static synthetic lambda$onGidsChanged$0(II)V
    .registers 3
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 327
    const-string/jumbo v0, "permission grant or revoke changed gids"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPermissionRevoked$1$com-android-server-pm-permission-PermissionManagerServiceImpl$1(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 352
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 353
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->isAppBackupAndRestoreRunning(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    return-void

    .line 357
    :cond_f
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 358
    .local v0, "appId":I
    if-nez p3, :cond_1c

    .line 359
    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p4, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    goto :goto_1f

    .line 361
    :cond_1c
    invoke-static {v0, p4, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    .line 363
    :goto_1f
    return-void
.end method

.method public onGidsChanged(II)V
    .registers 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 339
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 389
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 397
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 411
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionUpdated()V

    .line 412
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 413
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 335
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 401
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "overrideKill"    # Z
    .param p5, "permissionName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 347
    if-eqz p4, :cond_16

    .line 348
    return-void

    .line 351
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move v4, p1

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 5
    .param p1, "userIds"    # [I
    .param p2, "sync"    # Z

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 393
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 7
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionUpdated([IZ)V

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_1d

    .line 406
    aget v1, p1, v0

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 407
    .local v1, "userUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 405
    .end local v1    # "userUid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 409
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method
