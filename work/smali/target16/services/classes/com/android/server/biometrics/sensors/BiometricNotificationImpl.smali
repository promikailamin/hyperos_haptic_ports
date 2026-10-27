.class public Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;
.super Ljava/lang/Object;
.source "BiometricNotificationImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricNotification;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCustomizeFpFrrNotification(Landroid/content/Context;)Z
    .registers 2

    .line 41
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showCustomizeFpFrrNotification(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public sendFaceEnrollNotification(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFaceEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public sendFpEnrollNotification(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFingerprintEnrollNotification(Landroid/content/Context;)V

    return-void
.end method
