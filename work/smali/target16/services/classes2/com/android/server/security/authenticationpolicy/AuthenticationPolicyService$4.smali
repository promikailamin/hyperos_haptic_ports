.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;
.super Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelWatchRangingForRequestId(J)V
    .registers 3

    .line 655
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->cancelWatchRangingForRequestId_enforcePermission()V

    .line 657
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmWatchRangingService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;->cancelWatchRangingForRequestId(J)V

    return-void
.end method

.method public disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .registers 9

    .line 552
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->disableSecureLockDevice_enforcePermission()V

    .line 553
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    const-string v1, "AuthenticationPolicyService#disableSecureLockDevice"

    invoke-static {v0, p1, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$menforceCrossUserPermission(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 558
    :try_start_e
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {v2}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object v2

    .line 559
    invoke-virtual {v2, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->hasUserCompletedTwoFactorAuthentication(Landroid/os/UserHandle;)Z

    move-result v2

    .line 560
    const-string v3, "AuthenticationPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling secure lock device: user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", authenticationComplete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;Z)I

    move-result p0
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_44

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_44
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    throw p0
.end method

.method public enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .registers 5

    .line 528
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->enableSecureLockDevice_enforcePermission()V

    .line 529
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    const-string v1, "AuthenticationPolicyService#enableSecureLockDevice"

    invoke-static {v0, p1, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$menforceCrossUserPermission(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 533
    :try_start_e
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw p0
.end method

.method public getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I
    .registers 4

    .line 503
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getSecureLockDeviceAvailability_enforcePermission()V

    .line 504
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    const-string v1, "AuthenticationPolicyService#getSecureLockDeviceAvailability"

    invoke-static {v0, p1, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$menforceCrossUserPermission(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 509
    :try_start_e
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    throw p0
.end method

.method public isSecureLockDeviceEnabled()Z
    .registers 3

    .line 576
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->isSecureLockDeviceEnabled_enforcePermission()V

    .line 578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 580
    :try_start_7
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->isSecureLockDeviceEnabled()Z

    move-result p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 582
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    throw p0
.end method

.method public isWatchRangingAvailable(Landroid/proximity/IProximityResultCallback;)V
    .registers 2

    .line 664
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->isWatchRangingAvailable_enforcePermission()V

    .line 666
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmWatchRangingService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;->isWatchRangingAvailable(Landroid/proximity/IProximityResultCallback;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 673
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_41

    .line 674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2c

    .line 675
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Shell command called from non-shell UID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 675
    const-string p1, "AuthenticationPolicyService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 677
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 680
    :cond_2c
    new-instance v0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyServiceShellCommand;-><init>(Landroid/security/authenticationpolicy/IAuthenticationPolicyService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 681
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :cond_41
    return-void
.end method

.method public registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
    .registers 5

    .line 598
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->registerSecureLockDeviceStatusListener_enforcePermission()V

    .line 599
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    const-string v1, "AuthenticationPolicyService#registerSecureLockDeviceStatusListener"

    invoke-static {v0, p1, v1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$menforceCrossUserPermission(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 604
    :try_start_e
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    throw p0
.end method

.method public setSecureLockDeviceTestStatus(Z)V
    .registers 2

    .line 638
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->setSecureLockDeviceTestStatus_enforcePermission()V

    .line 639
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->setSecureLockDeviceTestStatus(Z)V

    return-void
.end method

.method public startWatchRangingForIdentityCheck(JLandroid/proximity/IProximityResultCallback;)V
    .registers 4

    .line 646
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->startWatchRangingForIdentityCheck_enforcePermission()V

    .line 648
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmWatchRangingService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/WatchRangingServiceInternal;->startWatchRangingForIdentityCheck(JLandroid/proximity/IProximityResultCallback;)V

    return-void
.end method

.method public unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
    .registers 6

    .line 619
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->unregisterSecureLockDeviceStatusListener_enforcePermission()V

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 622
    :try_start_7
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$4;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmSecureLockDeviceService(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;->unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V

    .line 623
    invoke-static {}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 624
    const-string p0, "AuthenticationPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistered listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_31

    goto :goto_33

    :catchall_31
    move-exception p0

    goto :goto_37

    .line 627
    :cond_33
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p0
.end method
