.class Landroid/hardware/face/BiometricClient$MyServiceConnection;
.super Ljava/lang/Object;
.source "BiometricClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/BiometricClient;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/face/BiometricClient;)V
    .registers 2

    .line 84
    iput-object p1, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/BiometricClient;Landroid/hardware/face/BiometricClient$MyServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/BiometricClient$MyServiceConnection;-><init>(Landroid/hardware/face/BiometricClient;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceConnected mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceConnectStatus(Landroid/hardware/face/BiometricClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0, p2}, Landroid/hardware/face/BiometricClient;->-$$Nest$monServiceBind(Landroid/hardware/face/BiometricClient;Landroid/os/IBinder;)V

    .line 89
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":onServiceDisconnected mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceConnectStatus(Landroid/hardware/face/BiometricClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$monServiceUnbind(Landroid/hardware/face/BiometricClient;Z)V

    .line 95
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$MyServiceConnection;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$mhandle_releaseService(Landroid/hardware/face/BiometricClient;)V

    .line 96
    return-void
.end method
