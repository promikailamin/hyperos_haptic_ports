.class Lcom/android/server/bluetooth/BluetoothManagerService$7;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;->handleOnBootPhase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 2072
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$7;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2076
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$7;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$fgetmContext(Lcom/android/server/bluetooth/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bt_on_boot_safety_volume"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 2080
    goto :goto_15

    .line 2078
    :catch_11
    move-exception v0

    .line 2079
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2081
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    return-void
.end method
