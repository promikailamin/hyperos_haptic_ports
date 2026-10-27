.class public Lcom/android/server/biometrics/BiometricService$4;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 1584
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmBiometricNotificationLogger(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricNotificationLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v3, Lcom/android/server/biometrics/BiometricNotificationLogger;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, -0x1

    .line 1588
    invoke-virtual {v0, v1, v2, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
