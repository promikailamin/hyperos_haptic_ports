.class Lcom/android/server/bluetooth/BluetoothManagerService$8;
.super Ljava/util/ArrayList;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;->updateOppLauncherComponentState(Landroid/os/UserHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 3937
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$8;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3940
    const-string v0, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$8;->add(Ljava/lang/Object;)Z

    .line 3942
    const-string v0, "com.android.bluetooth.opp.BluetoothOppBtEnableActivity"

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$8;->add(Ljava/lang/Object;)Z

    .line 3943
    const-string v0, "com.android.bluetooth.opp.BluetoothOppBtEnablingActivity"

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$8;->add(Ljava/lang/Object;)Z

    .line 3944
    const-string v0, "com.android.bluetooth.opp.BluetoothOppBtErrorActivity"

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$8;->add(Ljava/lang/Object;)Z

    .line 3945
    return-void
.end method
