.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LINUX_FOUNDATION_VID:I = 0x1d6b

.field private static final MAX_CONNECT_RECORDS:I = 0x20

.field private static final MAX_UNIQUE_CODE_GENERATION_ATTEMPTS:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerLock:Ljava/lang/Object;

.field private final mHasMidiFeature:Z

.field private final mHostDenyList:[Ljava/lang/String;

.field private mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

.field private final mLock:Ljava/lang/Object;

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbDirectMidiDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMidiUniqueCodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumConnects:I

.field private final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private final mRandom:Ljava/util/Random;

.field private mSettingsLock:Ljava/lang/Object;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbDeviceConnectionHandler:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$SPDYSM5zj7AWqCOdeQkFCup_bCc(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 64
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p3, "permissionManager"    # Lcom/android/server/usb/UsbPermissionManager;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 106
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    .line 250
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 255
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "deviceConnectionHandler":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 259
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 262
    :cond_6d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.midi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    .line 263
    return-void
.end method

.method private addConnectionRecord(Ljava/lang/String;I[B)V
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "rawDescriptors"    # [B

    .line 311
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 312
    :goto_6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    .line 313
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 315
    :cond_16
    new-instance v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;-><init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V

    .line 317
    .local v0, "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v1, -0x1

    if-eq p2, v1, :cond_25

    .line 319
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 321
    :cond_25
    if-nez p2, :cond_2d

    .line 322
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 323
    :cond_2d
    if-ne p2, v1, :cond_34

    .line 324
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_34
    :goto_34
    return-void
.end method

.method private checkUsbInterfacesDenyListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z
    .registers 8
    .param p1, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "shouldIgnoreDevice":Z
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 639
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-nez v3, :cond_1a

    .line 640
    goto :goto_9

    .line 642
    :cond_1a
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 643
    .local v3, "iface":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(II)Z

    move-result v0

    .line 644
    if-nez v0, :cond_2c

    .line 645
    goto :goto_2d

    .line 647
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v3    # "iface":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_2c
    goto :goto_9

    .line 648
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_31

    .line 652
    const/4 v1, 0x0

    return v1

    .line 654
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method private generateNewUsbDeviceIdentifier()Ljava/lang/String;
    .registers 7

    .line 660
    const/4 v0, 0x0

    .line 662
    .local v0, "numberOfAttempts":I
    :goto_1
    const/16 v1, 0xa

    if-le v0, v1, :cond_12

    .line 663
    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v3, "MIDI unique code array resetting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 665
    const/4 v0, 0x0

    .line 667
    :cond_12
    const-string v2, ""

    .line 668
    .local v2, "code":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    const/4 v4, 0x3

    if-ge v3, v4, :cond_32

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 671
    .end local v3    # "i":I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 672
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 673
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    return-object v2

    .line 672
    :cond_42
    goto :goto_1
.end method

.method private getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    .line 274
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getUsbDeviceConnectionHandler()Landroid/content/ComponentName;
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    monitor-exit v0

    return-object v1

    .line 286
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isDenyListed(II)Z
    .registers 5
    .param p1, "clazz"    # I
    .param p2, "subClass"    # I

    .line 302
    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    return v0

    .line 305
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    if-ne p2, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isDenyListed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    array-length v0, v0

    .line 291
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 292
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 293
    const/4 v2, 0x1

    return v2

    .line 291
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 296
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 20
    .param p1, "descriptorParser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 329
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 330
    .local v1, "vid":I
    const/4 v2, 0x0

    .line 331
    .local v2, "pid":I
    const-string v3, "<unknown>"

    .line 332
    .local v3, "mfg":Ljava/lang/String;
    const-string v4, "<unknown>"

    .line 333
    .local v4, "product":Ljava/lang/String;
    const-string v5, "<unknown>"

    .line 334
    .local v5, "version":Ljava/lang/String;
    const-string v6, "<unknown>"

    .line 336
    .local v6, "serial":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v7

    .line 337
    .local v7, "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    if-eqz v7, :cond_2a

    .line 338
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v1

    .line 339
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v2

    .line 340
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v6

    .line 346
    :cond_2a
    const/16 v8, 0x1d6b

    if-ne v1, v8, :cond_2f

    .line 347
    return-void

    .line 349
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v8

    .line 350
    .local v8, "hasAudio":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v9

    .line 351
    .local v9, "hasHid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v10

    .line 353
    .local v10, "hasStorage":Z
    const-string v11, "USB device attached: "

    .line 354
    .local v11, "attachedString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    const-string/jumbo v15, "vidpid %04x:%04x"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v16

    aput-object v4, v14, v17

    aput-object v5, v14, v13

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const-string v13, " mfg/product/ver/serial %s/%s/%s/%s"

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-array v13, v15, [Ljava/lang/Object;

    .line 358
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v16

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 357
    const-string v14, " hasAudio/HID/Storage: %b/%b/%b"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 359
    sget-object v12, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceAdded(Ljava/lang/String;II[B)Z
    .registers 32
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceClass"    # I
    .param p3, "deviceSubclass"    # I
    .param p4, "descriptors"    # [B

    .line 373
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 377
    return v4

    .line 381
    :cond_e
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v5, p4

    invoke-direct {v0, v2, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    move-object v6, v0

    .line 382
    .local v6, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    const/16 v0, 0x9

    if-eq v3, v0, :cond_23

    .line 383
    invoke-static {}, Lcom/android/server/usb/MiuiUsbServiceStub;->getInstance()Lcom/android/server/usb/MiuiUsbServiceStub;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v7, v6}, Lcom/android/server/usb/MiuiUsbServiceStub;->collectUsbHostConnectedInfo(Landroid/content/Context;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 386
    :cond_23
    move/from16 v7, p3

    invoke-direct {v1, v3, v7}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 390
    return v4

    .line 394
    :cond_2c
    if-nez v3, :cond_35

    .line 395
    invoke-direct {v1, v6}, Lcom/android/server/usb/UsbHostManager;->checkUsbInterfacesDenyListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 396
    return v4

    .line 400
    :cond_35
    invoke-direct {v1, v6}, Lcom/android/server/usb/UsbHostManager;->logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 402
    iget-object v8, v1, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 403
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 404
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device already on mDevices list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit v8

    return v4

    .line 410
    :cond_5d
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v0

    .line 411
    .local v0, "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    const/4 v9, 0x1

    if-nez v0, :cond_75

    .line 412
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v10, "Couldn\'t create UsbDevice object."

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v4, 0x2

    .line 415
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v10

    .line 414
    invoke-direct {v1, v2, v4, v10}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto/16 :goto_137

    .line 417
    :cond_75
    new-instance v10, Lcom/android/server/usb/UsbSerialReader;

    iget-object v11, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v13, v0, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 419
    .local v10, "serialNumberReader":Lcom/android/server/usb/UsbSerialReader;
    invoke-virtual {v0, v10}, Landroid/hardware/usb/UsbDevice$Builder;->build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;

    move-result-object v11

    .line 420
    .local v11, "newDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v10, v11}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 422
    iget-object v12, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v12, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added device "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v13

    .line 428
    .local v13, "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    if-nez v13, :cond_b2

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_b9

    .line 431
    :cond_b2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v14

    invoke-virtual {v14, v11, v13}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V

    .line 435
    :goto_b9
    iget-object v14, v1, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v14, v2, v11, v6}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 437
    iget-boolean v14, v1, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    if-eqz v14, :cond_10f

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->generateNewUsbDeviceIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, "uniqueUsbDeviceIdentifier":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v15, "midiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsUniversalMidiDeviceEndpoint()Z

    move-result v16

    if-eqz v16, :cond_101

    .line 446
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v11, v6, v9, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    move-result-object v4

    .line 448
    .local v4, "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    if-eqz v4, :cond_dd

    .line 449
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    .line 451
    :cond_dd
    const-string v9, "Universal Midi Device is null."

    invoke-static {v12, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_e2
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsLegacyMidiDeviceEndpoint()Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 459
    iget-object v9, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .local v17, "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    invoke-static {v9, v11, v6, v0, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    move-result-object v9

    move-object v0, v9

    .line 461
    .end local v4    # "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    .local v0, "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    if-eqz v0, :cond_f8

    .line 462
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 464
    :cond_f8
    const-string v4, "Legacy Midi Device is null."

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 458
    .end local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .local v0, "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v4    # "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    :cond_fe
    move-object/from16 v17, v0

    .end local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    goto :goto_103

    .line 445
    .end local v4    # "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    .end local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    :cond_101
    move-object/from16 v17, v0

    .line 469
    .end local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    :goto_103
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_111

    .line 470
    iget-object v0, v1, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    .line 437
    .end local v14    # "uniqueUsbDeviceIdentifier":Ljava/lang/String;
    .end local v15    # "midiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    .end local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    :cond_10f
    move-object/from16 v17, v0

    .line 475
    .end local v0    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .restart local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    :cond_111
    :goto_111
    nop

    .line 476
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v0

    .line 475
    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 479
    const/16 v18, 0x4d

    .line 480
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v19

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v20

    .line 481
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v21

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v22

    .line 482
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v23

    const/16 v24, 0x1

    const-wide/16 v25, 0x0

    .line 479
    invoke-static/range {v18 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    .line 485
    .end local v10    # "serialNumberReader":Lcom/android/server/usb/UsbSerialReader;
    .end local v11    # "newDevice":Landroid/hardware/usb/UsbDevice;
    .end local v13    # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    .end local v17    # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    :goto_137
    monitor-exit v8

    .line 491
    const/4 v0, 0x1

    return v0

    .line 485
    :catchall_13a
    move-exception v0

    monitor-exit v8
    :try_end_13c
    .catchall {:try_start_3b .. :try_end_13c} :catchall_13a

    throw v0
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 19
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 501
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 502
    :try_start_7
    iget-object v0, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 503
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_bd

    .line 504
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed device at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v4, v2}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    .line 506
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v4, v0}, Lcom/android/server/usb/UsbPermissionManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 509
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 510
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 511
    .local v4, "midiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    if-eqz v4, :cond_79

    .line 512
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 513
    .local v6, "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    if-eqz v6, :cond_60

    .line 514
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 516
    .end local v6    # "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    :cond_60
    goto :goto_4f

    .line 517
    :cond_61
    sget-object v5, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB MIDI Devices Removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_79
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 521
    iget-object v5, v1, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 523
    .local v5, "current":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v1, v2, v6, v7}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 525
    if-eqz v5, :cond_bc

    .line 526
    new-instance v6, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v7, v5, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v6, v2, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 529
    .local v6, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    nop

    .line 530
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v10

    .line 531
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v12

    const/4 v13, 0x0

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move/from16 v16, v8

    iget-wide v7, v5, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    sub-long/2addr v14, v7

    .line 529
    const/16 v7, 0x4d

    move/from16 v8, v16

    invoke-static/range {v7 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    .line 535
    .end local v4    # "midiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    .end local v5    # "current":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    .end local v6    # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    :cond_bc
    goto :goto_db

    .line 536
    :cond_bd
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed device at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already gone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :goto_db
    monitor-exit v3

    .line 539
    return-void

    .line 538
    :catchall_dd
    move-exception v0

    monitor-exit v3
    :try_end_df
    .catchall {:try_start_7 .. :try_end_df} :catchall_dd

    throw v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 584
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 586
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 587
    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v3, :cond_15

    .line 588
    const-string v4, "default_usb_host_connection_handler"

    const-wide v5, 0x10b00000001L

    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 592
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_a7

    .line 593
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 594
    :try_start_19
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 595
    .local v4, "name":Ljava/lang/String;
    const-string v5, "devices"

    const-wide v6, 0x20b00000002L

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    .line 596
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_23

    .line 598
    :cond_42
    const-string/jumbo v2, "num_connects"

    const-wide v4, 0x10500000003L

    iget v6, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    invoke-virtual {p1, v2, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 600
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 601
    .local v4, "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    const-string v5, "connections"

    const-wide v6, 0x20b00000004L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 602
    .end local v4    # "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    goto :goto_55

    .line 604
    :cond_6c
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 605
    .local v4, "directMidiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_86
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 606
    .local v6, "directMidiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    const-string/jumbo v7, "midi_devices"

    const-wide v8, 0x20b00000005L

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/server/usb/UsbDirectMidiDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 607
    .end local v6    # "directMidiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    goto :goto_86

    .line 608
    .end local v4    # "directMidiDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbDirectMidiDevice;>;"
    :cond_9e
    goto :goto_76

    .line 609
    :cond_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_19 .. :try_end_a0} :catchall_a4

    .line 611
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 612
    return-void

    .line 609
    :catchall_a4
    move-exception v2

    :try_start_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v2

    .line 592
    :catchall_a7
    move-exception v3

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v3
.end method

.method public dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    if-eqz v0, :cond_4e

    .line 619
    const-string v0, "Last Connected USB Device:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 620
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    aget-object v0, p2, v1

    const-string v2, "-dump-short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_48

    .line 622
    :cond_18
    aget-object v0, p2, v1

    const-string v2, "-dump-tree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 623
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 624
    :cond_28
    aget-object v0, p2, v1

    const-string v2, "-dump-list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 625
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 626
    :cond_38
    aget-object v0, p2, v1

    const-string v1, "-dump-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 627
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 621
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 630
    :cond_4e
    const-string v0, "No USB Devices have been connected."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 632
    :cond_53
    :goto_53
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "devices"    # Landroid/os/Bundle;

    .line 552
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 554
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_d

    .line 556
    :cond_25
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/android/server/usb/UsbUserPermissionManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 568
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 569
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :cond_1c

    .line 575
    invoke-virtual {p2, v1, p3, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 571
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbHostManager;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    .end local p2    # "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    throw v2

    .line 566
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p0    # "this":Lcom/android/server/usb/UsbHostManager;
    .restart local p1    # "deviceAddress":Ljava/lang/String;
    .restart local p2    # "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "pid":I
    .restart local p5    # "uid":I
    :cond_3b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "USB device is on a restricted bus"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbHostManager;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    .end local p2    # "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "pid":I
    .end local p5    # "uid":I
    throw v1

    .line 577
    .restart local p0    # "this":Lcom/android/server/usb/UsbHostManager;
    .restart local p1    # "deviceAddress":Ljava/lang/String;
    .restart local p2    # "permissions":Lcom/android/server/usb/UsbUserPermissionManager;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "pid":I
    .restart local p5    # "uid":I
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 4
    .param p1, "settings"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 266
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 278
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public systemReady()V
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    new-instance v1, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 546
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 547
    .end local v1    # "runnable":Ljava/lang/Runnable;
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
