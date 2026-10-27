.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;
.super Ljava/lang/Object;
.source "DeveloperVerifierController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxVerificationExtendedTimeoutMillisFromDeviceConfig()J
    .registers 4

    .line 837
    const-string/jumbo v0, "max_verification_request_extended_timeout_millis"

    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$sfgetDEFAULT_MAX_VERIFICATION_REQUEST_EXTENDED_TIMEOUT_MILLIS()J

    move-result-wide v1

    const-string/jumbo v3, "package_manager_service"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVerificationRequestTimeoutMillisFromDeviceConfig()J
    .registers 4

    .line 831
    const-string/jumbo v0, "verification_request_timeout_millis"

    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$sfgetDEFAULT_VERIFICATION_REQUEST_TIMEOUT_MILLIS()J

    move-result-wide v1

    const-string/jumbo v3, "package_manager_service"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVerifierConnectionTimeoutMillisFromDeviceConfig()J
    .registers 4

    .line 843
    const-string/jumbo v0, "verifier_connection_timeout_millis"

    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$sfgetDEFAULT_VERIFIER_CONNECTION_TIMEOUT_MILLIS()J

    move-result-wide v1

    const-string/jumbo v3, "package_manager_service"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .registers 3

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxVerificationExtendedTimeoutMillis()J
    .registers 3

    .line 819
    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getMaxVerificationExtendedTimeoutMillisFromDeviceConfig()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteService(Ljava/lang/String;Landroid/content/Context;ILandroid/os/Handler;)Lcom/android/internal/infra/ServiceConnector;
    .registers 13

    .line 760
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.content.pm.action.VERIFY_DEVELOPER"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    new-instance v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;

    new-instance v6, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector$1;-><init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getVerificationRequestTimeoutMillis()J
    .registers 3

    .line 811
    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getVerificationRequestTimeoutMillisFromDeviceConfig()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVerifierConnectionTimeoutMillis()J
    .registers 3

    .line 827
    invoke-static {}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$Injector;->getVerifierConnectionTimeoutMillisFromDeviceConfig()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    .line 802
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopTimeoutCountdown(Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 3

    .line 795
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    return-void
.end method
