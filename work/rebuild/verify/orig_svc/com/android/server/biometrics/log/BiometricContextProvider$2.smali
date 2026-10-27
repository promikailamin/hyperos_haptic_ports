.class public Lcom/android/server/biometrics/log/BiometricContextProvider$2;
.super Landroid/hardware/biometrics/IBiometricContextListener$Stub;
.source "BiometricContextProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayStateChanged(I)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmDisplayState(Lcom/android/server/biometrics/log/BiometricContextProvider;)I

    move-result v0

    if-eq p1, v0, :cond_12

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fputmDisplayState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V

    .line 132
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$mnotifyChanged(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    :cond_12
    return-void
.end method

.method public onFoldChanged(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmFoldState(Lcom/android/server/biometrics/log/BiometricContextProvider;)I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 123
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fputmFoldState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V

    .line 124
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$mnotifyChanged(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    :cond_12
    return-void
.end method

.method public onHardwareIgnoreTouchesChanged(Z)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmIsHardwareIgnoringTouches(Lcom/android/server/biometrics/log/BiometricContextProvider;)Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fputmIsHardwareIgnoringTouches(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V

    .line 140
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$mnotifyChanged(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    :cond_12
    return-void
.end method
