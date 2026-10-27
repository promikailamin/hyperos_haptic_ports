.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 218
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 222
    const-string v0, "whetstone.activity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmPowerManager(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    if-nez v1, :cond_17

    .line 223
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fputmPowerManager(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)V

    .line 225
    :cond_17
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "isDeviceIdleMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetmPowerManager(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 226
    .local v1, "deviceIdle":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceIdleMode changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-$$Nest$fgetpowerManagerServiceImpl(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "updateAllPartialWakeLockDisableState"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5b

    .line 230
    nop

    .end local v1    # "deviceIdle":Z
    goto :goto_63

    .line 228
    :catch_5b
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method
