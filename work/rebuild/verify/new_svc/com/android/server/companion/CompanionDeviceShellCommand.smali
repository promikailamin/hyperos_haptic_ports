.class public Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceShellCommand.java"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static synthetic $r8$lambda$15ludpjlAz2n_u8iJYrti81VwwU(Lcom/android/server/companion/CompanionDeviceShellCommand;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceShellCommand;->lambda$onCommand$0(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;Lcom/android/server/companion/datasync/DataSyncProcessor;)V
    .registers 10

    .line 73
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 76
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 77
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 78
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 79
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 80
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 81
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 82
    iput-object p9, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    return-void
.end method


# virtual methods
.method public final getNextBooleanArg()Z
    .registers 4

    .line 542
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 543
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_34

    .line 545
    :cond_f
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 546
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 548
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean argument but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return p0
.end method

.method public final getNextBooleanArgRequired()Z
    .registers 4

    .line 533
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 534
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2d

    .line 537
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean argument but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_2d
    :goto_2d
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .registers 1

    .line 529
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onCommand$0(ILjava/lang/String;)V
    .registers 4

    .line 509
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/companion/datasync/DataSyncProcessor;->setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 87
    const-string v0, " | "

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, 0x1

    .line 91
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_3d

    const-string/jumbo v6, "shell"

    const-string v7, "UUID can not be null."

    const-wide v12, 0x10500000001L

    const/4 v14, 0x2

    const-string v15, " -> "

    const v8, 0x63678883

    const-string/jumbo v9, "null"

    const/4 v10, 0x0

    sparse-switch v5, :sswitch_data_724

    goto/16 :goto_6f8

    :sswitch_28
    :try_start_28
    const-string/jumbo v0, "simulate-device-appeared"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 152
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 153
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    :cond_3a
    :goto_3a
    move v5, v10

    goto/16 :goto_6f7

    :catchall_3d
    move-exception v0

    goto/16 :goto_6fd

    .line 91
    :sswitch_40
    const-string/jumbo v0, "send-context-sync-call-control-message"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 318
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 319
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 321
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 324
    invoke-static {v3, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object v3

    .line 322
    invoke-virtual {v0, v8, v10, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto :goto_3a

    .line 91
    :sswitch_63
    const-string/jumbo v0, "simulate-device-event-device-locked"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 186
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 187
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 188
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 189
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    const/4 v6, 0x0

    goto :goto_88

    :cond_84
    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    .line 192
    :goto_88
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v7, v0, v3, v5, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnDeviceLocked(IIILandroid/os/ParcelUuid;)V

    goto :goto_3a

    .line 91
    :sswitch_8e
    const-string/jumbo v0, "simulate-device-uuid-event"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 172
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 175
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v6

    .line 176
    new-instance v7, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 177
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v7, v5, v0, v3, v8}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto/16 :goto_3a

    .line 91
    :sswitch_bf
    const-string/jumbo v0, "stop-observing-device-presence-association-id"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 218
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 219
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 221
    new-instance v6, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v6}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 222
    invoke-virtual {v6, v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v5

    .line 223
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v5, v3, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3a

    .line 91
    :sswitch_e8
    const-string v0, "associate"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 109
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v12

    .line 110
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v15

    .line 113
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArg()Z

    move-result v18

    .line 114
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v14

    .line 115
    iget-object v11, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v15

    invoke-virtual/range {v11 .. v22}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    goto/16 :goto_3a

    .line 91
    :sswitch_11b
    const-string v0, "disable-perm-sync"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 460
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 461
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 462
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_130

    goto :goto_138

    .line 463
    :cond_130
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_138
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 464
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->disablePermissionsSync(I)V

    .line 465
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_15e
    const-string/jumbo v0, "refresh-cache"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 148
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    goto/16 :goto_3a

    .line 91
    :sswitch_16e
    const-string v0, "disable-context-sync"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 415
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 416
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 417
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->disableSystemDataSync(II)V

    goto/16 :goto_3a

    .line 91
    :sswitch_185
    const-string/jumbo v0, "set-local-metadata"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 471
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 472
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 475
    iget-object v8, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-virtual {v8, v0}, Lcom/android/server/companion/datasync/DataSyncProcessor;->getLocalMetadata(I)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 476
    invoke-virtual {v8, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v8

    if-nez v8, :cond_1af

    .line 478
    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    :cond_1af
    if-ne v7, v9, :cond_1b5

    .line 481
    invoke-virtual {v8, v6}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V
    :try_end_1b4
    .catchall {:try_start_28 .. :try_end_1b4} :catchall_3d

    goto :goto_1c0

    .line 484
    :cond_1b5
    :try_start_1b5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v6, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1bc} :catch_1bd
    .catchall {:try_start_1b5 .. :try_end_1bc} :catchall_3d

    goto :goto_1c0

    .line 486
    :catch_1bd
    :try_start_1bd
    invoke-virtual {v8, v6, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_1c0
    iget-object v9, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-virtual {v9, v0, v5, v8}, Lcom/android/server/companion/datasync/DataSyncProcessor;->setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set local metadata for user "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " key "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_1eb
    const-string/jumbo v0, "stop-observing-device-presence-uuid"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 249
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 250
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20b

    .line 253
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 256
    :cond_20b
    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 257
    new-instance v6, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v6}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 258
    invoke-virtual {v6, v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v3

    .line 259
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v3, v5, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3a

    .line 91
    :sswitch_223
    const-string v0, "disassociate"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 123
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 124
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 126
    iget-object v8, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 127
    invoke-virtual {v8, v0, v5, v7}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-nez v0, :cond_246

    .line 130
    const-string v0, "Association doesn\'t exist."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 132
    :cond_246
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v3, v0, v6}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_251
    const-string/jumbo v0, "send-context-sync-empty-message"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 296
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 297
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 300
    invoke-static {}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createEmptyMessage()[B

    move-result-object v3

    .line 298
    invoke-virtual {v0, v8, v10, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3a

    .line 91
    :sswitch_26d
    const-string v0, "apply-restored-payload"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 273
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 274
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 275
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v5, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    goto/16 :goto_3a

    .line 91
    :sswitch_288
    const-string/jumbo v0, "remove-perm-sync-state"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 437
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 438
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 439
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_29f

    move-object v5, v9

    goto :goto_2a7

    .line 440
    :cond_29f
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_2a7
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 441
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->removePermissionSyncRequest(I)V

    .line 442
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2c0

    goto :goto_2c8

    :cond_2c0
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_2c8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_2d4
    const-string v0, "get-local-metadata"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 496
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 497
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 499
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datasync/DataSyncProcessor;->getLocalMetadata(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v6, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_2fb
    const-string/jumbo v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f8

    .line 93
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 94
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 95
    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v5

    .line 96
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v6}, Lcom/android/server/companion/association/AssociationStore;->getMaxId()I

    move-result v6

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v6, "Association ID | Package Name | Mac Address"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_331
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_331

    .line 91
    :sswitch_365
    const-string/jumbo v0, "simulate-device-disappeared"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 157
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 158
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    goto/16 :goto_3a

    .line 91
    :sswitch_379
    const-string/jumbo v0, "send-context-sync-call-create-message"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 305
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 306
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 309
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 312
    invoke-static {v3, v5, v6}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 310
    invoke-virtual {v0, v8, v10, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    goto/16 :goto_3a

    .line 91
    :sswitch_3a1
    const-string/jumbo v0, "simulate-device-event-device-unlocked"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 200
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 201
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnUserUnlocked(I)V

    goto/16 :goto_3a

    .line 91
    :sswitch_3b5
    const-string/jumbo v0, "start-observing-device-presence-uuid"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 230
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 231
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d5

    .line 234
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 237
    :cond_3d5
    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    .line 238
    new-instance v6, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v6}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 239
    invoke-virtual {v6, v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v3

    .line 240
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v3, v5, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3a

    .line 91
    :sswitch_3ed
    const-string v0, "disassociate-all"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 138
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 139
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 140
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_403
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 142
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v5, v3, v6}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_403

    .line 91
    :sswitch_419
    const-string/jumbo v0, "simulate-device-event"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 163
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 164
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 165
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    goto/16 :goto_3a

    .line 91
    :sswitch_431
    const-string v0, "get-perm-sync-state"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 429
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 430
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 431
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    if-nez v0, :cond_446

    goto :goto_44e

    .line 432
    :cond_446
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_44e
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_453
    const-string v0, "clear-local-metadata"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 506
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 507
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDataSyncProcessor:Lcom/android/server/companion/datasync/DataSyncProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datasync/DataSyncProcessor;->getLocalMetadata(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 508
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceShellCommand;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleared local metadata for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_48b
    const-string v0, "create-emulated-transport"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 291
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 292
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    goto/16 :goto_3a

    .line 91
    :sswitch_49e
    const-string v0, "enable-context-sync"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 422
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 423
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 424
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->enableSystemDataSync(II)V

    goto/16 :goto_3a

    .line 91
    :sswitch_4b5
    const-string/jumbo v0, "start-observing-device-presence-association-id"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 207
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 208
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 210
    new-instance v6, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v6}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 211
    invoke-virtual {v6, v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v5

    .line 212
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v5, v3, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    goto/16 :goto_3a

    .line 91
    :sswitch_4de
    const-string/jumbo v0, "remove-inactive-associations"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 284
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 285
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 284
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_4f6
    const-string v0, "enable-perm-sync"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 449
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 450
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 451
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    if-nez v5, :cond_50b

    goto :goto_513

    .line 452
    :cond_50b
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_513
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 453
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->enablePermissionsSync(I)V

    .line 454
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v0

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_539
    const-string v0, "get-backup-payload"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 266
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 267
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object v0

    .line 268
    invoke-static {v0, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 91
    :sswitch_554
    const-string/jumbo v0, "send-context-sync-call-facilitators-message"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 330
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 331
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 332
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 334
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 335
    invoke-virtual {v7, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10b00000004L

    .line 336
    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    move v9, v10

    :goto_57f
    if-ge v9, v3, :cond_5cd

    const-wide v13, 0x20b00000003L

    .line 338
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    if-ne v3, v4, :cond_595

    move-object v15, v5

    :goto_58d
    move-wide/from16 v20, v11

    const-wide v10, 0x10900000001L

    goto :goto_5a5

    .line 340
    :cond_595
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_58d

    .line 339
    :goto_5a5
    invoke-virtual {v7, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    if-ne v3, v4, :cond_5b1

    move-object v10, v6

    :goto_5ab
    const-wide v11, 0x10900000002L

    goto :goto_5c1

    .line 342
    :cond_5b1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5ab

    .line 341
    :goto_5c1
    invoke-virtual {v7, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 343
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v11, v20

    const/4 v10, 0x0

    goto :goto_57f

    :cond_5cd
    move-wide v5, v11

    .line 345
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 346
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 348
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    .line 347
    invoke-virtual {v0, v8, v5, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    const/4 v5, 0x0

    goto/16 :goto_6f7

    .line 91
    :sswitch_5e2
    const-string/jumbo v0, "send-context-sync-call-message"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f8

    .line 353
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 354
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v6

    .line 357
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v7

    .line 358
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v9

    .line 359
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v10

    .line 360
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v11

    .line 361
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v15

    .line 362
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v23

    .line 363
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v24

    .line 364
    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v25

    .line 365
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 366
    invoke-virtual {v8, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10b00000004L

    .line 367
    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    move/from16 v21, v15

    const-wide v14, 0x20b00000001L

    .line 368
    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    move-object/from16 v27, v5

    const-wide v4, 0x10900000001L

    .line 369
    invoke-virtual {v8, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10b00000002L

    .line 370
    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 371
    const-string v5, "Caller Name"

    move/from16 v28, v9

    move/from16 v29, v10

    const-wide v9, 0x10900000001L

    invoke-virtual {v8, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 372
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 373
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v9, v27

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 372
    invoke-static {v5}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v5

    move/from16 v27, v11

    const-wide v10, 0x10c00000002L

    invoke-virtual {v8, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v10, 0x10b00000003L

    .line 375
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 377
    const-string v5, "Test App Name"
    :try_end_681
    .catchall {:try_start_1bd .. :try_end_681} :catchall_3d

    move/from16 v30, v0

    const-wide v0, 0x10900000001L

    :try_start_688
    invoke-virtual {v8, v0, v1, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000002L

    .line 378
    invoke-virtual {v8, v0, v1, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 379
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 380
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10e00000003L

    .line 381
    invoke-virtual {v8, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x20e00000004L

    if-eqz v7, :cond_6b1

    const/4 v3, 0x1

    .line 383
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_6b1

    :catchall_6ad
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6fd

    :cond_6b1
    :goto_6b1
    if-eqz v28, :cond_6b7

    const/4 v3, 0x2

    .line 386
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6b7
    if-eqz v29, :cond_6bd

    const/4 v3, 0x3

    .line 389
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6bd
    if-eqz v27, :cond_6c3

    const/4 v3, 0x4

    .line 392
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6c3
    if-eqz v21, :cond_6c9

    const/4 v3, 0x5

    .line 395
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6c9
    if-eqz v23, :cond_6cf

    const/4 v3, 0x6

    .line 398
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6cf
    if-eqz v24, :cond_6d5

    const/4 v3, 0x7

    .line 401
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6d5
    if-eqz v25, :cond_6dc

    const/16 v3, 0x8

    .line 404
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 406
    :cond_6dc
    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 407
    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_6e2
    .catchall {:try_start_688 .. :try_end_6e2} :catchall_6ad

    move-object/from16 v1, p0

    .line 408
    :try_start_6e4
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move/from16 v3, v30

    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 410
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    const v4, 0x63678883

    const/4 v5, 0x0

    .line 409
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    :goto_6f7
    return v5

    .line 516
    :cond_6f8
    :goto_6f8
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_6fc
    .catchall {:try_start_6e4 .. :try_end_6fc} :catchall_3d

    return v0

    .line 519
    :goto_6fd
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while executing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\':"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const/16 v26, 0x1

    return v26

    nop

    :sswitch_data_724
    .sparse-switch
        -0x78de6919 -> :sswitch_5e2
        -0x76d9e39f -> :sswitch_554
        -0x7196e026 -> :sswitch_539
        -0x6ee6a072 -> :sswitch_4f6
        -0x6e9ef255 -> :sswitch_4de
        -0x5383aaff -> :sswitch_4b5
        -0x48f877fd -> :sswitch_49e
        -0x3aaa3162 -> :sswitch_48b
        -0x2f2ac52f -> :sswitch_453
        -0x2d23c69b -> :sswitch_431
        -0x25c83694 -> :sswitch_419
        -0x25b7ef5c -> :sswitch_3ed
        -0x20ae7cab -> :sswitch_3b5
        -0x1ed53de7 -> :sswitch_3a1
        -0x13014aaa -> :sswitch_379
        -0xb6faf2c -> :sswitch_365
        0x32b09e -> :sswitch_2fb
        0x84d0ea8 -> :sswitch_2d4
        0x13b98693 -> :sswitch_288
        0x20e05ad6 -> :sswitch_26d
        0x27a53e18 -> :sswitch_251
        0x2ebfca50 -> :sswitch_223
        0x2f25cbb5 -> :sswitch_1eb
        0x3f23a81c -> :sswitch_185
        0x3fc236be -> :sswitch_16e
        0x545c8610 -> :sswitch_15e
        0x5b04a2b3 -> :sswitch_11b
        0x5e900f1e -> :sswitch_e8
        0x6b59a561 -> :sswitch_bf
        0x72009e76 -> :sswitch_8e
        0x761c1fc0 -> :sswitch_63
        0x77005277 -> :sswitch_40
        0x774e28e2 -> :sswitch_28
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 12

    .line 554
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 555
    const-string v0, "Companion Device Manager (companiondevice) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    const-string v0, "  list USER_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string v0, "      List all Associations for a user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    const-string v0, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE] [SELF_MANAGED]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "      Create a new Association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "      Remove an existing Association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "  disassociate-all USER_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v0, "      Remove all Associations for a user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "  refresh-cache"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v0, "      Clear the in-memory association cache and reload all association "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v0, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v0, "  simulate-device-appeared ASSOCIATION_ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v0, "      Make CDM act as if the given companion device has appeared."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v1, "      I.e. bind the associated companion application\'s"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v2, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string v3, "      The CDM will consider the devices as present for 60 seconds and then"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string v3, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v3, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v3, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v4, "  simulate-device-disappeared ASSOCIATION_ID"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v4, "      Make CDM act as if the given companion device has disappeared."

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v5, "      I.e. unbind the associated companion application\'s"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v6, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v6, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    const-string v7, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    const-string v8, "      60 seconds ago."

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string v9, "  get-backup-payload USER_ID"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    const-string v9, "      Generate backup payload for the given user and print its content"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v9, "      encoded to a Base64 string."

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v9, "      Apply restored backup payload for the given user."

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v9, "  Simulate the companion device event changes:"

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v10, "    Case(0): "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v0, "      The CDM will consider the devices as present for60 seconds and then"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v0, "    Case(1): "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const-string v0, "    Case(2): "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    const-string v1, "    Case(3): "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const-string v2, "      Make CDM act as if the given companion device is BT disconnected "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string v2, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v0, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string v0, "  Simulate device event when the device is locked"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string v0, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v1, "  simulate-device-event-device-unlocked USER_ID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v1, "  Simulate device unlocked for given user. This will send corresponding"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string v1, "  callback after simulate-device-event-device-locked"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string v1, "  command has been called."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string v1, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string v1, "  Start observing device presence base on the UUID."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string v1, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string v1, "  Stop observing device presence base on the UUID."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string v0, "  remove-inactive-associations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "      Remove self-managed associations that have not been active "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string v0, "      for a long time (90 days or as configured via "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const-string v0, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string v0, "      Create an EmulatedTransport for testing purposes only"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string v0, "  enable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const-string v0, "      Enable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string v0, "  disable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    const-string v0, "      Disable perm sync for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const-string v0, "  get-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    const-string v0, "      Get perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    const-string v0, "  remove-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    const-string v0, "      Remove perm sync state for the association."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v0, "  set-local-metadata <USER_ID> <FEATURE_KEY> <KEY> <VALUE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    const-string v0, "      Set local metadata for the user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    const-string v0, "  get-local-metadata <USER_ID> <FEATURE_KEY> <KEY>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    const-string v0, "      Fetch local metadata for the user at a given key."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    const-string v0, "  clear-local-metadata <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    const-string v0, "      Clear local metadata for the user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
