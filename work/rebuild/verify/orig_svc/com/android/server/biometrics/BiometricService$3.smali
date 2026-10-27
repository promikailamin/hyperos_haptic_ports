.class public Lcom/android/server/biometrics/BiometricService$3;
.super Landroid/app/UserSwitchObserver;
.source "BiometricService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 1555
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 4

    .line 1558
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 1560
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    .line 1562
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$3;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(II)V

    return-void
.end method
