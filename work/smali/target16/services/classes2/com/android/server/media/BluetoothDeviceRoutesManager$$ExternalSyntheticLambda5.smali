.class public final synthetic Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;

    invoke-static {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->$r8$lambda$6G_FtZfwC0FssiEyFwtAK6cLn_o(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method
