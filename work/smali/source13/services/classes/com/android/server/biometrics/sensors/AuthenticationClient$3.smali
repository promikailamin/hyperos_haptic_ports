.class Lcom/android/server/biometrics/sensors/AuthenticationClient$3;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutTimed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

.field final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 359
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$3;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$3;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendHapticFeedback()V
    .registers 2

    .line 362
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient$3;, "Lcom/android/server/biometrics/sensors/AuthenticationClient$3;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldVibrate:Z

    if-eqz v0, :cond_f

    .line 363
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->vibrateError()V

    .line 365
    :cond_f
    return-void
.end method
