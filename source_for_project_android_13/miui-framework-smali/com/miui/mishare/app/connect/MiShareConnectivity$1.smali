.class Lcom/miui/mishare/app/connect/MiShareConnectivity$1;
.super Ljava/lang/Object;
.source "MiShareConnectivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/connect/MiShareConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/connect/MiShareConnectivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/mishare/app/connect/MiShareConnectivity;

    .line 72
    iput-object p1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 75
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {p2}, Lcom/miui/mishare/IMiShareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fputmService(Lcom/miui/mishare/app/connect/MiShareConnectivity;Lcom/miui/mishare/IMiShareService;)V

    .line 76
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmCallback(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 77
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmCallback(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;->onServiceBound()V

    .line 79
    :cond_1a
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 83
    const-string v0, "MiShareConnectivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmCallback(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 85
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->-$$Nest$fgetmCallback(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;->onServiceUnBound()V

    .line 87
    :cond_18
    return-void
.end method
