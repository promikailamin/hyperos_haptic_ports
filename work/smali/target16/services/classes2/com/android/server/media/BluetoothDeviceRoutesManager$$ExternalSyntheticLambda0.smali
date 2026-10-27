.class public final synthetic Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->$r8$lambda$TFFF3iFNgn47asuwnKMK43NnWko(Lcom/android/server/media/BluetoothDeviceRoutesManager;Landroid/bluetooth/BluetoothDevice;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method
