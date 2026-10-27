.class public final synthetic Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/BluetoothProfileMonitor;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->$r8$lambda$SCMV3bAgOuZ2Q2vU9OJ2m0dqYZw(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
