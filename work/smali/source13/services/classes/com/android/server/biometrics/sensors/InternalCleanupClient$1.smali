.class Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    .line 69
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 9
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 72
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;, "Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 73
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate onClientFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Biometrics/InternalCleanupClient"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " templates for deletion"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 81
    .local v2, "unknownHALTemplate":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmCurrentTask(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "unknownHALTemplate":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    goto :goto_58

    .line 85
    :cond_7d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 88
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-interface {v1, v2, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_98

    .line 90
    :cond_93
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    .line 92
    :goto_98
    return-void
.end method
