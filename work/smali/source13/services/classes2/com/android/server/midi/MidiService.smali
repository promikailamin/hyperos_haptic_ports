.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final MAX_CONNECTIONS_PER_CLIENT:I = 0x40

.field private static final MAX_DEVICE_SERVERS_PER_UID:I = 0x10

.field private static final MAX_LISTENERS_PER_CLIENT:I = 0x10

.field private static final MIDI_LEGACY_STRING:Ljava/lang/String; = "MIDI 1.0"

.field private static final MIDI_SERVICE:Ljava/util/UUID;

.field private static final MIDI_UNIVERSAL_STRING:Ljava/lang/String; = "MIDI 2.0"

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBleMidiDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/media/midi/MidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mBleMidiReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mNonMidiUUIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbMidiLock:Ljava/lang/Object;

.field private final mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmBleMidiDeviceMap(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDevices(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothServiceUid(Lcom/android/server/midi/MidiService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClients(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicesByInfo(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicesByServer(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbMidiLock(Lcom/android/server/midi/MidiService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddPackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->closeBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->dumpUuids(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->hasNonMidiUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->isBLEMIDIDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monUnlockUser(Lcom/android/server/midi/MidiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/midi/MidiService;->onUnlockUser()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDeviceLocked(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremovePackageDeviceServers(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/midi/MidiService;->dumpIntentExtras(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisBleTransport(Landroid/content/Intent;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/midi/MidiService;->isBleTransport(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 152
    const-string v0, "03B80E5A-EDE8-4B33-A751-6CE34EC4C700"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    .line 902
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 1224
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 808
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    .line 158
    new-instance v1, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 725
    new-instance v1, Lcom/android/server/midi/MidiService$2;

    invoke-direct {v1, p0}, Lcom/android/server/midi/MidiService$2;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mBleMidiReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 810
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 822
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 824
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AVRCP_CONTROLLER:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 828
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 830
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 831
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 832
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 833
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    return-void
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;
    .registers 33
    .param p1, "type"    # I
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"    # Z
    .param p10, "uid"    # I
    .param p11, "defaultProtocol"    # I

    .line 1138
    move-object/from16 v7, p0

    move-object/from16 v8, p7

    move/from16 v9, p10

    const/4 v0, 0x0

    .line 1139
    .local v0, "deviceCountForApp":I
    iget-object v1, v7, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v10, v0

    .end local v0    # "deviceCountForApp":I
    .local v10, "deviceCountForApp":I
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1140
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-ne v2, v9, :cond_26

    .line 1141
    add-int/lit8 v10, v10, 0x1

    .line 1143
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_26
    goto :goto_12

    .line 1144
    :cond_27
    const/16 v0, 0x10

    if-ge v10, v0, :cond_c3

    .line 1150
    iget v13, v7, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v0, v13, 0x1

    iput v0, v7, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 1151
    .local v13, "id":I
    new-instance v0, Landroid/media/midi/MidiDeviceInfo;

    move-object v11, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p9

    move/from16 v20, p11

    invoke-direct/range {v11 .. v20}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V

    .line 1155
    .local v11, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz v8, :cond_59

    .line 1157
    :try_start_49
    invoke-interface {v8, v11}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 1161
    goto :goto_59

    .line 1158
    :catch_4d
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiService"

    const-string v2, "RemoteException in setDeviceInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v1, 0x0

    return-object v1

    .line 1164
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    const/4 v0, 0x0

    .line 1165
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v1, 0x0

    .line 1166
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    move/from16 v12, p1

    if-ne v12, v2, :cond_7b

    .line 1167
    const-string v2, "bluetooth_device"

    move-object/from16 v14, p6

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1169
    iget-object v2, v7, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1170
    if-eqz v0, :cond_79

    .line 1171
    invoke-virtual {v0, v11}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 1174
    :cond_79
    move-object v15, v1

    goto :goto_7e

    .line 1166
    :cond_7b
    move-object/from16 v14, p6

    move-object v15, v1

    .line 1174
    .end local v1    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .local v15, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_7e
    if-nez v0, :cond_94

    .line 1175
    new-instance v16, Lcom/android/server/midi/MidiService$Device;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object v4, v11

    move-object/from16 v5, p8

    move/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    move-object/from16 v0, v16

    move-object v1, v0

    goto :goto_95

    .line 1174
    :cond_94
    move-object v1, v0

    .line 1177
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    :goto_95
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    if-eqz v15, :cond_a1

    .line 1179
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_a1
    iget-object v2, v7, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 1183
    :try_start_a4
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 1184
    .local v3, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3, v1}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    .line 1185
    .end local v3    # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_ae

    .line 1186
    :cond_be
    monitor-exit v2

    .line 1188
    return-object v11

    .line 1186
    :catchall_c0
    move-exception v0

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_c0

    throw v0

    .line 1145
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v11    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v13    # "id":I
    .end local v15    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_c3
    move/from16 v12, p1

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "too many MIDI devices already created for UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .registers 28
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1227
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const/4 v1, 0x0

    .line 1230
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v0, v13, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.media.midi.MidiDeviceService"

    invoke-virtual {v14, v0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_266
    .catchall {:try_start_5 .. :try_end_d} :catchall_264

    move-object v15, v0

    .line 1232
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v15, :cond_16

    .line 1358
    if-eqz v15, :cond_15

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1232
    :cond_15
    return-void

    .line 1235
    :cond_16
    :try_start_16
    const-string v0, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    iget-object v1, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1237
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping MIDI device service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": it does not require the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_46} :catch_261
    .catchall {:try_start_16 .. :try_end_46} :catchall_25e

    .line 1358
    if-eqz v15, :cond_4b

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1240
    :cond_4b
    return-void

    .line 1243
    :cond_4c
    const/4 v0, 0x0

    .line 1244
    .local v0, "properties":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1245
    .local v1, "numInputPorts":I
    const/4 v2, 0x0

    .line 1246
    .local v2, "numOutputPorts":I
    const/4 v3, 0x0

    .line 1247
    .local v3, "isPrivate":Z
    :try_start_50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 1248
    .local v12, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    .line 1251
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "numInputPorts":I
    .end local v2    # "numOutputPorts":I
    .end local v3    # "isPrivate":Z
    .local v10, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "properties":Landroid/os/Bundle;
    .local v17, "numInputPorts":I
    .local v18, "numOutputPorts":I
    .local v19, "isPrivate":Z
    :goto_64
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_68} :catch_261
    .catchall {:try_start_50 .. :try_end_68} :catchall_25e

    move v9, v0

    .line 1252
    .local v9, "eventType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_74

    .line 1253
    nop

    .line 1358
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "properties":Landroid/os/Bundle;
    .end local v17    # "numInputPorts":I
    .end local v18    # "numOutputPorts":I
    .end local v19    # "isPrivate":Z
    if-eqz v15, :cond_28a

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_28a

    .line 1254
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "properties":Landroid/os/Bundle;
    .restart local v17    # "numInputPorts":I
    .restart local v18    # "numOutputPorts":I
    .restart local v19    # "isPrivate":Z
    :cond_74
    const/4 v0, 0x2

    if-ne v9, v0, :cond_187

    .line 1255
    :try_start_77
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "tagName":Ljava/lang/String;
    const-string v1, "device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 1257
    if-eqz v16, :cond_a6

    .line 1258
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nested <device> elements in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v24, v10

    move-object/from16 v25, v12

    goto/16 :goto_23a

    .line 1262
    :cond_a6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .end local v16    # "properties":Landroid/os/Bundle;
    .local v1, "properties":Landroid/os/Bundle;
    const-string/jumbo v2, "service_info"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1264
    const/16 v17, 0x0

    .line 1265
    const/16 v18, 0x0

    .line 1266
    const/4 v2, 0x0

    .line 1268
    .end local v19    # "isPrivate":Z
    .local v2, "isPrivate":Z
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    .line 1269
    .local v3, "count":I
    const/4 v4, 0x0

    move/from16 v19, v2

    .end local v2    # "isPrivate":Z
    .local v4, "i":I
    .restart local v19    # "isPrivate":Z
    :goto_bd
    if-ge v4, v3, :cond_e0

    .line 1270
    invoke-interface {v15, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v15, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1272
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "private"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 1273
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v19, v6

    goto :goto_dd

    .line 1275
    :cond_da
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    .line 1278
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_e0
    move-object/from16 v16, v1

    goto/16 :goto_181

    .end local v1    # "properties":Landroid/os/Bundle;
    .restart local v16    # "properties":Landroid/os/Bundle;
    :cond_e4
    const-string v1, "input-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 1279
    if-nez v16, :cond_10e

    .line 1280
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v24, v10

    move-object/from16 v25, v12

    goto/16 :goto_23a

    .line 1284
    :cond_10e
    add-int/lit8 v17, v17, 0x1

    .line 1286
    const/4 v1, 0x0

    .line 1287
    .local v1, "portName":Ljava/lang/String;
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 1288
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_116
    if-ge v3, v2, :cond_12e

    .line 1289
    invoke-interface {v15, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1290
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v15, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1291
    .restart local v5    # "value":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 1292
    move-object v1, v5

    .line 1293
    goto :goto_12e

    .line 1288
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_12b
    add-int/lit8 v3, v3, 0x1

    goto :goto_116

    .line 1296
    .end local v3    # "i":I
    :cond_12e
    :goto_12e
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    nop

    .end local v1    # "portName":Ljava/lang/String;
    .end local v2    # "count":I
    goto :goto_181

    :cond_133
    const-string/jumbo v1, "output-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 1298
    if-nez v16, :cond_15e

    .line 1299
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v24, v10

    move-object/from16 v25, v12

    goto/16 :goto_23a

    .line 1303
    :cond_15e
    add-int/lit8 v18, v18, 0x1

    .line 1305
    const/4 v1, 0x0

    .line 1306
    .restart local v1    # "portName":Ljava/lang/String;
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 1307
    .restart local v2    # "count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_166
    if-ge v3, v2, :cond_17e

    .line 1308
    invoke-interface {v15, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1309
    .restart local v4    # "name":Ljava/lang/String;
    invoke-interface {v15, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1310
    .restart local v5    # "value":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 1311
    move-object v1, v5

    .line 1312
    goto :goto_17e

    .line 1307
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_17b
    add-int/lit8 v3, v3, 0x1

    goto :goto_166

    .line 1315
    .end local v3    # "i":I
    :cond_17e
    :goto_17e
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v1    # "portName":Ljava/lang/String;
    .end local v2    # "count":I
    :cond_181
    :goto_181
    move-object/from16 v24, v10

    move-object/from16 v25, v12

    goto/16 :goto_258

    :cond_187
    const/4 v0, 0x3

    if-ne v9, v0, :cond_252

    .line 1318
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1319
    .local v8, "tagName":Ljava/lang/String;
    const-string v0, "device"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_249

    .line 1320
    if-eqz v16, :cond_240

    .line 1321
    if-nez v17, :cond_1bd

    if-nez v18, :cond_1bd

    .line 1322
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<device> with no ports in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_1b7} :catch_261
    .catchall {:try_start_77 .. :try_end_1b7} :catchall_25e

    .line 1324
    move-object/from16 v24, v10

    move-object/from16 v25, v12

    goto/16 :goto_23a

    .line 1329
    :cond_1bd
    :try_start_1bd
    iget-object v0, v13, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1331
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bd .. :try_end_1c8} :catch_216
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c8} :catch_261
    .catchall {:try_start_1bd .. :try_end_1c8} :catchall_25e

    .line 1336
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v11, "uid":I
    nop

    .line 1338
    :try_start_1c9
    iget-object v7, v13, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cc} :catch_261
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_25e

    .line 1339
    const/4 v2, 0x2

    :try_start_1cd
    sget-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1341
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    .line 1342
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;
    :try_end_1dd
    .catchall {:try_start_1cd .. :try_end_1dd} :catchall_207

    const/4 v0, 0x0

    const/16 v20, -0x1

    .line 1339
    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v21, v7

    move-object/from16 v7, v16

    move-object/from16 v22, v8

    .end local v8    # "tagName":Ljava/lang/String;
    .local v22, "tagName":Ljava/lang/String;
    move-object v8, v0

    move/from16 v23, v9

    .end local v9    # "eventType":I
    .local v23, "eventType":I
    move-object/from16 v9, p1

    move-object/from16 v24, v10

    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v10, v19

    move-object/from16 v25, v12

    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v25, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v12, v20

    :try_start_1f9
    invoke-direct/range {v1 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;

    .line 1345
    monitor-exit v21
    :try_end_1fd
    .catchall {:try_start_1f9 .. :try_end_1fd} :catchall_214

    .line 1348
    const/4 v0, 0x0

    .line 1349
    .end local v16    # "properties":Landroid/os/Bundle;
    .local v0, "properties":Landroid/os/Bundle;
    :try_start_1fe
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1350
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_204} :catch_261
    .catchall {:try_start_1fe .. :try_end_204} :catchall_25e

    move-object/from16 v16, v0

    goto :goto_258

    .line 1345
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "eventType":I
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "properties":Landroid/os/Bundle;
    :catchall_207
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v23    # "eventType":I
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_212
    :try_start_212
    monitor-exit v21
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_214

    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/server/midi/MidiService;
    .end local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :try_start_213
    throw v0

    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/midi/MidiService;
    .restart local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_214
    move-exception v0

    goto :goto_212

    .line 1332
    .end local v11    # "uid":I
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "eventType":I
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_216
    move-exception v0

    move-object/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .line 1333
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v23    # "eventType":I
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not fetch ApplicationInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_239} :catch_261
    .catchall {:try_start_213 .. :try_end_239} :catchall_25e

    .line 1335
    nop

    .line 1251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "eventType":I
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_23a
    move-object/from16 v10, v24

    move-object/from16 v12, v25

    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_64

    .line 1320
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_240
    move-object/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v23    # "eventType":I
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_258

    .line 1319
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "eventType":I
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_249
    move-object/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v23    # "eventType":I
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_258

    .line 1317
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "eventType":I
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "eventType":I
    .restart local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_252
    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    .line 1354
    .end local v9    # "eventType":I
    .end local v10    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_258
    move-object/from16 v10, v24

    move-object/from16 v12, v25

    goto/16 :goto_64

    .line 1358
    .end local v16    # "properties":Landroid/os/Bundle;
    .end local v17    # "numInputPorts":I
    .end local v18    # "numOutputPorts":I
    .end local v19    # "isPrivate":Z
    .end local v24    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_25e
    move-exception v0

    move-object v1, v15

    goto :goto_28b

    .line 1355
    :catch_261
    move-exception v0

    move-object v1, v15

    goto :goto_267

    .line 1358
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_264
    move-exception v0

    goto :goto_28b

    .line 1355
    :catch_266
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    :goto_267
    :try_start_267
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_283
    .catchall {:try_start_267 .. :try_end_283} :catchall_264

    .line 1358
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_289

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1360
    :cond_289
    move-object v15, v1

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_28a
    :goto_28a
    return-void

    .line 1358
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_28b
    if-eqz v1, :cond_290

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1359
    :cond_290
    throw v0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 1215
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 1217
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 1218
    .local v1, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_e

    return-void

    .line 1219
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 1220
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 1219
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1222
    .end local v2    # "i":I
    :cond_1a
    return-void

    .line 1212
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "services":[Landroid/content/pm/ServiceInfo;
    :catch_1b
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePackageUpdate could not find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    return-void
.end method

.method private closeBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 992
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBluetoothDevice() device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 996
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDevice;

    .line 997
    .local v1, "midiDevice":Landroid/media/midi/MidiDevice;
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_44

    .line 999
    if-eqz v1, :cond_43

    .line 1001
    :try_start_26
    invoke-virtual {v1}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 1004
    goto :goto_43

    .line 1002
    :catch_2a
    move-exception v0

    .line 1003
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception closing BLE-MIDI device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_43
    :goto_43
    return-void

    .line 997
    .end local v1    # "midiDevice":Landroid/media/midi/MidiDevice;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private static dumpIntentExtras(Landroid/content/Intent;)V
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;

    .line 674
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 677
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_64

    .line 678
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 679
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 680
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_56

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_58

    :cond_56
    const-string v6, "NULL"

    :goto_58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2a

    .line 683
    :cond_64
    return-void
.end method

.method private dumpUuids(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 696
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 697
    .local v0, "uuidParcels":[Landroid/os/ParcelUuid;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpUuids("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") numParcels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    array-length v3, v0

    goto :goto_1f

    :cond_1e
    move v3, v2

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    const-string v3, "MidiService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    if-nez v0, :cond_34

    .line 701
    const-string v1, "No UUID Parcels"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 705
    :cond_34
    array-length v1, v0

    :goto_35
    if-ge v2, v1, :cond_56

    aget-object v4, v0, v2

    .line 706
    .local v4, "parcel":Landroid/os/ParcelUuid;
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 707
    .local v5, "uuid":Ljava/util/UUID;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " uuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v4    # "parcel":Landroid/os/ParcelUuid;
    .end local v5    # "uuid":Ljava/util/UUID;
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 709
    :cond_56
    return-void
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 326
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 328
    .local v1, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v1, :cond_22

    .line 329
    new-instance v2, Lcom/android/server/midi/MidiService$Client;

    invoke-direct {v2, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_24

    move-object v1, v2

    .line 332
    const/4 v2, 0x0

    :try_start_14
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_1e
    .catchall {:try_start_14 .. :try_end_17} :catchall_24

    .line 335
    nop

    .line 336
    :try_start_18
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 333
    :catch_1e
    move-exception v2

    .line 334
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 338
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    monitor-exit v0

    return-object v1

    .line 339
    .end local v1    # "client":Lcom/android/server/midi/MidiService$Client;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private hasNonMidiUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 712
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 713
    .local v0, "uuidParcels":[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 716
    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 717
    .local v4, "parcel":Landroid/os/ParcelUuid;
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 718
    const/4 v1, 0x1

    return v1

    .line 716
    .end local v4    # "parcel":Landroid/os/ParcelUuid;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 722
    :cond_1a
    return v1
.end method

.method private isBLEMIDIDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 662
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 663
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 664
    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 665
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/android/server/midi/MidiService;->MIDI_SERVICE:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 666
    const/4 v1, 0x1

    return v1

    .line 664
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 670
    :cond_1e
    return v1
.end method

.method private static isBleTransport(Landroid/content/Intent;)Z
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 686
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 687
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 688
    .local v1, "isBle":Z
    if-eqz v0, :cond_13

    .line 689
    const-string v2, "android.bluetooth.device.extra.TRANSPORT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_12

    const/4 v3, 0x1

    :cond_12
    move v1, v3

    .line 692
    :cond_13
    return v1
.end method

.method private isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z
    .registers 8
    .param p1, "info"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1404
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MIDI 1.0"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_19

    .line 1406
    return v3

    .line 1408
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1411
    .local v2, "tagName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MidiService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1416
    const-string v4, "MIDI 2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    .line 1417
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_5d

    .line 1420
    :cond_5c
    return v3

    .line 1418
    :cond_5d
    :goto_5d
    const/4 v3, 0x1

    return v3
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 1124
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 1125
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Client;

    .line 1126
    .local v2, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 1127
    .end local v2    # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_d

    .line 1128
    :cond_1d
    monitor-exit v0

    .line 1129
    return-void

    .line 1128
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private onUnlockUser()V
    .registers 6

    .line 839
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 844
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_31

    .line 845
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 846
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_31

    .line 847
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 848
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_2e

    .line 849
    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 846
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 856
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.bluetoothmidiservice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 859
    .local v2, "info":Landroid/content/pm/PackageInfo;
    goto :goto_3e

    .line 857
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_3b
    move-exception v2

    .line 858
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object v2, v3

    .line 860
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :goto_3e
    if-eqz v2, :cond_4b

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4b

    .line 861
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_4e

    .line 863
    :cond_4b
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 865
    :goto_4e
    return-void
.end method

.method private openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openBluetoothDevice() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/midi/MidiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 979
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    new-instance v1, Lcom/android/server/midi/MidiService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/midi/MidiService$3;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 989
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .line 1193
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .line 1194
    .local v0, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v0, :cond_f

    .line 1195
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_f
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 1200
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 1201
    .local v3, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    .line 1202
    .end local v3    # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_25

    .line 1203
    :cond_35
    monitor-exit v1

    .line 1204
    return-void

    .line 1203
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw v2
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 1364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1365
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1367
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1368
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1369
    invoke-direct {p0, v2}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    .line 1371
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_29
    goto :goto_d

    .line 1372
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_2a
    monitor-exit v0

    .line 1373
    return-void

    .line 1372
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .line 885
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 886
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 888
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    if-eqz v3, :cond_32

    .line 890
    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v3

    .line 891
    .local v3, "status":Landroid/media/midi/MidiDeviceStatus;
    if-eqz v3, :cond_28

    .line 892
    invoke-interface {p2, v3}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_35

    .line 896
    .end local v3    # "status":Landroid/media/midi/MidiDeviceStatus;
    :cond_28
    goto :goto_32

    .line 894
    :catch_29
    move-exception v3

    .line 895
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "MidiService"

    const-string/jumbo v5, "remote exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    goto :goto_d

    .line 899
    :cond_33
    monitor-exit v0

    .line 900
    return-void

    .line 899
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1425
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MIDI 1.0"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 1427
    return-void

    .line 1429
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1432
    .local v3, "tagName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MidiService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const-string v4, "MIDI 2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1435
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 1436
    :cond_50
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1437
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1438
    .local v2, "count":I
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    .end local v2    # "count":I
    :cond_72
    :goto_72
    return-void
.end method

.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 1040
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 1041
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    .line 1042
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1377
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string v1, "MidiService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1378
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1380
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "MIDI Manager State:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1383
    const-string v1, "Devices:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1385
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1386
    :try_start_25
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 1387
    .local v3, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    .end local v3    # "device":Lcom/android/server/midi/MidiService$Device;
    goto :goto_2f

    .line 1389
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_78

    .line 1390
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1392
    const-string v1, "Clients:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1394
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 1395
    :try_start_52
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 1396
    .local v3, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    .end local v3    # "client":Lcom/android/server/midi/MidiService$Client;
    goto :goto_5c

    .line 1398
    :cond_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_75

    .line 1399
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1400
    return-void

    .line 1398
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1

    .line 1389
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v2
.end method

.method extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "MIDI 1.0"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "MIDI 1.0"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 8
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1095
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1096
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_4d

    .line 1099
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1100
    .local v1, "uid":I
    invoke-virtual {v0, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1101
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v2

    return-object v2

    .line 1103
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceStatus() invalid UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MidiService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const v2, 0x534e4554

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "203549963"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "getDeviceStatus: invalid uid"

    aput-object v5, v3, v4

    .line 1104
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1106
    const/4 v2, 0x0

    return-object v2

    .line 1097
    .end local v1    # "uid":I
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 905
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;
    .registers 9
    .param p1, "transport"    # I

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v0, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 915
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 916
    :try_start_c
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 917
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 919
    const/4 v5, 0x2

    const/4 v6, -0x1

    if-ne p1, v5, :cond_3e

    .line 920
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v5

    if-eq v5, v6, :cond_52

    .line 922
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 924
    :cond_3e
    const/4 v5, 0x1

    if-ne p1, v5, :cond_52

    .line 925
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result v5

    if-ne v5, v6, :cond_52

    .line 927
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_52
    :goto_52
    goto :goto_16

    .line 932
    :cond_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_c .. :try_end_54} :catchall_5d

    .line 934
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/midi/MidiDeviceInfo;

    return-object v2

    .line 932
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1075
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1076
    :try_start_7
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 1077
    .local v3, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 1078
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_5d

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1079
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1080
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1081
    invoke-virtual {v3, v0}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1082
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1084
    :cond_40
    const v2, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "185796676"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1085
    monitor-exit v1

    return-object v4

    .line 1088
    .end local v3    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_5d
    goto :goto_11

    .line 1089
    :cond_5e
    monitor-exit v1

    return-object v4

    .line 1090
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 1011
    const-string v0, "MidiService"

    const-string/jumbo v1, "openBluetoothDevice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 1014
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_f

    return-void

    .line 1018
    :cond_f
    const-string v1, "MidiService"

    const-string v2, "alloc device..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1020
    :try_start_19
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1021
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v2, :cond_2e

    .line 1022
    new-instance v3, Lcom/android/server/midi/MidiService$Device;

    invoke-direct {v3, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    move-object v2, v3

    .line 1023
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_70

    .line 1026
    const-string v1, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1030
    .local v3, "identity":J
    :try_start_4b
    const-string v1, "MidiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addDeviceConnection() [C] device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {v0, v2, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_6b

    .line 1033
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_6b
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    throw v1

    .line 1025
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3    # "identity":J
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v2
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 940
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 941
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openDevice() client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    if-nez v0, :cond_20

    return-void

    .line 945
    :cond_20
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 946
    :try_start_23
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 947
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    const-string v3, "MidiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    if-eqz v2, :cond_b2

    .line 951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 954
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_cb

    .line 956
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_81

    .line 957
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLock:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_5a
    invoke-direct {p0, p2}, Lcom/android/server/midi/MidiService;->isUsbMidiDeviceInUseLocked(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 961
    invoke-virtual {p0, p2}, Lcom/android/server/midi/MidiService;->addUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V

    .line 962
    monitor-exit v1

    goto :goto_81

    .line 959
    :cond_65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device already in use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local p0    # "this":Lcom/android/server/midi/MidiService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    throw v3

    .line 962
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .restart local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local p0    # "this":Lcom/android/server/midi/MidiService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :catchall_7e
    move-exception v3

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_5a .. :try_end_80} :catchall_7e

    throw v3

    .line 966
    :cond_81
    :goto_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 968
    .local v3, "identity":J
    :try_start_85
    const-string v1, "MidiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addDeviceConnection() [B] device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {v0, v2, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_a0
    .catchall {:try_start_85 .. :try_end_a0} :catchall_a5

    .line 971
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    nop

    .line 973
    return-void

    .line 971
    :catchall_a5
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    throw v1

    .line 952
    .end local v3    # "identity":J
    :cond_aa
    :try_start_aa
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Attempt to open private device with wrong UID"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local p0    # "this":Lcom/android/server/midi/MidiService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    throw v3

    .line 949
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .restart local p0    # "this":Lcom/android/server/midi/MidiService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_b2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local p0    # "this":Lcom/android/server/midi/MidiService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    throw v3

    .line 954
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .restart local p0    # "this":Lcom/android/server/midi/MidiService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local p3    # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :catchall_cb
    move-exception v2

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_aa .. :try_end_cd} :catchall_cb

    throw v2
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;
    .registers 26
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I
    .param p8, "defaultProtocol"    # I

    .line 1048
    move-object/from16 v13, p0

    move/from16 v14, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1049
    .local v15, "uid":I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_19

    const/16 v0, 0x3e8

    if-ne v15, v0, :cond_10

    goto :goto_19

    .line 1050
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only system can create USB devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_19
    :goto_19
    const/4 v0, 0x3

    if-ne v14, v0, :cond_2a

    iget v0, v13, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-ne v15, v0, :cond_21

    goto :goto_2a

    .line 1052
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_2a
    :goto_2a
    iget-object v12, v13, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v12

    .line 1056
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move v11, v15

    move-object/from16 v16, v12

    move/from16 v12, p8

    :try_start_44
    invoke-direct/range {v1 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZII)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    monitor-exit v16

    return-object v0

    .line 1059
    :catchall_4a
    move-exception v0

    monitor-exit v16
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .line 869
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 870
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 871
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 873
    invoke-static {v0}, Lcom/android/server/midi/MidiService$Client;->-$$Nest$fgetmUid(Lcom/android/server/midi/MidiService$Client;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/midi/MidiService;->updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    .line 874
    return-void
.end method

.method removeUsbMidiDeviceLocked(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/media/midi/MidiDeviceInfo;

    .line 1444
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getProperties()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MIDI 1.0"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 1446
    return-void

    .line 1448
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/midi/MidiService;->extractUsbDeviceTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1451
    .local v3, "tagName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MidiService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v4, "MIDI 2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1454
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiUniversalDeviceInUse:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 1455
    :cond_50
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1456
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 1457
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1458
    .local v2, "count":I
    const/4 v4, 0x1

    if-le v2, v4, :cond_79

    .line 1459
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 1461
    :cond_79
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mUsbMidiLegacyDeviceOpenCount:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    .end local v2    # "count":I
    :cond_7e
    :goto_7e
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 7
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 1112
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 1113
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_4b

    .line 1114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 1118
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 1119
    invoke-direct {p0, v0, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_4b

    .line 1115
    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceStatus() caller UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match device\'s UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1121
    :cond_4b
    :goto_4b
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .line 1064
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 1065
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 1066
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v1, :cond_14

    .line 1067
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 1069
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_14
    monitor-exit v0

    .line 1070
    return-void

    .line 1069
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .line 878
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 879
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 880
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 881
    return-void
.end method
