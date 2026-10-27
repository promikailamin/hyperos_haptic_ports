.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field static final greylist-max-o BTSOCK_FLAG_NO_SDP:I = 0x4

.field private static final greylist-max-o DBG:Z

.field static final greylist-max-r EADDRINUSE:I = 0x62

.field static final greylist-max-o EBADFD:I = 0x4d

.field static final greylist-max-o MAX_L2CAP_PACKAGE_SIZE:I = 0xffff

.field public static final greylist-max-o MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static final greylist-max-o PROXY_CONNECTION_TIMEOUT:I = 0x1388

.field static final greylist-max-o SEC_FLAG_AUTH:I = 0x2

.field static final greylist-max-o SEC_FLAG_AUTH_16_DIGIT:I = 0x10

.field static final greylist-max-o SEC_FLAG_AUTH_MITM:I = 0x8

.field static final greylist-max-o SEC_FLAG_ENCRYPT:I = 0x1

.field private static final greylist-max-o SOCK_SIGNAL_SIZE:I = 0x14

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BluetoothSocket"

.field public static final whitelist TYPE_L2CAP:I = 0x3

.field public static final greylist-max-o TYPE_L2CAP_BREDR:I = 0x3

.field public static final greylist-max-o TYPE_L2CAP_LE:I = 0x4

.field public static final whitelist TYPE_RFCOMM:I = 0x1

.field public static final whitelist TYPE_SCO:I = 0x2

.field private static final greylist-max-o VDBG:Z


# instance fields
.field private blacklist arr1:[Ljava/lang/String;

.field private blacklist arr2:[Ljava/lang/String;

.field private blacklist isRetrun:I

.field private greylist-max-o mAddress:Ljava/lang/String;

.field private final greylist-max-o mAuth:Z

.field private greylist-max-o mAuthMitm:Z

.field private blacklist mControlRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCount:I

.field private greylist-max-o mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final greylist-max-o mEncrypt:Z

.field private greylist-max-o mExcludeSdp:Z

.field private greylist-max-o mFd:I

.field private blacklist mFirstUse:Ljava/lang/Boolean;

.field private final greylist-max-o mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private greylist-max-o mL2capBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mLastType:I

.field private blacklist mLength:I

.field private greylist-max-o mMaxRxPacketSize:I

.field private greylist-max-o mMaxTxPacketSize:I

.field private greylist-max-o mMin16DigitPin:Z

.field private final greylist-max-o mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private blacklist mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPfd:Landroid/os/ParcelFileDescriptor;

.field private greylist mPort:I

.field private volatile blacklist mRstricteState:Ljava/lang/String;

.field private blacklist mScreen:Ljava/lang/Boolean;

.field private greylist-max-o mServiceName:Ljava/lang/String;

.field private greylist mSocket:Landroid/net/LocalSocket;

.field private greylist-max-o mSocketIS:Ljava/io/InputStream;

.field private greylist-max-o mSocketOS:Ljava/io/OutputStream;

.field private volatile greylist-max-o mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final blacklist mSystemPropertiesChanged:Ljava/lang/Runnable;

.field private final greylist-max-o mType:I

.field private blacklist mTypeListForAll:Ljava/lang/String;

.field private blacklist mTypeListForScreenOn:Ljava/lang/String;

.field private final greylist-max-o mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlRecord(Landroid/bluetooth/BluetoothSocket;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRstricteState(Landroid/bluetooth/BluetoothSocket;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRstricteState(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetControlRecord(Landroid/bluetooth/BluetoothSocket;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getControlRecord()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 93
    const-string v0, "BluetoothSocket"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    .line 94
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    return-void
.end method

.method constructor greylist-max-o <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .registers 18
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p6, "port"    # I
    .param p7, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    .line 190
    return-void
.end method

.method constructor greylist-max-o <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p6, "port"    # I
    .param p7, "uuid"    # Landroid/os/ParcelUuid;
    .param p8, "mitm"    # Z
    .param p9, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 140
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 142
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 159
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 1124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    .line 1137
    const/4 v1, 0x1

    .line 1141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1137
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1138
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    .line 1139
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    .line 1140
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 1141
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    .line 1142
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    .line 1143
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->arr2:[Ljava/lang/String;

    .line 1175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1183
    const-string v0, "false"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    .line 1184
    const-string v0, "1,2,3,4,5,6,7,8,9,10,>"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mTypeListForScreenOn:Ljava/lang/String;

    .line 1185
    const-string v0, "1,2,3,4"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mTypeListForAll:Ljava/lang/String;

    .line 1186
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    .line 1276
    new-instance v0, Landroid/bluetooth/BluetoothSocket$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket$1;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 210
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new BluetoothSocket of type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothSocket"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_82
    if-ne p1, v1, :cond_ac

    if-nez p7, :cond_ac

    const/4 v0, -0x1

    if-ne p2, v0, :cond_ac

    const/4 v0, -0x2

    if-eq p6, v0, :cond_ac

    .line 213
    if-lt p6, v1, :cond_93

    const/16 v0, 0x1e

    if-gt p6, v0, :cond_93

    goto :goto_ac

    .line 214
    :cond_93
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFCOMM channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_ac
    :goto_ac
    if-eqz p7, :cond_b1

    .line 218
    iput-object p7, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_bf

    .line 220
    :cond_b1
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 222
    :goto_bf
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 223
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 224
    iput-boolean p8, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 225
    iput-boolean p9, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 226
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 227
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 228
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 229
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mFd:I

    .line 231
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 233
    if-nez p5, :cond_e0

    .line 235
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_e6

    .line 238
    :cond_e0
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 240
    :goto_e6
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 241
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 242
    return-void
.end method

.method private constructor greylist-max-o <init>(IIZZLjava/lang/String;I)V
    .registers 18
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v10, p5

    invoke-direct {v5, v10}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    .line 325
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 5
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 140
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 142
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 159
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 1124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    .line 1137
    const/4 v1, 0x1

    .line 1141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1137
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1138
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    .line 1139
    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    .line 1140
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 1141
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    .line 1142
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    .line 1143
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->arr2:[Ljava/lang/String;

    .line 1175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1183
    const-string v0, "false"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    .line 1184
    const-string v0, "1,2,3,4,5,6,7,8,9,10,>"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mTypeListForScreenOn:Ljava/lang/String;

    .line 1185
    const-string v0, "1,2,3,4"

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mTypeListForAll:Ljava/lang/String;

    .line 1186
    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    .line 1276
    new-instance v0, Landroid/bluetooth/BluetoothSocket$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket$1;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 272
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new Private BluetoothSocket of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSocket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_84
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    .line 274
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mType:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 275
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 276
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 277
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 278
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 279
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 280
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 281
    iget v0, p1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 283
    iget-object v0, p1, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 284
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 285
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    .line 286
    iget-boolean v0, p1, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    .line 287
    return-void
.end method

.method private greylist-max-o acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;
    .registers 7
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 291
    .local v0, "as":Landroid/bluetooth/BluetoothSocket;
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 292
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 293
    .local v1, "fds":[Ljava/io/FileDescriptor;
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    const-string v3, "BluetoothSocket"

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "socket fd passed by stack fds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_30
    if-eqz v1, :cond_67

    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_67

    .line 300
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 301
    new-instance v3, Landroid/net/LocalSocket;

    aget-object v2, v1, v2

    invoke-direct {v3, v2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 302
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 303
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 304
    iput-object p1, v0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 305
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 306
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    iput v2, v0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 307
    return-object v0

    .line 295
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "socket fd passed from stack failed, fds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 297
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket acept failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o convertAddr([B)Ljava/lang/String;
    .registers 6
    .param p1, "addr"    # [B

    .line 831
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    .line 832
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 831
    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o createL2capRxBuffer()V
    .registers 5

    .line 867
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_74

    .line 869
    :cond_8
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    const-string v1, "BluetoothSocket"

    if-eqz v0, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Creating mL2capBuffer: mMaxPacketSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_26
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    .line 871
    if-eqz v0, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mL2capBuffer.remaining()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_4f
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 873
    if-eqz v0, :cond_74

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mL2capBuffer.remaining() after limit(0):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_74
    return-void
.end method

.method static blacklist createSocketFromOpenFd(Landroid/os/ParcelFileDescriptor;Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Landroid/bluetooth/BluetoothSocket;
    .registers 12
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    .line 260
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, -0x1

    move-object v0, v8

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 262
    .local v0, "bluetoothSocket":Landroid/bluetooth/BluetoothSocket;
    iput-object p0, v0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 263
    new-instance v1, Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 264
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 265
    iget-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 266
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 268
    return-object v0
.end method

.method private blacklist doOneTrackToBt(II)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1146
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    .line 1147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    .line 1149
    :cond_11
    const/4 v0, 0x2

    const-string v1, "ENABLE_BLUETOOTH_RESTRICTE"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "BluetoothSocket"

    if-eqz v0, :cond_62

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOneTrackToBt(), type= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mLastType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOneTrackToBt(), mCount= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mLength = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_62
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_76

    .line 1154
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    const/16 v3, 0xa

    if-gt v0, v3, :cond_76

    .line 1155
    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    .line 1156
    add-int/2addr v0, v2

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1157
    return-void

    .line 1160
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "push"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1161
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "s":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v3

    .line 1164
    .local v3, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v3, :cond_d7

    .line 1166
    :try_start_ba
    invoke-interface {v3, v0}, Landroid/bluetooth/IBluetooth;->doOneTrack(Ljava/lang/String;)V

    .line 1167
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    .line 1168
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    .line 1169
    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1170
    const-string v2, "doOneTrackToBt "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_c8} :catch_c9

    .line 1173
    goto :goto_d6

    .line 1171
    :catch_c9
    move-exception v2

    .line 1172
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_d6
    return-void

    .line 1164
    :cond_d7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o fillL2capRxBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 907
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 908
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 910
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 911
    return v1

    .line 913
    :cond_1b
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 914
    return v0
.end method

.method private blacklist getControlRecord()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    const-string v0, "BluetoothSocket"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 1129
    .local v1, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_45

    .line 1131
    :try_start_c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getRestrictControl(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getControlRecord(), mControlRecord "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_37

    .line 1135
    goto :goto_44

    .line 1133
    :catch_37
    move-exception v2

    .line 1134
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_44
    return-void

    .line 1129
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getIDMConnectTimeMsToBt(Landroid/bluetooth/IBluetooth;)V
    .registers 7
    .param p1, "bluetoothProxy"    # Landroid/bluetooth/IBluetooth;

    .line 1267
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1268
    .local v0, "curTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIDMConnectTime,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    .local v2, "s":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/bluetooth/IBluetooth;->doOneTrack(Ljava/lang/String;)V

    .line 1270
    const-string v3, "BluetoothSocket"

    const-string v4, "getIDMConnectTimeMsToBt "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    .line 1273
    nop

    .end local v0    # "curTime":J
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_2b

    .line 1271
    :catch_27
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method private greylist-max-o getSecurityFlags()I
    .registers 3

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    if-eqz v1, :cond_7

    .line 340
    or-int/lit8 v0, v0, 0x2

    .line 342
    :cond_7
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    if-eqz v1, :cond_d

    .line 343
    or-int/lit8 v0, v0, 0x1

    .line 345
    :cond_d
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    if-eqz v1, :cond_13

    .line 346
    or-int/lit8 v0, v0, 0x4

    .line 348
    :cond_13
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuthMitm:Z

    if-eqz v1, :cond_19

    .line 349
    or-int/lit8 v0, v0, 0x8

    .line 351
    :cond_19
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mMin16DigitPin:Z

    if-eqz v1, :cond_1f

    .line 352
    or-int/lit8 v0, v0, 0x10

    .line 354
    :cond_1f
    return v0
.end method

.method private blacklist needToStop()Z
    .registers 20

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1190
    return v2

    .line 1192
    :cond_c
    iget-object v1, v0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string/jumbo v3, "timeLimit"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1193
    .local v1, "sTimeLimit":Ljava/lang/String;
    iget-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v4, "countOn"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1194
    .local v3, "sCountOn":Ljava/lang/String;
    iget-object v4, v0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v5, "countOff"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1195
    .local v4, "sCountOff":Ljava/lang/String;
    iget-object v5, v0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string/jumbo v6, "packageName"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1196
    .local v5, "packagename":Ljava/lang/String;
    const v6, 0x1b7740

    .line 1197
    .local v6, "timeLimit":I
    const/16 v7, 0x258

    .line 1198
    .local v7, "countOn":I
    const/16 v8, 0x3c

    .line 1199
    .local v8, "countOff":I
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_60

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_60

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_60

    .line 1200
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1201
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v7, v9, 0x2

    .line 1202
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v8, v9, 0x2

    .line 1204
    :cond_60
    const-string v9, "ENABLE_BLUETOOTH_RESTRICTE"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    const-string v12, "BluetoothSocket"

    if-eqz v11, :cond_81

    .line 1205
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "needToStop: = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_81
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_136

    .line 1208
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9c

    .line 1209
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1210
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1212
    :cond_9c
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_be

    .line 1213
    iget-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1215
    .local v9, "totalMilliSecondsFirst":J
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .end local v9    # "totalMilliSecondsFirst":J
    move-object/from16 v18, v3

    goto/16 :goto_1e5

    .line 1217
    :cond_be
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1218
    .local v14, "totalMilliSecondsNow":J
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v14, v16

    move-object/from16 v18, v3

    .end local v3    # "sCountOn":Ljava/lang/String;
    .local v18, "sCountOn":Ljava/lang/String;
    int-to-long v2, v6

    cmp-long v2, v16, v2

    if-ltz v2, :cond_ea

    .line 1219
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_134

    .line 1222
    :cond_ea
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1223
    .local v2, "count":I
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const-string/jumbo v9, "needToStop: isScreenOn count = "

    if-eqz v3, :cond_113

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_113
    if-le v2, v7, :cond_12a

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v13

    .line 1230
    :cond_12a
    iget-object v3, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .end local v2    # "count":I
    .end local v14    # "totalMilliSecondsNow":J
    :goto_134
    goto/16 :goto_1e5

    .line 1235
    .end local v18    # "sCountOn":Ljava/lang/String;
    .restart local v3    # "sCountOn":Ljava/lang/String;
    :cond_136
    move-object/from16 v18, v3

    .end local v3    # "sCountOn":Ljava/lang/String;
    .restart local v18    # "sCountOn":Ljava/lang/String;
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14a

    .line 1236
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1237
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1239
    :cond_14a
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16a

    .line 1240
    iget-object v2, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1242
    .local v2, "totalMilliSecondsFirst":J
    iget-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .end local v2    # "totalMilliSecondsFirst":J
    goto/16 :goto_1e5

    .line 1244
    :cond_16a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1245
    .local v2, "totalMilliSecondsNow":J
    iget-object v14, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v14, v2, v14

    move-object/from16 v17, v12

    int-to-long v11, v6

    cmp-long v11, v14, v11

    if-ltz v11, :cond_196

    .line 1246
    iget-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iget-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e5

    .line 1249
    :cond_196
    iget-object v11, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1250
    .local v11, "count":I
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string/jumbo v10, "needToStop: isScreenOff count ="

    if-eqz v9, :cond_1c2

    .line 1251
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v17

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c4

    .line 1250
    :cond_1c2
    move-object/from16 v12, v17

    .line 1253
    :goto_1c4
    if-le v11, v8, :cond_1db

    .line 1254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return v13

    .line 1257
    :cond_1db
    iget-object v9, v0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .end local v2    # "totalMilliSecondsNow":J
    .end local v11    # "count":I
    :goto_1e5
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o readAll(Ljava/io/InputStream;[B)I
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    array-length v0, p2

    .line 881
    .local v0, "left":I
    :goto_1
    if-lez v0, :cond_4f

    .line 882
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 883
    .local v1, "ret":I
    if-lez v1, :cond_35

    .line 887
    sub-int/2addr v0, v1

    .line 888
    if-eqz v0, :cond_34

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readAll() looping, read partial size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothSocket"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v1    # "ret":I
    :cond_34
    goto :goto_1

    .line 884
    .restart local v1    # "ret":I
    :cond_35
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read failed, socket might closed or timeout, read ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    .end local v1    # "ret":I
    :cond_4f
    array-length v1, p2

    return v1
.end method

.method private greylist-max-o readInt(Ljava/io/InputStream;)I
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 898
    .local v0, "ibytes":[B
    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v1

    .line 899
    .local v1, "ret":I
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputStream.read ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothSocket"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 901
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 902
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method private greylist-max-o waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 837
    .local v1, "sig":[B
    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothSocket;->readAll(Ljava/io/InputStream;[B)I

    move-result v2

    .line 838
    .local v2, "ret":I
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    const-string v4, "BluetoothSocket"

    if-eqz v3, :cond_25

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "waitSocketSignal read 20 bytes signal ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 843
    .local v5, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 844
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 845
    .local v6, "size":I
    if-ne v6, v0, :cond_c4

    .line 848
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 849
    .local v0, "addr":[B
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 850
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 851
    .local v7, "channel":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 852
    .local v8, "status":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    const v10, 0xffff

    and-int/2addr v9, v10

    iput v9, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    .line 853
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    and-int/2addr v9, v10

    iput v9, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    .line 854
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->convertAddr([B)Ljava/lang/String;

    move-result-object v9

    .line 855
    .local v9, "RemoteAddr":Ljava/lang/String;
    if-eqz v3, :cond_a8

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "waitSocketSignal: sig size: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", remote addr: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", channel: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", status: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " MaxRxPktSize: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " MaxTxPktSize: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_a8
    if-nez v8, :cond_ab

    .line 863
    return-object v9

    .line 861
    :cond_ab
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure, status: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 846
    .end local v0    # "addr":[B
    .end local v7    # "channel":I
    .end local v8    # "status":I
    .end local v9    # "RemoteAddr":Ljava/lang/String;
    :cond_c4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failure, wrong signal size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist-max-o accept(I)Landroid/bluetooth/BluetoothSocket;
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_4b

    .line 566
    if-lez p1, :cond_25

    .line 567
    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept() set timeout (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 570
    :cond_25
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "RemoteAddr":Ljava/lang/String;
    if-lez p1, :cond_33

    .line 572
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 574
    :cond_33
    monitor-enter p0

    .line 575
    :try_start_34
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_40

    .line 578
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 580
    .local v1, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    monitor-exit p0

    .line 581
    return-object v1

    .line 576
    .end local v1    # "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    :cond_40
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket is not in listen state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "RemoteAddr":Ljava/lang/String;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    .end local p1    # "timeout":I
    throw v1

    .line 580
    .restart local v0    # "RemoteAddr":Ljava/lang/String;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    .restart local p1    # "timeout":I
    :catchall_48
    move-exception v1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_48

    throw v1

    .line 564
    .end local v0    # "RemoteAddr":Ljava/lang/String;
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bt socket is not in listen state"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSocket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1e
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method greylist-max-o bindListen()I
    .registers 12

    .line 494
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    const/16 v2, 0x4d

    if-ne v0, v1, :cond_9

    return v2

    .line 495
    :cond_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 496
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    const/4 v1, -0x1

    if-nez v0, :cond_1c

    .line 497
    const-string v2, "BluetoothSocket"

    const-string v3, "bindListen fail, reason: bluetooth is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v1

    .line 501
    :cond_1c
    :try_start_1c
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v3, :cond_46

    const-string v4, "BluetoothSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListen(): mPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_46
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v4

    .line 503
    .local v4, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-nez v4, :cond_54

    .line 504
    const-string v2, "BluetoothSocket"

    const-string v3, "bindListen() bt get socket manager failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v1

    .line 507
    :cond_54
    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v7, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    iget-object v8, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v9, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 508
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v10

    move-object v5, v4

    invoke-interface/range {v5 .. v10}, Landroid/bluetooth/IBluetoothSocketManager;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_67} :catch_17a

    .line 512
    .end local v4    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 516
    :try_start_68
    monitor-enter p0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_13c

    .line 517
    if-eqz v3, :cond_91

    .line 518
    :try_start_6b
    const-string v4, "BluetoothSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListen(), SocketState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPfd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_91
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v4, v5, :cond_99

    monitor-exit p0

    return v2

    .line 521
    :cond_99
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_9f

    monitor-exit p0

    return v1

    .line 522
    :cond_9f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 523
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_ae

    .line 524
    const-string v3, "BluetoothSocket"

    const-string v4, "bindListen(), null file descriptor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    monitor-exit p0

    return v1

    .line 528
    :cond_ae
    if-eqz v3, :cond_b7

    const-string v4, "BluetoothSocket"

    const-string v5, "bindListen(), Create LocalSocket"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_b7
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4, v2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 530
    if-eqz v3, :cond_c7

    const-string v4, "BluetoothSocket"

    const-string v5, "bindListen(), new LocalSocket.getInputStream()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_c7
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 532
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 533
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_6b .. :try_end_d8} :catchall_13a

    .line 534
    if-eqz v3, :cond_f4

    :try_start_da
    const-string v2, "BluetoothSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen(), readInt mSocketIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_f4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 536
    .local v2, "channel":I
    monitor-enter p0
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_fb} :catch_13c

    .line 537
    :try_start_fb
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v4, v5, :cond_105

    .line 538
    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 540
    :cond_105
    monitor-exit p0
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_135

    .line 541
    if-eqz v3, :cond_12c

    :try_start_108
    const-string v3, "BluetoothSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen(): channel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_12c
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    if-gt v3, v1, :cond_132

    .line 543
    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_132} :catch_13c

    .line 545
    :cond_132
    const/4 v1, 0x0

    .line 557
    .end local v2    # "channel":I
    .local v1, "ret":I
    nop

    .line 558
    return v1

    .line 540
    .end local v1    # "ret":I
    .restart local v2    # "channel":I
    :catchall_135
    move-exception v3

    :try_start_136
    monitor-exit p0
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_137
    throw v3
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_138} :catch_13c

    .line 533
    .end local v2    # "channel":I
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :goto_138
    :try_start_138
    monitor-exit p0
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_13a

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_139
    throw v2
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13a} :catch_13c

    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_13a
    move-exception v2

    goto :goto_138

    .line 546
    :catch_13c
    move-exception v2

    .line 547
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_161

    .line 549
    :try_start_141
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_145

    .line 552
    goto :goto_15e

    .line 550
    :catch_145
    move-exception v3

    .line 551
    .local v3, "e1":Ljava/io/IOException;
    const-string v4, "BluetoothSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindListen, close mPfd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v3    # "e1":Ljava/io/IOException;
    :goto_15e
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 555
    :cond_161
    const-string v3, "BluetoothSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindListen, fail to get port number, exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v1

    .line 509
    .end local v2    # "e":Ljava/io/IOException;
    :catch_17a
    move-exception v2

    .line 510
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v1
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketIS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketOS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSocketState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_5b

    .line 686
    return-void

    .line 688
    :cond_5b
    monitor-enter p0

    .line 689
    :try_start_5c
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_64

    .line 690
    monitor-exit p0

    return-void

    .line 692
    :cond_64
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 694
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    .line 695
    const/16 v0, 0xb

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 696
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mLastType:I

    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mLength:I

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothSocket;->doOneTrackToBt(II)V

    .line 697
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 698
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTime:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 699
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 700
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameTimeScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 701
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPackageNameValueScreenOff:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_94
    .catchall {:try_start_5c .. :try_end_94} :catchall_12e

    .line 704
    :cond_94
    :try_start_94
    const-string v0, "BluetoothSocket"

    const-string/jumbo v1, "removeChangeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->removeChangeCallback(Ljava/lang/Runnable;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_a2
    .catchall {:try_start_94 .. :try_end_a1} :catchall_12e

    .line 708
    goto :goto_a6

    .line 706
    :catch_a2
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 710
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a6
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_da

    .line 711
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_c9

    const-string v0, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing mSocket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_c9
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 713
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 714
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 715
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 717
    :cond_da
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_dc
    .catchall {:try_start_a3 .. :try_end_dc} :catchall_12e

    if-eqz v0, :cond_12c

    .line 720
    :try_start_de
    const-string v0, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecord close mPfd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {}, Landroid/bluetooth/BluetoothSocketStub;->get()Landroid/bluetooth/BluetoothSocketStub;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/BluetoothSocketStub;->startRecord(ZI)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_117} :catch_118
    .catchall {:try_start_de .. :try_end_117} :catchall_12e

    .line 724
    goto :goto_125

    .line 722
    :catch_118
    move-exception v0

    .line 723
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_119
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_125

    const-string v2, "BluetoothSocket"

    const-string/jumbo v3, "startRecord error: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_125
    :goto_125
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 727
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 729
    :cond_12c
    monitor-exit p0

    .line 731
    return-void

    .line 729
    :catchall_12e
    move-exception v0

    monitor-exit p0
    :try_end_130
    .catchall {:try_start_119 .. :try_end_130} :catchall_12e

    throw v0
.end method

.method public whitelist connect()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1a4

    .line 432
    :try_start_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v0, v1, :cond_153

    .line 434
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 435
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v0, :cond_14b

    .line 436
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v1

    .line 437
    .local v1, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v1, :cond_143

    .line 438
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mUuid:Landroid/os/ParcelUuid;

    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getSecurityFlags()I

    move-result v7

    move-object v2, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothSocketManager;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 439
    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothSocket;->getIDMConnectTimeMsToBt(Landroid/bluetooth/IBluetooth;)V

    .line 440
    monitor-enter p0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_31} :catch_15c

    .line 441
    :try_start_31
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_5b

    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect(), SocketState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPfd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_5b
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v2, v3, :cond_137

    .line 443
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_12f

    .line 444
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 445
    .local v2, "fd":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    .line 446
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    .line 447
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    .line 449
    const-string/jumbo v3, "persist.sys.bluetooth_restricte_state"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    .line 450
    const-string v3, "BluetoothSocket"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRstricteState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_bc

    .line 452
    iput v4, p0, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 453
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    .line 454
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->getControlRecord()V
    :try_end_bb
    .catchall {:try_start_31 .. :try_end_bb} :catchall_140

    goto :goto_c6

    .line 457
    :cond_bc
    :try_start_bc
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v3}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_c2
    .catchall {:try_start_bc .. :try_end_c1} :catchall_140

    .line 460
    goto :goto_c6

    .line 458
    :catch_c2
    move-exception v3

    .line 459
    .local v3, "e":Ljava/lang/Exception;
    :try_start_c3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_140

    .line 464
    :try_start_c7
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothSocket;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 465
    .local v2, "channel":I
    if-lez v2, :cond_127

    .line 468
    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 469
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothSocket;->waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 470
    monitor-enter p0
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_d7} :catch_15c

    .line 471
    :try_start_d7
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v3, v5, :cond_11c

    .line 474
    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 476
    const-string v3, "BluetoothSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecord connect mPfd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 477
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Landroid/bluetooth/BluetoothSocketStub;->get()Landroid/bluetooth/BluetoothSocketStub;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/BluetoothSocketStub;->startRecord(ZI)V

    .line 480
    monitor-exit p0

    .line 484
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local v2    # "channel":I
    nop

    .line 485
    return-void

    .line 472
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v2    # "channel":I
    :cond_11c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "bt socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local v2    # "channel":I
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v3

    .line 480
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local v2    # "channel":I
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_124
    move-exception v3

    monitor-exit p0
    :try_end_126
    .catchall {:try_start_d7 .. :try_end_126} :catchall_124

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_126
    throw v3

    .line 466
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_127
    new-instance v3, Ljava/io/IOException;

    const-string v4, "bt socket connect failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v3
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_12f} :catch_15c

    .line 443
    .end local v2    # "channel":I
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_12f
    :try_start_12f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket connect failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 442
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_137
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 463
    .restart local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catchall_140
    move-exception v2

    monitor-exit p0
    :try_end_142
    .catchall {:try_start_12f .. :try_end_142} :catchall_140

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :try_start_142
    throw v2

    .line 437
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_143
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt get socket manager failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 435
    .end local v1    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_14b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v1

    .line 432
    .end local v0    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_153
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v0
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_15c} :catch_15c

    .line 481
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_15c
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to send RPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connect is called on null device"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 331
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 333
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 334
    throw v0
.end method

.method public whitelist getConnectionType()I
    .registers 3

    .line 772
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 774
    const/4 v0, 0x3

    return v0

    .line 776
    :cond_7
    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public whitelist getMaxReceivePacketSize()I
    .registers 2

    .line 762
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxRxPacketSize:I

    return v0
.end method

.method public whitelist getMaxTransmitPacketSize()I
    .registers 2

    .line 749
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    return v0
.end method

.method public whitelist getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 827
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method greylist-max-o getPort()I
    .registers 2

    .line 737
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    return v0
.end method

.method public whitelist getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public greylist getSocketOpt(I[B)I
    .registers 9
    .param p1, "optionName"    # I
    .param p2, "optionVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "ret":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v1, v2, :cond_5c

    .line 963
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 964
    .local v1, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    const/4 v2, -0x1

    const-string v3, "BluetoothSocket"

    if-nez v1, :cond_1b

    .line 965
    const-string v4, "getSocketOpt fail, reason: bluetooth is off"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return v2

    .line 969
    :cond_1b
    :try_start_1b
    sget-boolean v4, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v4, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSocketOpt(), mType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_43
    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-interface {v1, v4, v5, p1, p2}, Landroid/bluetooth/IBluetooth;->getSocketOpt(III[B)I

    move-result v2
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_4b} :catch_4e

    move v0, v2

    .line 974
    nop

    .line 975
    return v0

    .line 971
    :catch_4e
    move-exception v4

    .line 972
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v2

    .line 962
    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_5c
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isConnected()Z
    .registers 3

    .line 401
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o read([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "ret":I
    sget-boolean v1, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    const-string v2, "BluetoothSocket"

    if-eqz v1, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read in:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2a
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v4, 0x3

    const-string v5, " length:"

    if-eq v3, v4, :cond_5d

    const/4 v4, 0x4

    if-ne v3, v4, :cond_35

    goto :goto_5d

    .line 617
    :cond_35
    if-eqz v1, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: read(): offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_55
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto/16 :goto_e0

    .line 593
    :cond_5d
    :goto_5d
    move v3, p3

    .line 594
    .local v3, "bytesToRead":I
    if-eqz v1, :cond_8b

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l2cap: read(): offset: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mL2capBuffer= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_8b
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_92

    .line 599
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->createL2capRxBuffer()V

    .line 601
    :cond_92
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_a9

    .line 602
    if-eqz v1, :cond_a1

    const-string v4, "l2cap buffer empty, refilling..."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_a1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->fillL2capRxBuffer()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a9

    .line 604
    return v5

    .line 607
    :cond_a9
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_b7

    .line 608
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 610
    :cond_b7
    if-eqz v1, :cond_d9

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(): offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytesToRead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_d9
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mL2capBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 615
    move v0, v3

    .line 616
    .end local v3    # "bytesToRead":I
    nop

    .line 620
    :goto_e0
    if-ltz v0, :cond_108

    .line 623
    if-eqz v1, :cond_107

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read out:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_107
    return v0

    .line 621
    :cond_108
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt socket closed, read return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o removeChannel()V
    .registers 1

    .line 734
    return-void
.end method

.method public greylist-max-o requestMaximumTxDataLength()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    const-string v0, "BluetoothSocket"

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_8c

    .line 806
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v1, v2, :cond_3d

    .line 810
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 811
    .local v1, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-eqz v1, :cond_35

    .line 815
    sget-boolean v2, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v2, :cond_20

    const-string/jumbo v2, "requestMaximumTxDataLength"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_20
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v2

    .line 817
    .local v2, "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    if-eqz v2, :cond_2d

    .line 818
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSocketManager;->requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V

    .line 822
    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v2    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    nop

    .line 823
    return-void

    .line 817
    .restart local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local v2    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    :cond_2d
    new-instance v3, Ljava/io/IOException;

    const-string v4, "bt get socket manager failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v3

    .line 812
    .end local v2    # "socketManager":Landroid/bluetooth/IBluetoothSocketManager;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_35
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bluetooth is off"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v2

    .line 807
    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :cond_3d
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    throw v1
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_46} :catch_46

    .line 819
    .restart local p0    # "this":Landroid/bluetooth/BluetoothSocket;
    :catch_46
    move-exception v1

    .line 820
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to send RPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "requestMaximumTxDataLength is called on null device"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setExcludeSdp(Z)V
    .registers 2
    .param p1, "excludeSdp"    # Z

    .line 789
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothSocket;->mExcludeSdp:Z

    .line 790
    return-void
.end method

.method greylist-max-o setServiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 405
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket;->mServiceName:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public greylist setSocketOpt(I[BI)I
    .registers 14
    .param p1, "optionName"    # I
    .param p2, "optionVal"    # [B
    .param p3, "optionLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "ret":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v1, v2, :cond_62

    .line 933
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 934
    .local v1, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    const/4 v2, -0x1

    const-string v9, "BluetoothSocket"

    if-nez v1, :cond_1c

    .line 935
    const-string/jumbo v3, "setSocketOpt fail, reason: bluetooth is off"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return v2

    .line 939
    :cond_1c
    :try_start_1c
    sget-boolean v3, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSocketOpt(), mType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_45
    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    move-object v3, v1

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetooth;->setSocketOpt(III[BI)I

    move-result v2
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_51} :catch_54

    move v0, v2

    .line 944
    nop

    .line 945
    return v0

    .line 941
    :catch_54
    move-exception v3

    .line 942
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return v2

    .line 932
    .end local v1    # "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_62
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o write([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_29

    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_29
    monitor-enter p0

    .line 637
    :try_start_2a
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 638
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v1, "isAllowUse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 639
    .local v0, "allUse":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 640
    const-string v1, "BluetoothSocket"

    const-string/jumbo v2, "restricte close socket ! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 643
    :cond_5b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 644
    .local v1, "uid":I
    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_83

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v3, "RecordControl"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 645
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->needToStop()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 646
    const/4 v2, -0x2

    monitor-exit p0

    return v2

    .line 650
    .end local v0    # "allUse":Ljava/lang/String;
    .end local v1    # "uid":I
    :cond_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_2a .. :try_end_84} :catchall_f9

    .line 652
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_93

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8d

    goto :goto_93

    .line 673
    :cond_8d
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_cf

    .line 653
    :cond_93
    :goto_93
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-gt p3, v0, :cond_9d

    .line 654
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_cf

    .line 656
    :cond_9d
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_bb

    .line 657
    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Write buffer larger than L2CAP packet size!\nPacket will be divided into SDU packets of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_bb
    move v0, p2

    .line 662
    .local v0, "tmpOffset":I
    move v1, p3

    .line 663
    .local v1, "bytesToWrite":I
    :goto_bd
    if-lez v1, :cond_ce

    .line 664
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-le v1, v2, :cond_c4

    .line 665
    goto :goto_c5

    .line 666
    :cond_c4
    move v2, v1

    :goto_c5
    nop

    .line 667
    .local v2, "tmpLength":I
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 668
    add-int/2addr v0, v2

    .line 669
    sub-int/2addr v1, v2

    .line 670
    .end local v2    # "tmpLength":I
    goto :goto_bd

    .line 671
    .end local v0    # "tmpOffset":I
    .end local v1    # "bytesToWrite":I
    :cond_ce
    nop

    .line 676
    :goto_cf
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_f8

    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_f8
    return p3

    .line 650
    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0
.end method

.method public whitelist write([BIII)I
    .registers 22
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v0, ","

    const/4 v6, -0x1

    if-nez v2, :cond_10

    .line 999
    return v6

    .line 1000
    :cond_10
    if-ltz v3, :cond_299

    array-length v7, v2

    if-gt v3, v7, :cond_299

    if-ltz v4, :cond_299

    add-int v7, v3, v4

    array-length v8, v2

    if-gt v7, v8, :cond_299

    add-int v7, v3, v4

    if-ltz v7, :cond_299

    .line 1003
    if-eqz v4, :cond_298

    if-gez v5, :cond_26

    goto/16 :goto_298

    .line 1006
    :cond_26
    const/4 v7, 0x0

    .line 1007
    .local v7, "isOpen":Z
    const-string v8, "ENABLE_BLUETOOTH_RESTRICTE"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    const-string v11, " length: "

    const-string v12, "BluetoothSocket"

    if-eqz v10, :cond_54

    .line 1008
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "write for restricte type: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v7, 0x1

    .line 1011
    :cond_54
    const-string/jumbo v10, "persist.sys.bluetooth_restricte_state"

    const-string v13, "false"

    invoke-static {v10, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    .line 1012
    iget-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    const-string/jumbo v14, "true"

    const/4 v15, 0x1

    if-eqz v10, :cond_97

    .line 1013
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mControlRecord.isEmpty()  mRstricteState = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 1015
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mFirstUse:Ljava/lang/Boolean;

    .line 1016
    iput v15, v1, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 1017
    invoke-direct/range {p0 .. p0}, Landroid/bluetooth/BluetoothSocket;->getControlRecord()V

    .line 1022
    :cond_97
    :try_start_97
    iget-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mRstricteState:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_219

    iget-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_219

    .line 1023
    iget-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v10, "isAllowUse"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1024
    .local v9, "allUse":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c1

    .line 1025
    const-string/jumbo v0, "restricte close socket ! "

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 1027
    return v6

    .line 1029
    :cond_c1
    const/4 v6, -0x2

    if-nez v5, :cond_dc

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restricte type = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return v6

    .line 1033
    :cond_dc
    const-string/jumbo v10, "persist.sys.bluetooth_restricte_state_Screen"

    invoke-static {v10, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1034
    .local v10, "screenStatus":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v6, 0x0

    if-eqz v13, :cond_f1

    .line 1035
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v1, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    goto :goto_f7

    .line 1037
    :cond_f1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v1, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    .line 1039
    :goto_f7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 1040
    .local v13, "uid":I
    const/16 v16, 0x0

    .line 1041
    .local v16, "isAllow":Z
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string v15, "RecordControl"

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_112

    .line 1042
    const/4 v7, 0x1

    .line 1044
    :cond_112
    const/16 v6, 0x3ea

    if-eq v13, v6, :cond_219

    if-eqz v7, :cond_219

    .line 1045
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string/jumbo v14, "msgTypeListForScreenOn"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForScreenOn:Ljava/lang/String;

    .line 1046
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mControlRecord:Ljava/util/Map;

    const-string/jumbo v14, "msgTypeListForAll"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForAll:Ljava/lang/String;

    .line 1047
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForScreenOn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_152

    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForAll:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_152

    .line 1048
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForScreenOn:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    .line 1049
    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mTypeListForAll:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/bluetooth/BluetoothSocket;->arr2:[Ljava/lang/String;

    .line 1051
    :cond_152
    const/4 v0, 0x2

    invoke-static {v8, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sScreenOn=  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arr1=  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " arr2=  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->arr2:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_19e
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 1056
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    array-length v8, v0

    const/4 v14, 0x0

    :goto_1aa
    if-ge v14, v8, :cond_1be

    aget-object v15, v0, v14

    .line 1057
    .local v15, "arr":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 1058
    const/4 v6, 0x1

    .line 1059
    .end local v16    # "isAllow":Z
    .local v6, "isAllow":Z
    move/from16 v16, v6

    .line 1056
    .end local v6    # "isAllow":Z
    .end local v15    # "arr":Ljava/lang/String;
    .restart local v16    # "isAllow":Z
    :cond_1bb
    add-int/lit8 v14, v14, 0x1

    goto :goto_1aa

    .line 1062
    :cond_1be
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    array-length v6, v0

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    aget-object v0, v0, v6

    const-string v6, ">"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 1063
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->arr1:[Ljava/lang/String;

    array-length v6, v0

    const/4 v8, 0x2

    sub-int/2addr v6, v8

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v5, v0, :cond_1dc

    .line 1064
    const/16 v16, 0x1

    .line 1067
    :cond_1dc
    if-nez v16, :cond_216

    .line 1068
    invoke-direct/range {p0 .. p0}, Landroid/bluetooth/BluetoothSocket;->needToStop()Z

    move-result v0

    if-eqz v0, :cond_216

    .line 1069
    const/4 v0, 0x0

    iput v0, v1, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 1070
    const/16 v0, 0xb

    iput v0, v1, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1071
    invoke-direct {v1, v5, v4}, Landroid/bluetooth/BluetoothSocket;->doOneTrackToBt(II)V

    .line 1072
    const/4 v0, -0x2

    return v0

    .line 1076
    :cond_1f0
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->arr2:[Ljava/lang/String;

    array-length v6, v0

    const/4 v8, 0x0

    :goto_1f4
    if-ge v8, v6, :cond_208

    aget-object v14, v0, v8

    .line 1077
    .local v14, "arr":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_205

    .line 1078
    const/4 v15, 0x1

    move/from16 v16, v15

    .line 1076
    .end local v14    # "arr":Ljava/lang/String;
    :cond_205
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f4

    .line 1081
    :cond_208
    if-nez v16, :cond_216

    .line 1082
    const/4 v0, 0x0

    iput v0, v1, Landroid/bluetooth/BluetoothSocket;->isRetrun:I

    .line 1083
    const/16 v0, 0xb

    iput v0, v1, Landroid/bluetooth/BluetoothSocket;->mCount:I

    .line 1084
    invoke-direct {v1, v5, v4}, Landroid/bluetooth/BluetoothSocket;->doOneTrackToBt(II)V

    .line 1085
    const/4 v0, -0x2

    return v0

    .line 1088
    :cond_216
    invoke-direct {v1, v5, v4}, Landroid/bluetooth/BluetoothSocket;->doOneTrackToBt(II)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_219} :catch_21a

    .line 1093
    .end local v9    # "allUse":Ljava/lang/String;
    .end local v10    # "screenStatus":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v16    # "isAllow":Z
    :cond_219
    goto :goto_227

    .line 1091
    :catch_21a
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_227
    iget v0, v1, Landroid/bluetooth/BluetoothSocket;->mType:I

    const/4 v6, 0x3

    if-eq v0, v6, :cond_236

    const/4 v6, 0x4

    if-ne v0, v6, :cond_230

    goto :goto_236

    .line 1117
    :cond_230
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_272

    .line 1097
    :cond_236
    :goto_236
    iget v0, v1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-gt v4, v0, :cond_240

    .line 1098
    iget-object v0, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_272

    .line 1100
    :cond_240
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->DBG:Z

    if-eqz v0, :cond_25c

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Write buffer larger than L2CAP packet size!\nPacket will be divided into SDU packets of size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_25c
    move/from16 v0, p2

    .line 1106
    .local v0, "tmpOffset":I
    move/from16 v6, p3

    .line 1107
    .local v6, "bytesToWrite":I
    :goto_260
    if-lez v6, :cond_271

    .line 1108
    iget v8, v1, Landroid/bluetooth/BluetoothSocket;->mMaxTxPacketSize:I

    if-le v6, v8, :cond_267

    .line 1109
    goto :goto_268

    .line 1110
    :cond_267
    move v8, v6

    :goto_268
    nop

    .line 1111
    .local v8, "tmpLength":I
    iget-object v9, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v9, v2, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 1112
    add-int/2addr v0, v8

    .line 1113
    sub-int/2addr v6, v8

    .line 1114
    .end local v8    # "tmpLength":I
    goto :goto_260

    .line 1115
    .end local v0    # "tmpOffset":I
    .end local v6    # "bytesToWrite":I
    :cond_271
    nop

    .line 1120
    :goto_272
    sget-boolean v0, Landroid/bluetooth/BluetoothSocket;->VDBG:Z

    if-eqz v0, :cond_297

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write out: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Landroid/bluetooth/BluetoothSocket;->mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_297
    return v4

    .line 1004
    .end local v7    # "isOpen":Z
    :cond_298
    :goto_298
    return v6

    .line 1002
    :cond_299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
