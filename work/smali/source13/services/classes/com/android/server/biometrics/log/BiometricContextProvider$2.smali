.class Lcom/android/server/biometrics/log/BiometricContextProvider$2;
.super Lcom/android/internal/statusbar/ISessionListener$Stub;
.source "BiometricContextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 101
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Lcom/android/internal/statusbar/ISessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 6
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 109
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    .line 110
    .local v0, "id":Lcom/android/internal/logging/InstanceId;
    if-eqz v0, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    if-eq v1, v2, :cond_26

    .line 111
    const-string v1, "BiometricContextProvider"

    const-string/jumbo v2, "session id mismatch"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_26
    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 5
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
