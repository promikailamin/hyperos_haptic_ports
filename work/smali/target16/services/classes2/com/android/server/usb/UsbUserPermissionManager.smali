.class public Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "UsbUserPermissionManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbUserPermissionManager"


# instance fields
.field public final mAccessoryPermissionMap:Landroid/util/ArrayMap;

.field public final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePermissionMap:Landroid/util/ArrayMap;

.field public final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mDisablePermissionDialogs:Z

.field public mIsCopyPermissionsScheduled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionsFile:Landroid/util/AtomicFile;

.field public final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$4L3CwfCCGQzb_hYr5j-rO6zrDEM(Lcom/android/server/usb/UsbUserPermissionManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->lambda$scheduleWritePermissionsLocked$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .registers 6

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
    const-class p2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111014f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    .line 126
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    .line 127
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usb_permissions.xml"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "usb-permissions"

    invoke-direct {p1, p2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    .line 129
    monitor-enter v0

    .line 130
    :try_start_62
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    .line 131
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw p0
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    .registers 5

    .line 683
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 684
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User has not given "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " permission to accessory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 6

    .line 676
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 677
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User has not given "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " permission to access device "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 557
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 558
    iget-object v4, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 559
    :try_start_b
    const-string/jumbo v5, "user_id"

    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 560
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_23
    const-wide v10, 0x20500000002L

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-ge v9, v5, :cond_71

    .line 562
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 563
    const-string v7, "device_permissions"

    invoke-virtual {v1, v7, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 566
    const-string v14, "device_name"

    invoke-virtual {v1, v14, v12, v13, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 568
    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 569
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_54
    if-ge v13, v12, :cond_66

    .line 571
    const-string/jumbo v14, "uids"

    invoke-virtual {v6, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v1, v14, v10, v11, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_54

    :catchall_63
    move-exception v0

    goto/16 :goto_1c7

    .line 574
    :cond_66
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_23

    .line 577
    :cond_71
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_78
    if-ge v6, v5, :cond_c7

    .line 579
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    .line 580
    const-string v8, "accessory_permissions"

    const-wide v14, 0x20b00000003L

    invoke-virtual {v1, v8, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 583
    const-string v14, "accessory_description"

    .line 585
    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual {v1, v14, v12, v13, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 587
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 588
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_a3
    if-ge v15, v14, :cond_b7

    .line 590
    const-string/jumbo v12, "uids"

    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v12, v10, v11, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v15, v15, 0x1

    const-wide v12, 0x10900000001L

    goto :goto_a3

    .line 593
    :cond_b7
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto :goto_78

    .line 596
    :cond_c7
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_ce
    const-wide v9, 0x10b00000001L

    if-ge v6, v5, :cond_13f

    .line 598
    iget-object v11, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    .line 599
    const-string v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 601
    const-string v14, "device"

    invoke-virtual {v11, v1, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 603
    iget-object v9, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 604
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    .line 605
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_fa
    if-ge v11, v10, :cond_133

    .line 607
    const-string/jumbo v14, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    .line 609
    const-string/jumbo v7, "uid"

    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    move/from16 v16, v5

    move/from16 v17, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 610
    const-string v5, "is_granted"

    .line 611
    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    const-wide v7, 0x10800000002L

    .line 610
    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 612
    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_fa

    :cond_133
    move/from16 v16, v5

    move/from16 v17, v6

    .line 614
    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_ce

    .line 617
    :cond_13f
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_146
    if-ge v6, v5, :cond_1c2

    .line 619
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    .line 620
    const-string v8, "accessory_persistent_permissions"

    const-wide v11, 0x20b00000005L

    invoke-virtual {v1, v8, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 622
    const-string v8, "accessory"

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 624
    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 625
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 626
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_16d
    if-ge v13, v8, :cond_1ab

    .line 628
    const-string/jumbo v14, "uid_permission"

    const-wide v9, 0x20b00000002L

    invoke-virtual {v1, v14, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    .line 630
    const-string/jumbo v9, "uid"

    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    move/from16 v18, v5

    move/from16 v19, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v9, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 631
    const-string v9, "is_granted"

    .line 632
    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    const-wide v5, 0x10800000002L

    .line 631
    invoke-virtual {v1, v9, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 633
    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    const-wide v9, 0x10b00000001L

    goto :goto_16d

    :cond_1ab
    move/from16 v18, v5

    move/from16 v19, v6

    const-wide v5, 0x10800000002L

    .line 635
    invoke-virtual {v1, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v7, v19, 0x1

    move v6, v7

    move/from16 v5, v18

    const-wide v9, 0x10b00000001L

    goto :goto_146

    .line 637
    :cond_1c2
    monitor-exit v4
    :try_end_1c3
    .catchall {:try_start_b .. :try_end_1c3} :catchall_63

    .line 638
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    .line 637
    :goto_1c7
    :try_start_1c7
    monitor-exit v4
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_63

    throw v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 184
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 185
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_20

    .line 187
    :cond_1b
    :goto_1b
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 188
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_19

    throw p0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    .line 167
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 168
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_24

    .line 170
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 171
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1d

    throw p0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 7

    .line 250
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_46

    .line 251
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    .line 253
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_16

    goto :goto_46

    .line 258
    :cond_16
    new-instance p2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p2, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 260
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_33

    .line 262
    invoke-virtual {p2, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_33

    .line 264
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    goto :goto_49

    .line 267
    :cond_33
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_40

    const/4 p0, 0x0

    .line 269
    monitor-exit v0

    return p0

    .line 271
    :cond_40
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_46
    :goto_46
    const/4 p0, 0x1

    .line 256
    monitor-exit v0

    return p0

    .line 272
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_31

    throw p0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 9

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

    if-nez v0, :cond_1a

    .line 207
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1b

    :cond_1a
    return v1

    .line 213
    :cond_1b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 214
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 213
    invoke-virtual {p2, v0, p3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_2f

    return v1

    .line 222
    :cond_2f
    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_6e

    .line 223
    :try_start_36
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v0, :cond_3b

    goto :goto_6e

    .line 226
    :cond_3b
    new-instance p3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {p3, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_58

    .line 229
    invoke-virtual {p3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_58

    .line 231
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit p2

    return p0

    :catchall_56
    move-exception p0

    goto :goto_70

    .line 234
    :cond_58
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_68

    .line 236
    monitor-exit p2

    return v1

    .line 238
    :cond_68
    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit p2

    return p0

    .line 224
    :cond_6e
    :goto_6e
    monitor-exit p2

    return p3

    .line 239
    :goto_70
    monitor-exit p2
    :try_end_71
    .catchall {:try_start_36 .. :try_end_71} :catchall_56

    throw p0
.end method

.method public final isCameraPermissionGranted(Ljava/lang/String;II)Z
    .registers 7

    const/4 v0, 0x0

    .line 652
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 654
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p3, :cond_2e

    .line 655
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match caller\'s uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 658
    :cond_2e
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_30} :catch_49

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_47

    .line 665
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_47

    .line 667
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "Camera permission required for USB video class devices"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_47
    const/4 p0, 0x1

    return p0

    .line 660
    :catch_49
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string p1, "Package not found, likely due to invalid package name!"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final synthetic lambda$scheduleWritePermissionsLocked$0()V
    .registers 20

    move-object/from16 v1, p0

    .line 420
    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 423
    new-array v3, v0, [Landroid/hardware/usb/DeviceFilter;

    .line 424
    new-array v4, v0, [[I

    .line 425
    new-array v5, v0, [[Z

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v0, :cond_54

    .line 427
    new-instance v8, Landroid/hardware/usb/DeviceFilter;

    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v8, v9}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v8, v3, v7

    .line 429
    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 430
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 431
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    .line 432
    new-array v10, v9, [I

    aput-object v10, v4, v7

    .line 433
    new-array v10, v9, [Z

    aput-object v10, v5, v7

    move v10, v6

    :goto_39
    if-ge v10, v9, :cond_51

    .line 435
    aget-object v11, v4, v7

    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    aput v12, v11, v10

    .line 436
    aget-object v11, v5, v7

    .line 437
    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    aput-boolean v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    :catchall_4e
    move-exception v0

    goto/16 :goto_160

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 441
    :cond_54
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 442
    new-array v8, v7, [Landroid/hardware/usb/AccessoryFilter;

    .line 443
    new-array v9, v7, [[I

    .line 444
    new-array v10, v7, [[Z

    move v11, v6

    :goto_61
    if-ge v11, v7, :cond_9f

    .line 446
    new-instance v12, Landroid/hardware/usb/AccessoryFilter;

    iget-object v13, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 447
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v12, v13}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v12, v8, v11

    .line 448
    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 449
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 450
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    .line 451
    new-array v14, v13, [I

    aput-object v14, v9, v11

    .line 452
    new-array v14, v13, [Z

    aput-object v14, v10, v11

    move v14, v6

    :goto_87
    if-ge v14, v13, :cond_9c

    .line 454
    aget-object v15, v9, v11

    .line 455
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    aput v16, v15, v14

    .line 456
    aget-object v15, v10, v11

    .line 457
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    aput-boolean v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_87

    :cond_9c
    add-int/lit8 v11, v11, 0x1

    goto :goto_61

    .line 460
    :cond_9f
    iput-boolean v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 461
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_4e

    .line 463
    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v10

    const/4 v2, 0x0

    .line 466
    :try_start_a6
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ac} :catch_14d
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_f8

    .line 467
    :try_start_ac
    invoke-static {v11}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v12

    .line 468
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 469
    const-string/jumbo v13, "permissions"

    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v13, v6

    :goto_bc
    if-ge v13, v0, :cond_103

    .line 472
    aget-object v14, v4, v13

    array-length v14, v14

    move v15, v6

    :goto_c2
    if-ge v15, v14, :cond_fd

    .line 474
    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    const-string/jumbo v6, "uid"

    aget-object v17, v4, v13

    aget v17, v17, v15

    move/from16 v18, v0

    .line 476
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-interface {v12, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string v0, "granted"

    aget-object v6, v5, v13

    aget-boolean v6, v6, v15

    .line 478
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-interface {v12, v2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 479
    aget-object v0, v3, v13

    invoke-virtual {v0, v12}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 480
    const-string/jumbo v0, "permission"

    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    const/4 v6, 0x0

    goto :goto_c2

    :catchall_f8
    move-exception v0

    goto :goto_15e

    :catch_fa
    move-exception v0

    move-object v2, v11

    goto :goto_14e

    :cond_fd
    move/from16 v18, v0

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_bc

    :cond_103
    const/4 v0, 0x0

    :goto_104
    if-ge v0, v7, :cond_13e

    .line 485
    aget-object v3, v9, v0

    array-length v3, v3

    const/4 v4, 0x0

    :goto_10a
    if-ge v4, v3, :cond_13b

    .line 487
    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    const-string/jumbo v6, "uid"

    aget-object v13, v9, v0

    aget v13, v13, v4

    .line 489
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 488
    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v6, "granted"

    aget-object v13, v5, v0

    aget-boolean v13, v13, v4

    .line 491
    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    .line 490
    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    aget-object v6, v8, v0

    invoke-virtual {v6, v12}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 493
    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_10a

    :cond_13b
    add-int/lit8 v0, v0, 0x1

    goto :goto_104

    .line 497
    :cond_13e
    const-string/jumbo v0, "permissions"

    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 500
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_14c} :catch_fa
    .catchall {:try_start_ac .. :try_end_14c} :catchall_f8

    goto :goto_15c

    :catch_14d
    move-exception v0

    .line 502
    :goto_14e
    :try_start_14e
    sget-object v3, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write permissions"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_15c

    .line 504
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 507
    :cond_15c
    :goto_15c
    monitor-exit v10

    return-void

    :goto_15e
    monitor-exit v10
    :try_end_15f
    .catchall {:try_start_14e .. :try_end_15f} :catchall_f8

    throw v0

    .line 461
    :goto_160
    :try_start_160
    monitor-exit v2
    :try_end_161
    .catchall {:try_start_160 .. :try_end_161} :catchall_4e

    throw v0
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 333
    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_a5

    const/4 v1, 0x0

    .line 341
    const-string v2, "granted"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 342
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 343
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_9a

    .line 348
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 349
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    const-string/jumbo v2, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 351
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object p1

    .line 352
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_59

    .line 354
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 356
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 358
    :cond_59
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 359
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 362
    :cond_67
    const-string/jumbo v2, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 363
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object p1

    .line 364
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_8c

    .line 366
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 367
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    .line 368
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    .line 370
    :cond_8c
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 371
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_99
    return-void

    .line 344
    :cond_9a
    :goto_9a
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v0, "error reading usb permission granted state"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :catch_a5
    move-exception p0

    .line 335
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v1, "error reading usb permission uid"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readPermissionsLocked()V
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
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_54
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_3b

    .line 383
    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 385
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 386
    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_35

    .line 387
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 388
    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 389
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :catchall_2f
    move-exception v1

    goto :goto_3d

    .line 391
    :cond_31
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_2f

    goto :goto_17

    :cond_35
    if-eqz v0, :cond_54

    .line 394
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3a} :catch_54
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    goto :goto_48

    :goto_3d
    if-eqz v0, :cond_47

    .line 382
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_54
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_3b

    .line 397
    :goto_48
    sget-object v1, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    :catch_54
    :cond_54
    return-void
.end method

.method public removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 13

    .line 754
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p4

    if-eqz p4, :cond_1e

    .line 755
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 756
    const-string p4, "accessory"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const-string/jumbo p1, "permission"

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    :try_start_17
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void

    .line 766
    :cond_1e
    iget-object p4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 767
    invoke-virtual {p4, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v3

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    .line 766
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 13

    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string/jumbo v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    .line 722
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 723
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    :try_start_18
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1d} :catch_35

    return-void

    .line 734
    :cond_1e
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 735
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result p4

    if-nez p4, :cond_36

    .line 736
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 737
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    :try_start_30
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_35
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_30 .. :try_end_35} :catch_35

    :catch_35
    return-void

    .line 747
    :cond_36
    iget-object p4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    .line 748
    invoke-virtual {p4, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    .line 747
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 11

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 533
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_13

    .line 535
    const-string p2, "device"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_18

    :catchall_11
    move-exception p0

    goto :goto_58

    .line 537
    :cond_13
    const-string p1, "accessory"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    :goto_18
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v2, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const-string p1, "android.intent.extra.UID"

    invoke-virtual {v2, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string p1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    const-string p1, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040311

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 543
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 546
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_48} :catch_4c
    .catchall {:try_start_4 .. :try_end_48} :catchall_11

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 550
    :catch_4c
    :try_start_4c
    sget-object p0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unable to start UsbPermissionActivity"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_11

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw p0
.end method

.method public final requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 15

    .line 695
    const-string v1, " not found"

    const-string/jumbo v2, "package "

    .line 699
    :try_start_5
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, p4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 700
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_12} :catch_6a
    .catchall {:try_start_5 .. :try_end_12} :catchall_68

    if-ne v3, p6, :cond_21

    .line 713
    iget-object v6, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p5

    move v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    return-void

    .line 701
    :cond_21
    :try_start_21
    sget-object v0, Lcom/android/server/usb/UsbUserPermissionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not match caller\'s uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v0, "180104273"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, ""

    filled-new-array {v0, v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x534e4554

    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_50} :catch_6a
    .catchall {:try_start_21 .. :try_end_50} :catchall_68

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_68
    move-exception v0

    .line 711
    throw v0

    .line 710
    :catch_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scheduleWritePermissionsLocked()V
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    .line 409
    new-instance v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .registers 7

    .line 304
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 305
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 306
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1f

    .line 309
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_3c

    .line 312
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_32

    .line 314
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 315
    :goto_2e
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_35

    .line 318
    :cond_32
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_35
    if-eqz v2, :cond_3a

    .line 322
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 324
    :cond_3a
    monitor-exit p1

    return-void

    :goto_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_1d

    throw p0
.end method

.method public setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .registers 7

    .line 278
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 279
    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 280
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1f

    .line 282
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_3c

    .line 285
    :cond_1f
    :goto_1f
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_32

    .line 287
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 288
    :goto_2e
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_35

    .line 291
    :cond_32
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_35
    if-eqz v2, :cond_3a

    .line 295
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->scheduleWritePermissionsLocked()V

    .line 297
    :cond_3a
    monitor-exit p1

    return-void

    :goto_3c
    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_1d

    throw p0
.end method
