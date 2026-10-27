.class Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothRouteInfo"
.end annotation


# instance fields
.field public btDevice:Landroid/bluetooth/BluetoothDevice;

.field public connectedProfiles:Landroid/util/SparseBooleanArray;

.field public route:Landroid/media/MediaRoute2Info;

.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method getRouteType()I
    .registers 4

    .line 441
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 442
    const/16 v0, 0x17

    return v0

    .line 445
    :cond_e
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 446
    const/16 v0, 0x1a

    return v0

    .line 449
    :cond_1b
    const/16 v0, 0x8

    return v0
.end method
