.class public Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeCallbackWrapper"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 4455
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    .line 4456
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 4457
    return-void
.end method


# virtual methods
.method public greylist-max-o onBluetoothStateChange(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 4461
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    .line 4462
    return-void
.end method
