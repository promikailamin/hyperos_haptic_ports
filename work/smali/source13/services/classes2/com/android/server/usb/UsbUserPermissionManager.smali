.class Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SNET_EVENT_LOG_ID:I = 0x534e4554

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsCopyPermissionsScheduled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionsFile:Landroid/util/AtomicFile;

.field private final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field private final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usbUserSettingsManager"    # Lcom/android/server/usb/UsbUserSettingsManager;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 121
    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 122
    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 126
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    .line 127
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "usb_permissions.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "usb-permissions"

    invoke-direct {v2, v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 129
    monitor-enter v0

    .line 130
    :try_start_62
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;II)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 650
    const/16 v0, 0x1c

    .line 652
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 654
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p3, :cond_34

    .line 655
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v1

    .line 658
    :cond_34
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_36} :catch_51

    move v0, v3

    .line 662
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 664
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_4f

    .line 665
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 666
    .local v2, "allowed":I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_4f

    .line 667
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v1

    .line 672
    .end local v2    # "allowed":I
    :cond_4f
    const/4 v1, 0x1

    return v1

    .line 659
    :catch_51
    move-exception v2

    .line 660
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v1
.end method

.method private readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_ab

    .line 338
    .local v0, "uid":I
    nop

    .line 341
    const/4 v1, 0x0

    const-string v2, "granted"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "isGrantedString":Ljava/lang/String;
    if-eqz v1, :cond_a0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_a0

    .line 348
    :cond_2b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 349
    .local v2, "isGranted":Z
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 351
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 352
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 353
    .local v4, "idx":I
    if-ltz v4, :cond_5d

    .line 354
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 356
    .local v5, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 357
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    goto :goto_9e

    .line 358
    :cond_5d
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 359
    .restart local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9e

    .line 362
    .end local v3    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    :cond_6b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-accessory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 363
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 364
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 365
    .restart local v4    # "idx":I
    if-ltz v4, :cond_90

    .line 366
    iget-object v5, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 367
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 368
    .local v5, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 369
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    goto :goto_9f

    .line 370
    :cond_90
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 371
    .restart local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9f

    .line 362
    .end local v3    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v4    # "idx":I
    .end local v5    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    :cond_9e
    :goto_9e
    nop

    .line 375
    :goto_9f
    return-void

    .line 344
    .end local v2    # "isGranted":Z
    :cond_a0
    :goto_a0
    sget-object v2, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading usb permission granted state"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 346
    return-void

    .line 334
    .end local v0    # "uid":I
    .end local v1    # "isGrantedString":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permission uid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 337
    return-void
.end method

.method private readPermissionsLocked()V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 380
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 382
    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_53
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_45

    .line 383
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 385
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 386
    :goto_17
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    .line 387
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 389
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_32

    .line 391
    :cond_2f
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_39

    .line 393
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_32
    goto :goto_17

    .line 394
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :cond_33
    if-eqz v0, :cond_54

    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_38} :catch_53
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_45

    goto :goto_54

    .line 382
    :catchall_39
    move-exception v1

    if-eqz v0, :cond_44

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :cond_44
    :goto_44
    throw v1
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_45} :catch_53
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    .line 396
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/usb/UsbUserPermissionManager;
    :catch_45
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_55

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_53
    move-exception v0

    .line 399
    :cond_54
    :goto_54
    nop

    .line 400
    :goto_55
    return-void
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 19
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "pi"    # Landroid/app/PendingIntent;
    .param p6, "uid"    # I

    .line 695
    move-object v9, p0

    move-object/from16 v10, p4

    move/from16 v11, p6

    const-string v1, " not found"

    const-string/jumbo v2, "package "

    const/4 v3, 0x0

    .line 699
    .local v3, "throwException":Z
    :try_start_b
    iget-object v0, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v10, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 700
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v11, :cond_55

    .line 701
    sget-object v5, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const v5, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "180104273"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, ""

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_54} :catch_92
    .catchall {:try_start_b .. :try_end_54} :catchall_73

    .line 704
    const/4 v3, 0x1

    .line 709
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_55
    if-nez v3, :cond_58

    goto :goto_96

    .line 710
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :catchall_73
    move-exception v0

    if-eqz v3, :cond_91

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_91
    throw v0

    .line 706
    :catch_92
    move-exception v0

    .line 707
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x1

    .line 709
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-nez v3, :cond_a7

    :goto_96
    move v0, v3

    .line 713
    .end local v3    # "throwException":Z
    .local v0, "throwException":Z
    iget-object v7, v9, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    .line 714
    return-void

    .line 710
    .end local v0    # "throwException":Z
    .restart local v3    # "throwException":Z
    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleWritePermissionsLocked()V
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_5

    .line 405
    return-void

    .line 407
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 409
    new-instance v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 683
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    return-void

    .line 684
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 676
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 680
    return-void

    .line 677
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission to access device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 678
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 27
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 557
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 558
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 559
    :try_start_b
    const-string/jumbo v0, "user_id"

    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v2, v0, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 560
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 561
    .local v0, "numMappings":I
    const/4 v6, 0x0

    .local v6, "mappingsIdx":I
    :goto_23
    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    if-ge v6, v0, :cond_74

    .line 562
    iget-object v15, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 563
    .local v15, "deviceName":Ljava/lang/String;
    const-string v7, "device_permissions"

    invoke-virtual {v2, v7, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 566
    .local v7, "devicePermissionToken":J
    const-string v13, "device_name"

    invoke-virtual {v2, v13, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 568
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 569
    .local v11, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 570
    .local v12, "numUids":I
    const/4 v13, 0x0

    .local v13, "uidsIdx":I
    :goto_4f
    if-ge v13, v12, :cond_67

    .line 571
    const-string/jumbo v14, "uids"

    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    move-object/from16 v16, v11

    const-wide v10, 0x20500000002L

    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .local v16, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v14, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 570
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    goto :goto_4f

    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    .restart local v11    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_67
    move-object/from16 v16, v11

    .line 574
    .end local v11    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v13    # "uidsIdx":I
    .restart local v16    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 561
    .end local v7    # "devicePermissionToken":J
    .end local v12    # "numUids":I
    .end local v15    # "deviceName":Ljava/lang/String;
    .end local v16    # "uidList":Landroid/util/SparseBooleanArray;
    add-int/lit8 v6, v6, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_23

    .line 577
    .end local v6    # "mappingsIdx":I
    :cond_74
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v0, v6

    .line 578
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_7c
    if-ge v6, v0, :cond_de

    .line 579
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    .line 580
    .local v7, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v8, "accessory_permissions"

    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 583
    .local v8, "accessoryPermissionToken":J
    const-string v10, "accessory_description"

    .line 585
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v15

    .line 583
    invoke-virtual {v2, v10, v11, v12, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 587
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseBooleanArray;

    .line 588
    .local v10, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 589
    .local v15, "numUids":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "uidsIdx":I
    :goto_aa
    if-ge v11, v15, :cond_c7

    .line 590
    const-string/jumbo v12, "uids"

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .end local v15    # "numUids":I
    .local v16, "numUids":I
    invoke-virtual {v2, v12, v14, v15, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 589
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v16

    const-wide v13, 0x20b00000002L

    goto :goto_aa

    .end local v16    # "numUids":I
    .restart local v15    # "numUids":I
    :cond_c7
    move/from16 v16, v15

    const-wide v14, 0x20500000002L

    .line 593
    .end local v11    # "uidsIdx":I
    .end local v15    # "numUids":I
    .restart local v16    # "numUids":I
    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 578
    .end local v7    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v8    # "accessoryPermissionToken":J
    .end local v10    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v16    # "numUids":I
    add-int/lit8 v6, v6, 0x1

    const-wide v11, 0x10900000001L

    const-wide v13, 0x20b00000002L

    goto :goto_7c

    .line 596
    .end local v6    # "mappingsIdx":I
    :cond_de
    iget-object v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6
    :try_end_e4
    .catchall {:try_start_b .. :try_end_e4} :catchall_1f5

    move v0, v6

    .line 597
    const/4 v6, 0x0

    .restart local v6    # "mappingsIdx":I
    :goto_e6
    const-wide v9, 0x10b00000001L

    if-ge v6, v0, :cond_16a

    .line 598
    :try_start_ed
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    .line 599
    .local v11, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 601
    .local v12, "devicePermissionToken":J
    const-string v14, "device"

    invoke-virtual {v11, v2, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 603
    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 604
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 605
    .local v9, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 606
    .local v10, "numPermissions":I
    const/4 v14, 0x0

    .local v14, "permissionsIdx":I
    :goto_112
    if-ge v14, v10, :cond_155

    .line 607
    const-string/jumbo v15, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v15, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 609
    .local v7, "uidPermissionToken":J
    const-string/jumbo v15, "uid"

    move/from16 v16, v0

    .end local v0    # "numMappings":I
    .local v16, "numMappings":I
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    move/from16 v18, v10

    move-object/from16 v17, v11

    const-wide v10, 0x10500000001L

    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .local v17, "filter":Landroid/hardware/usb/DeviceFilter;
    .local v18, "numPermissions":I
    invoke-virtual {v2, v15, v10, v11, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 610
    const-string v0, "is_granted"

    .line 611
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10
    :try_end_13d
    .catchall {:try_start_ed .. :try_end_13d} :catchall_167

    .line 610
    move-wide/from16 v20, v3

    const-wide v3, 0x10800000002L

    .end local v3    # "token":J
    .local v20, "token":J
    :try_start_144
    invoke-virtual {v2, v0, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 612
    invoke-virtual {v2, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 606
    .end local v7    # "uidPermissionToken":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v11, v17

    move/from16 v10, v18

    move-wide/from16 v3, v20

    goto :goto_112

    .end local v16    # "numMappings":I
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v10    # "numPermissions":I
    .restart local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_155
    move/from16 v16, v0

    move-wide/from16 v20, v3

    move/from16 v18, v10

    move-object/from16 v17, v11

    .line 614
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v10    # "numPermissions":I
    .end local v11    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v14    # "permissionsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .restart local v18    # "numPermissions":I
    .restart local v20    # "token":J
    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_160
    .catchall {:try_start_144 .. :try_end_160} :catchall_1e6

    .line 597
    .end local v9    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "devicePermissionToken":J
    .end local v17    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v18    # "numPermissions":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    move-wide/from16 v3, v20

    goto :goto_e6

    .line 637
    .end local v6    # "mappingsIdx":I
    .end local v16    # "numMappings":I
    .end local v20    # "token":J
    .restart local v3    # "token":J
    :catchall_167
    move-exception v0

    .end local v3    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_1f6

    .line 597
    .end local v20    # "token":J
    .restart local v0    # "numMappings":I
    .restart local v3    # "token":J
    .restart local v6    # "mappingsIdx":I
    :cond_16a
    move/from16 v16, v0

    move-wide/from16 v20, v3

    .line 617
    .end local v0    # "numMappings":I
    .end local v3    # "token":J
    .end local v6    # "mappingsIdx":I
    .restart local v16    # "numMappings":I
    .restart local v20    # "token":J
    :try_start_16e
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_174
    .catchall {:try_start_16e .. :try_end_174} :catchall_1f1

    .line 618
    .end local v16    # "numMappings":I
    .restart local v0    # "numMappings":I
    const/4 v3, 0x0

    .local v3, "mappingsIdx":I
    :goto_175
    if-ge v3, v0, :cond_1ea

    .line 619
    :try_start_177
    iget-object v4, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    .line 620
    .local v4, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string v6, "accessory_persistent_permissions"

    const-wide v7, 0x20b00000005L

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 622
    .local v6, "accessoryPermissionToken":J
    const-string v8, "accessory"

    invoke-virtual {v4, v2, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 624
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 625
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 626
    .local v8, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 627
    .local v11, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "permissionsIdx":I
    :goto_19c
    if-ge v12, v11, :cond_1d6

    .line 628
    const-string/jumbo v13, "uid_permission"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v2, v13, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 630
    .local v18, "uidPermissionToken":J
    const-string/jumbo v13, "uid"

    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    const-wide v14, 0x10500000001L

    invoke-virtual {v2, v13, v14, v15, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 631
    const-string v9, "is_granted"

    .line 632
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    .line 631
    const-wide v14, 0x10800000002L

    invoke-virtual {v2, v9, v14, v15, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 633
    move-wide/from16 v9, v18

    .end local v18    # "uidPermissionToken":J
    .local v9, "uidPermissionToken":J
    invoke-virtual {v2, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 627
    .end local v9    # "uidPermissionToken":J
    add-int/lit8 v12, v12, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_19c

    :cond_1d6
    const-wide v14, 0x10800000002L

    .line 635
    .end local v12    # "permissionsIdx":I
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_1de
    .catchall {:try_start_177 .. :try_end_1de} :catchall_1e6

    .line 618
    .end local v4    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v6    # "accessoryPermissionToken":J
    .end local v8    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v11    # "numPermissions":I
    add-int/lit8 v3, v3, 0x1

    const-wide v9, 0x10b00000001L

    goto :goto_175

    .line 637
    .end local v0    # "numMappings":I
    .end local v3    # "mappingsIdx":I
    :catchall_1e6
    move-exception v0

    move-wide/from16 v3, v20

    goto :goto_1f6

    :cond_1ea
    :try_start_1ea
    monitor-exit v5
    :try_end_1eb
    .catchall {:try_start_1ea .. :try_end_1eb} :catchall_1f1

    .line 638
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 639
    return-void

    .line 637
    .end local v3    # "token":J
    .restart local v20    # "token":J
    :catchall_1f1
    move-exception v0

    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .restart local v3    # "token":J
    goto :goto_1f6

    :catchall_1f5
    move-exception v0

    :goto_1f6
    :try_start_1f6
    monitor-exit v5
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    throw v0
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 183
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 184
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    .line 185
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_19
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 188
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 166
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    if-nez v2, :cond_1d

    .line 167
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    .line 168
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1d
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 250
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_44

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    .line 253
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_44

    .line 258
    :cond_16
    new-instance v1, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v1, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 259
    .local v1, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 260
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 261
    .local v2, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_31

    .line 262
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 263
    .local v3, "idx":I
    if-ltz v3, :cond_31

    .line 264
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 267
    .end local v3    # "idx":I
    :cond_31
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 268
    .local v3, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v3, :cond_3e

    .line 269
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 271
    :cond_3e
    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    monitor-exit v0

    return v4

    .line 256
    .end local v1    # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v2    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v3    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_44
    :goto_44
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 272
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 201
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 203
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x2

    .line 202
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    .line 207
    .local v0, "isCameraPrivacyEnabled":Z
    if-nez v0, :cond_1a

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 208
    :cond_1a
    return v1

    .line 213
    .end local v0    # "isCameraPrivacyEnabled":Z
    :cond_1b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 214
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 213
    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 220
    return v1

    .line 222
    :cond_2f
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    const/16 v3, 0x3e8

    if-eq p4, v3, :cond_6c

    :try_start_36
    iget-boolean v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v3, :cond_3b

    goto :goto_6c

    .line 226
    :cond_3b
    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 227
    .local v2, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 228
    .local v3, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-eqz v3, :cond_56

    .line 229
    invoke-virtual {v3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 230
    .local v4, "idx":I
    if-ltz v4, :cond_56

    .line 231
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 234
    .end local v4    # "idx":I
    :cond_56
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 235
    .local v4, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v4, :cond_66

    .line 236
    monitor-exit v0

    return v1

    .line 238
    :cond_66
    invoke-virtual {v4, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 224
    .end local v2    # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v3    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_6c
    :goto_6c
    monitor-exit v0

    return v2

    .line 239
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method synthetic lambda$scheduleWritePermissionsLocked$0$com-android-server-usb-UsbUserPermissionManager()V
    .registers 19

    .line 420
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, v0

    .line 423
    .local v3, "numDevices":I
    new-array v0, v3, [Landroid/hardware/usb/DeviceFilter;

    move-object v4, v0

    .line 424
    .local v4, "devices":[Landroid/hardware/usb/DeviceFilter;
    new-array v0, v3, [[I

    move-object v5, v0

    .line 425
    .local v5, "uidsForDevices":[[I
    new-array v0, v3, [[Z

    move-object v6, v0

    .line 426
    .local v6, "grantedValuesForDevices":[[Z
    const/4 v0, 0x0

    .local v0, "deviceIdx":I
    :goto_16
    if-ge v0, v3, :cond_54

    .line 427
    new-instance v7, Landroid/hardware/usb/DeviceFilter;

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v7, v8}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v7, v4, v0

    .line 429
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 430
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 431
    .local v7, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    .line 432
    .local v8, "numPermissions":I
    new-array v9, v8, [I

    aput-object v9, v5, v0

    .line 433
    new-array v9, v8, [Z

    aput-object v9, v6, v0

    .line 434
    const/4 v9, 0x0

    .local v9, "permissionIdx":I
    :goto_3c
    if-ge v9, v8, :cond_51

    .line 435
    aget-object v10, v5, v0

    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    aput v11, v10, v9

    .line 436
    aget-object v10, v6, v0

    .line 437
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    aput-boolean v11, v10, v9

    .line 434
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 426
    .end local v7    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v8    # "numPermissions":I
    .end local v9    # "permissionIdx":I
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 441
    .end local v0    # "deviceIdx":I
    :cond_54
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v7, v0

    .line 442
    .local v7, "numAccessories":I
    new-array v0, v7, [Landroid/hardware/usb/AccessoryFilter;

    move-object v8, v0

    .line 443
    .local v8, "accessories":[Landroid/hardware/usb/AccessoryFilter;
    new-array v0, v7, [[I

    move-object v9, v0

    .line 444
    .local v9, "uidsForAccessories":[[I
    new-array v0, v7, [[Z

    move-object v10, v0

    .line 445
    .local v10, "grantedValuesForAccessories":[[Z
    const/4 v0, 0x0

    .local v0, "accessoryIdx":I
    :goto_65
    if-ge v0, v7, :cond_a3

    .line 446
    new-instance v11, Landroid/hardware/usb/AccessoryFilter;

    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 447
    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v11, v12}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v11, v8, v0

    .line 448
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 449
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseBooleanArray;

    .line 450
    .local v11, "permissions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 451
    .local v12, "numPermissions":I
    new-array v13, v12, [I

    aput-object v13, v9, v0

    .line 452
    new-array v13, v12, [Z

    aput-object v13, v10, v0

    .line 453
    const/4 v13, 0x0

    .local v13, "permissionIdx":I
    :goto_8b
    if-ge v13, v12, :cond_a0

    .line 454
    aget-object v14, v9, v0

    .line 455
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v13

    .line 456
    aget-object v14, v10, v0

    .line 457
    invoke-virtual {v11, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    aput-boolean v15, v14, v13

    .line 453
    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    .line 445
    .end local v11    # "permissions":Landroid/util/SparseBooleanArray;
    .end local v12    # "numPermissions":I
    .end local v13    # "permissionIdx":I
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 460
    .end local v0    # "accessoryIdx":I
    :cond_a3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 461
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_5 .. :try_end_a7} :catchall_18e

    .line 463
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v11

    .line 464
    const/4 v2, 0x0

    .line 466
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_ab
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v2, v0

    .line 467
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 468
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v0, v13, v12}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 469
    const-string/jumbo v12, "permissions"

    invoke-interface {v0, v13, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c6
    if-ge v12, v3, :cond_11b

    .line 472
    aget-object v14, v5, v12

    array-length v14, v14

    .line 473
    .local v14, "numPermissions":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_cc
    if-ge v15, v14, :cond_113

    .line 474
    const-string/jumbo v13, "permission"
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_d1} :catch_176
    .catchall {:try_start_ab .. :try_end_d1} :catchall_170

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "numDevices":I
    .local v16, "numDevices":I
    :try_start_d4
    invoke-interface {v0, v3, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string/jumbo v3, "uid"

    aget-object v13, v5, v12

    aget v13, v13, v15

    .line 476
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e2} :catch_10f
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_10a

    .line 475
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "uidsForDevices":[[I
    .local v17, "uidsForDevices":[[I
    :try_start_e5
    invoke-interface {v0, v5, v3, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v3, "granted"

    aget-object v5, v6, v12

    aget-boolean v5, v5, v15

    .line 478
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 477
    const/4 v13, 0x0

    invoke-interface {v0, v13, v3, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    aget-object v3, v4, v12

    invoke-virtual {v3, v0}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 480
    const-string/jumbo v3, "permission"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_cc

    .line 507
    .end local v0    # "serializer":Landroid/util/TypedXmlSerializer;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v5    # "uidsForDevices":[[I
    :catchall_10a
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto/16 :goto_18c

    .line 501
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "uidsForDevices":[[I
    :catch_10f
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "uidsForDevices":[[I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_17b

    .line 473
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v0    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    .restart local v12    # "i":I
    .restart local v14    # "numPermissions":I
    .restart local v15    # "j":I
    :cond_113
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 471
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v14    # "numPermissions":I
    .end local v15    # "j":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_c6

    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :cond_11b
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 484
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .end local v12    # "i":I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_120
    if-ge v3, v7, :cond_15e

    .line 485
    aget-object v5, v9, v3

    array-length v5, v5

    .line 486
    .local v5, "numPermissions":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_126
    if-ge v12, v5, :cond_15b

    .line 487
    const-string/jumbo v13, "permission"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const-string/jumbo v13, "uid"

    aget-object v14, v9, v3

    aget v14, v14, v12

    .line 489
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 488
    const/4 v15, 0x0

    invoke-interface {v0, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v13, "granted"

    aget-object v14, v6, v3

    aget-boolean v14, v14, v12

    .line 491
    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    .line 490
    const/4 v15, 0x0

    invoke-interface {v0, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    aget-object v13, v8, v3

    invoke-virtual {v13, v0}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 493
    const-string/jumbo v13, "permission"

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    add-int/lit8 v12, v12, 0x1

    goto :goto_126

    .line 484
    .end local v5    # "numPermissions":I
    .end local v12    # "j":I
    :cond_15b
    add-int/lit8 v3, v3, 0x1

    goto :goto_120

    .line 497
    .end local v3    # "i":I
    :cond_15e
    const-string/jumbo v3, "permissions"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 500
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_16d} :catch_16e
    .catchall {:try_start_e5 .. :try_end_16d} :catchall_18b

    .line 506
    .end local v0    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_189

    .line 501
    :catch_16e
    move-exception v0

    goto :goto_17b

    .line 507
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .local v3, "numDevices":I
    .local v5, "uidsForDevices":[[I
    :catchall_170
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    goto :goto_18c

    .line 501
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "numDevices":I
    .restart local v5    # "uidsForDevices":[[I
    :catch_176
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 502
    .end local v3    # "numDevices":I
    .end local v5    # "uidsForDevices":[[I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "numDevices":I
    .restart local v17    # "uidsForDevices":[[I
    :goto_17b
    :try_start_17b
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to write permissions"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    if-eqz v2, :cond_189

    .line 504
    iget-object v3, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_189
    :goto_189
    monitor-exit v11

    .line 508
    return-void

    .line 507
    :catchall_18b
    move-exception v0

    :goto_18c
    monitor-exit v11
    :try_end_18d
    .catchall {:try_start_17b .. :try_end_18d} :catchall_18b

    throw v0

    .line 461
    .end local v4    # "devices":[Landroid/hardware/usb/DeviceFilter;
    .end local v6    # "grantedValuesForDevices":[[Z
    .end local v7    # "numAccessories":I
    .end local v8    # "accessories":[Landroid/hardware/usb/AccessoryFilter;
    .end local v9    # "uidsForAccessories":[[I
    .end local v10    # "grantedValuesForAccessories":[[Z
    .end local v16    # "numDevices":I
    .end local v17    # "uidsForDevices":[[I
    :catchall_18e
    move-exception v0

    :try_start_18f
    monitor-exit v2
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v0
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 151
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 15
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 754
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const/4 v1, 0x1

    const-string/jumbo v2, "permission"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    :try_start_17
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 762
    goto :goto_1f

    .line 760
    :catch_1e
    move-exception v1

    .line 763
    :goto_1f
    return-void

    .line 766
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_20
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 767
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v5

    .line 766
    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 768
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 15
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string/jumbo v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    .line 722
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    :try_start_18
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 728
    goto :goto_1f

    .line 726
    :catch_1e
    move-exception v1

    .line 729
    :goto_1f
    return-void

    .line 734
    :cond_20
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 735
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 736
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 737
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    :try_start_32
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_37
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_32 .. :try_end_37} :catch_38

    .line 742
    goto :goto_39

    .line 740
    :catch_38
    move-exception v1

    .line 743
    :goto_39
    return-void

    .line 747
    :cond_3a
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 748
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v5

    .line 747
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 749
    return-void
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 13
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "canBeDefault"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userContext"    # Landroid/content/Context;
    .param p7, "pi"    # Landroid/app/PendingIntent;

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 533
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_11

    .line 535
    const-string v3, "device"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_16

    .line 537
    :cond_11
    const-string v3, "accessory"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    :goto_16
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v3, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    const-string v3, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    nop

    .line 544
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10402cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 543
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 546
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_47} :catch_4a
    .catchall {:try_start_4 .. :try_end_47} :catchall_48

    .line 552
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_54

    :catchall_48
    move-exception v2

    goto :goto_59

    .line 549
    :catch_4a
    move-exception v2

    .line 550
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4b
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to start UsbPermissionActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_48

    .line 552
    nop

    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :goto_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw v2
.end method

.method setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 304
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 305
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_8
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 308
    .local v2, "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1d

    .line 309
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 310
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 313
    .local v3, "idx":I
    if-ltz v3, :cond_30

    .line 314
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 315
    .local v4, "isChanged":Z
    :goto_2c
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_34

    .line 317
    .end local v4    # "isChanged":Z
    :cond_30
    const/4 v4, 0x1

    .line 318
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 321
    :goto_34
    if-eqz v4, :cond_39

    .line 322
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 324
    .end local v2    # "permissionsForAccessory":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_39
    monitor-exit v1

    .line 325
    return-void

    .line 324
    .end local v4    # "isChanged":Z
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I
    .param p3, "isGranted"    # Z

    .line 278
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 279
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_8
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 281
    .local v2, "permissionsForDevice":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1d

    .line 282
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 283
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 286
    .local v3, "idx":I
    if-ltz v3, :cond_30

    .line 287
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eq v4, p3, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 288
    .local v4, "isChanged":Z
    :goto_2c
    invoke-virtual {v2, v3, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_34

    .line 290
    .end local v4    # "isChanged":Z
    :cond_30
    const/4 v4, 0x1

    .line 291
    .restart local v4    # "isChanged":Z
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 294
    :goto_34
    if-eqz v4, :cond_39

    .line 295
    invoke-direct {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 297
    .end local v2    # "permissionsForDevice":Landroid/util/SparseBooleanArray;
    .end local v3    # "idx":I
    :cond_39
    monitor-exit v1

    .line 298
    return-void

    .line 297
    .end local v4    # "isChanged":Z
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method
