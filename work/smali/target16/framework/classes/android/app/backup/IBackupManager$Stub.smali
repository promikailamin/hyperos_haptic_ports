.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final greylist-max-o TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x17

.field static final blacklist TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x16

.field static final greylist-max-o TRANSACTION_adbBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_adbRestore:I = 0x15

.field static final greylist-max-o TRANSACTION_backupNow:I = 0x12

.field static final blacklist TRANSACTION_backupNowForUser:I = 0x11

.field static final blacklist TRANSACTION_beginRestoreSessionForUser:I = 0x2a

.field static final greylist-max-o TRANSACTION_cancelBackups:I = 0x36

.field static final blacklist TRANSACTION_cancelBackupsForUser:I = 0x35

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0x4

.field static final blacklist TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_dataChanged:I = 0x2

.field static final blacklist TRANSACTION_dataChangedForUser:I = 0x1

.field static final blacklist TRANSACTION_excludeKeysFromRestore:I = 0x39

.field static final blacklist TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x32

.field static final blacklist TRANSACTION_fullTransportBackupForUser:I = 0x14

.field static final blacklist TRANSACTION_getAvailableRestoreTokenForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_getConfigurationIntent:I = 0x24

.field static final blacklist TRANSACTION_getConfigurationIntentForUser:I = 0x23

.field static final greylist-max-o TRANSACTION_getCurrentTransport:I = 0x1a

.field static final blacklist TRANSACTION_getCurrentTransportComponentForUser:I = 0x1b

.field static final blacklist TRANSACTION_getCurrentTransportForUser:I = 0x19

.field static final greylist-max-o TRANSACTION_getDataManagementIntent:I = 0x28

.field static final blacklist TRANSACTION_getDataManagementIntentForUser:I = 0x27

.field static final blacklist TRANSACTION_getDataManagementLabelForUser:I = 0x29

.field static final greylist-max-o TRANSACTION_getDestinationString:I = 0x26

.field static final blacklist TRANSACTION_getDestinationStringForUser:I = 0x25

.field static final greylist-max-o TRANSACTION_getTransportWhitelist:I = 0x1f

.field static final blacklist TRANSACTION_getUserForAncestralSerialNumber:I = 0x37

.field static final greylist-max-o TRANSACTION_hasBackupPassword:I = 0x10

.field static final blacklist TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final blacklist TRANSACTION_isAppEligibleForBackupForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_isBackupEnabled:I = 0xe

.field static final blacklist TRANSACTION_isBackupEnabledForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_isBackupServiceActive:I = 0x2e

.field static final blacklist TRANSACTION_isUserReadyForBackup:I = 0x2f

.field static final blacklist TRANSACTION_listAllTransportComponentsForUser:I = 0x1e

.field static final greylist-max-o TRANSACTION_listAllTransports:I = 0x1d

.field static final blacklist TRANSACTION_listAllTransportsForUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_opComplete:I = 0x2c

.field static final blacklist TRANSACTION_opCompleteForUser:I = 0x2b

.field static final blacklist TRANSACTION_reportDelayedRestoreResult:I = 0x3a

.field static final greylist-max-o TRANSACTION_requestBackup:I = 0x34

.field static final blacklist TRANSACTION_requestBackupForUser:I = 0x33

.field static final greylist-max-o TRANSACTION_restoreAtInstall:I = 0x7

.field static final blacklist TRANSACTION_restoreAtInstallForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_selectBackupTransport:I = 0x21

.field static final blacklist TRANSACTION_selectBackupTransportAsyncForUser:I = 0x22

.field static final blacklist TRANSACTION_selectBackupTransportForUser:I = 0x20

.field static final blacklist TRANSACTION_setAncestralSerialNumber:I = 0x38

.field static final greylist-max-o TRANSACTION_setAutoRestore:I = 0xc

.field static final blacklist TRANSACTION_setAutoRestoreForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_setBackupEnabled:I = 0xa

.field static final blacklist TRANSACTION_setBackupEnabledForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_setBackupPassword:I = 0xf

.field static final greylist-max-o TRANSACTION_setBackupServiceActive:I = 0x2d

.field static final blacklist TRANSACTION_setFrameworkSchedulingEnabledForUser:I = 0x9

.field static final blacklist TRANSACTION_updateTransportAttributesForUser:I = 0x18


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 749
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 750
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .registers 3

    .line 758
    if-nez p0, :cond_4

    .line 759
    const/4 p0, 0x0

    return-object p0

    .line 761
    :cond_4
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_13

    .line 763
    check-cast v0, Landroid/app/backup/IBackupManager;

    return-object v0

    .line 765
    :cond_13
    new-instance v0, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 774
    packed-switch p0, :pswitch_data_ca

    .line 1010
    const/4 p0, 0x0

    return-object p0

    .line 1006
    :pswitch_5
    const-string/jumbo p0, "reportDelayedRestoreResult"

    return-object p0

    .line 1002
    :pswitch_9
    const-string p0, "excludeKeysFromRestore"

    return-object p0

    .line 998
    :pswitch_c
    const-string/jumbo p0, "setAncestralSerialNumber"

    return-object p0

    .line 994
    :pswitch_10
    const-string p0, "getUserForAncestralSerialNumber"

    return-object p0

    .line 990
    :pswitch_13
    const-string p0, "cancelBackups"

    return-object p0

    .line 986
    :pswitch_16
    const-string p0, "cancelBackupsForUser"

    return-object p0

    .line 982
    :pswitch_19
    const-string/jumbo p0, "requestBackup"

    return-object p0

    .line 978
    :pswitch_1d
    const-string/jumbo p0, "requestBackupForUser"

    return-object p0

    .line 974
    :pswitch_21
    const-string p0, "filterAppsEligibleForBackupForUser"

    return-object p0

    .line 970
    :pswitch_24
    const-string p0, "isAppEligibleForBackupForUser"

    return-object p0

    .line 966
    :pswitch_27
    const-string p0, "getAvailableRestoreTokenForUser"

    return-object p0

    .line 962
    :pswitch_2a
    const-string/jumbo p0, "isUserReadyForBackup"

    return-object p0

    .line 958
    :pswitch_2e
    const-string p0, "isBackupServiceActive"

    return-object p0

    .line 954
    :pswitch_31
    const-string/jumbo p0, "setBackupServiceActive"

    return-object p0

    .line 950
    :pswitch_35
    const-string/jumbo p0, "opComplete"

    return-object p0

    .line 946
    :pswitch_39
    const-string/jumbo p0, "opCompleteForUser"

    return-object p0

    .line 942
    :pswitch_3d
    const-string p0, "beginRestoreSessionForUser"

    return-object p0

    .line 938
    :pswitch_40
    const-string p0, "getDataManagementLabelForUser"

    return-object p0

    .line 934
    :pswitch_43
    const-string p0, "getDataManagementIntent"

    return-object p0

    .line 930
    :pswitch_46
    const-string p0, "getDataManagementIntentForUser"

    return-object p0

    .line 926
    :pswitch_49
    const-string p0, "getDestinationString"

    return-object p0

    .line 922
    :pswitch_4c
    const-string p0, "getDestinationStringForUser"

    return-object p0

    .line 918
    :pswitch_4f
    const-string p0, "getConfigurationIntent"

    return-object p0

    .line 914
    :pswitch_52
    const-string p0, "getConfigurationIntentForUser"

    return-object p0

    .line 910
    :pswitch_55
    const-string/jumbo p0, "selectBackupTransportAsyncForUser"

    return-object p0

    .line 906
    :pswitch_59
    const-string/jumbo p0, "selectBackupTransport"

    return-object p0

    .line 902
    :pswitch_5d
    const-string/jumbo p0, "selectBackupTransportForUser"

    return-object p0

    .line 898
    :pswitch_61
    const-string p0, "getTransportWhitelist"

    return-object p0

    .line 894
    :pswitch_64
    const-string/jumbo p0, "listAllTransportComponentsForUser"

    return-object p0

    .line 890
    :pswitch_68
    const-string/jumbo p0, "listAllTransports"

    return-object p0

    .line 886
    :pswitch_6c
    const-string/jumbo p0, "listAllTransportsForUser"

    return-object p0

    .line 882
    :pswitch_70
    const-string p0, "getCurrentTransportComponentForUser"

    return-object p0

    .line 878
    :pswitch_73
    const-string p0, "getCurrentTransport"

    return-object p0

    .line 874
    :pswitch_76
    const-string p0, "getCurrentTransportForUser"

    return-object p0

    .line 870
    :pswitch_79
    const-string/jumbo p0, "updateTransportAttributesForUser"

    return-object p0

    .line 866
    :pswitch_7d
    const-string p0, "acknowledgeFullBackupOrRestore"

    return-object p0

    .line 862
    :pswitch_80
    const-string p0, "acknowledgeFullBackupOrRestoreForUser"

    return-object p0

    .line 858
    :pswitch_83
    const-string p0, "adbRestore"

    return-object p0

    .line 854
    :pswitch_86
    const-string p0, "fullTransportBackupForUser"

    return-object p0

    .line 850
    :pswitch_89
    const-string p0, "adbBackup"

    return-object p0

    .line 846
    :pswitch_8c
    const-string p0, "backupNow"

    return-object p0

    .line 842
    :pswitch_8f
    const-string p0, "backupNowForUser"

    return-object p0

    .line 838
    :pswitch_92
    const-string p0, "hasBackupPassword"

    return-object p0

    .line 834
    :pswitch_95
    const-string/jumbo p0, "setBackupPassword"

    return-object p0

    .line 830
    :pswitch_99
    const-string p0, "isBackupEnabled"

    return-object p0

    .line 826
    :pswitch_9c
    const-string p0, "isBackupEnabledForUser"

    return-object p0

    .line 822
    :pswitch_9f
    const-string/jumbo p0, "setAutoRestore"

    return-object p0

    .line 818
    :pswitch_a3
    const-string/jumbo p0, "setAutoRestoreForUser"

    return-object p0

    .line 814
    :pswitch_a7
    const-string/jumbo p0, "setBackupEnabled"

    return-object p0

    .line 810
    :pswitch_ab
    const-string/jumbo p0, "setFrameworkSchedulingEnabledForUser"

    return-object p0

    .line 806
    :pswitch_af
    const-string/jumbo p0, "setBackupEnabledForUser"

    return-object p0

    .line 802
    :pswitch_b3
    const-string/jumbo p0, "restoreAtInstall"

    return-object p0

    .line 798
    :pswitch_b7
    const-string/jumbo p0, "restoreAtInstallForUser"

    return-object p0

    .line 794
    :pswitch_bb
    const-string p0, "initializeTransportsForUser"

    return-object p0

    .line 790
    :pswitch_be
    const-string p0, "clearBackupData"

    return-object p0

    .line 786
    :pswitch_c1
    const-string p0, "clearBackupDataForUser"

    return-object p0

    .line 782
    :pswitch_c4
    const-string p0, "dataChanged"

    return-object p0

    .line 778
    :pswitch_c7
    const-string p0, "dataChangedForUser"

    return-object p0

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 769
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3314
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1017
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 1022
    const-string v3, "android.app.backup.IBackupManager"

    const/4 v13, 0x1

    if-lt p1, v13, :cond_11

    const v4, 0xffffff

    if-gt p1, v4, :cond_11

    .line 1023
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    :cond_11
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1a

    .line 1026
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    return v13

    .line 1029
    :cond_1a
    packed-switch p1, :pswitch_data_53c

    .line 1699
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1689
    :pswitch_22
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1691
    sget-object v3, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1692
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1693
    invoke-virtual {p0, v1, v3}, Landroid/app/backup/IBackupManager$Stub;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V

    .line 1694
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    goto/16 :goto_53b

    .line 1678
    :pswitch_37
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1681
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    invoke-virtual {p0, v1, v3}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 1683
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    goto/16 :goto_53b

    .line 1669
    :pswitch_4a
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1670
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1671
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    .line 1672
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    goto/16 :goto_53b

    .line 1659
    :pswitch_59
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1660
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1661
    invoke-virtual {p0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    .line 1662
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1664
    goto/16 :goto_53b

    .line 1652
    :pswitch_6c
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    .line 1653
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    goto/16 :goto_53b

    .line 1644
    :pswitch_74
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1645
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    .line 1647
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    goto/16 :goto_53b

    .line 1628
    :pswitch_83
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1630
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    .line 1632
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    .line 1634
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1635
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1636
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    .line 1637
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    goto/16 :goto_53b

    .line 1610
    :pswitch_aa
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v4

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    .line 1618
    move-object/from16 v6, p2

    move-object v3, v4

    move-object v4, v5

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1619
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    .line 1621
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    goto/16 :goto_53b

    .line 1598
    :pswitch_da
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1600
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1601
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1605
    goto/16 :goto_53b

    .line 1586
    :pswitch_f2
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1588
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1589
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v0

    .line 1591
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1593
    goto/16 :goto_53b

    .line 1574
    :pswitch_10a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1576
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1577
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v0

    .line 1579
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1581
    goto/16 :goto_53b

    .line 1564
    :pswitch_122
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1565
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1566
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v0

    .line 1567
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1569
    goto/16 :goto_53b

    .line 1554
    :pswitch_136
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1555
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1556
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v0

    .line 1557
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1559
    goto/16 :goto_53b

    .line 1543
    :pswitch_14a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1545
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1546
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 1548
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    goto/16 :goto_53b

    .line 1532
    :pswitch_15e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1534
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1535
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 1537
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    goto/16 :goto_53b

    .line 1519
    :pswitch_172
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1521
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1523
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1524
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    .line 1526
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    goto/16 :goto_53b

    .line 1505
    :pswitch_18a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1507
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1510
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 1512
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1514
    goto/16 :goto_53b

    .line 1487
    :pswitch_1a6
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1489
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1492
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    if-eqz v0, :cond_1c3

    .line 1494
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    invoke-static {v0, v12, v13}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_53b

    .line 1498
    :cond_1c3
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    goto/16 :goto_53b

    .line 1477
    :pswitch_1c9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1480
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1482
    goto/16 :goto_53b

    .line 1465
    :pswitch_1dd
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1467
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1470
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1472
    goto/16 :goto_53b

    .line 1455
    :pswitch_1f5
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1460
    goto/16 :goto_53b

    .line 1443
    :pswitch_209
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1445
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1446
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1450
    goto/16 :goto_53b

    .line 1433
    :pswitch_221
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1436
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1438
    goto/16 :goto_53b

    .line 1421
    :pswitch_235
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1423
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1424
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1426
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1428
    goto/16 :goto_53b

    .line 1408
    :pswitch_24d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1410
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1412
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v3

    .line 1413
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1415
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    goto/16 :goto_53b

    .line 1398
    :pswitch_26d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1399
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1403
    goto/16 :goto_53b

    .line 1386
    :pswitch_281
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1388
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1393
    goto/16 :goto_53b

    .line 1378
    :pswitch_299
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 1379
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1381
    goto/16 :goto_53b

    .line 1369
    :pswitch_2a5
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1370
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    .line 1372
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1374
    goto/16 :goto_53b

    .line 1361
    :pswitch_2b9
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v0

    .line 1362
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1364
    goto/16 :goto_53b

    .line 1352
    :pswitch_2c5
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1353
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1357
    goto/16 :goto_53b

    .line 1342
    :pswitch_2d9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1343
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1345
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v12, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1347
    goto/16 :goto_53b

    .line 1334
    :pswitch_2ed
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    .line 1335
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1337
    goto/16 :goto_53b

    .line 1325
    :pswitch_2f9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1326
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1330
    goto/16 :goto_53b

    .line 1304
    :pswitch_30d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1306
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1308
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1310
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1312
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1314
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1316
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 1317
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1319
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    goto/16 :goto_53b

    .line 1287
    :pswitch_348
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1291
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1295
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    .line 1296
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1298
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_53b

    .line 1268
    :pswitch_36d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1272
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1274
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1278
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    .line 1279
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1281
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_53b

    .line 1257
    :pswitch_397
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1260
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    .line 1262
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    goto/16 :goto_53b

    .line 1246
    :pswitch_3af
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1248
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1249
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_53b

    .line 1217
    :pswitch_3c3
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1219
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1221
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1223
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1225
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    goto/16 :goto_53b

    .line 1210
    :pswitch_400
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 1211
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_53b

    .line 1202
    :pswitch_408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    .line 1205
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_53b

    .line 1194
    :pswitch_417
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v0

    .line 1195
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1197
    goto/16 :goto_53b

    .line 1183
    :pswitch_423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1188
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1190
    goto/16 :goto_53b

    .line 1175
    :pswitch_43a
    invoke-virtual {p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v0

    .line 1176
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1178
    goto/16 :goto_53b

    .line 1166
    :pswitch_446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v0

    .line 1169
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_53b

    .line 1157
    :pswitch_459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 1160
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_53b

    .line 1146
    :pswitch_468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    .line 1151
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    goto/16 :goto_53b

    .line 1137
    :pswitch_47b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 1140
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    goto/16 :goto_53b

    .line 1126
    :pswitch_48a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setFrameworkSchedulingEnabledForUser(IZ)V

    .line 1131
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    goto/16 :goto_53b

    .line 1115
    :pswitch_49d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    .line 1120
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    goto/16 :goto_53b

    .line 1104
    :pswitch_4b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 1109
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_53b

    .line 1091
    :pswitch_4c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 1098
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto :goto_53b

    .line 1078
    :pswitch_4d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 1085
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto :goto_53b

    .line 1067
    :pswitch_4f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto :goto_53b

    .line 1054
    :pswitch_505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    goto :goto_53b

    .line 1045
    :pswitch_51b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto :goto_53b

    .line 1034
    :pswitch_529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    .line 1039
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    nop

    .line 1702
    :goto_53b
    return v13

    :pswitch_data_53c
    .packed-switch 0x1
        :pswitch_529
        :pswitch_51b
        :pswitch_505
        :pswitch_4f3
        :pswitch_4d9
        :pswitch_4c3
        :pswitch_4b0
        :pswitch_49d
        :pswitch_48a
        :pswitch_47b
        :pswitch_468
        :pswitch_459
        :pswitch_446
        :pswitch_43a
        :pswitch_423
        :pswitch_417
        :pswitch_408
        :pswitch_400
        :pswitch_3c3
        :pswitch_3af
        :pswitch_397
        :pswitch_36d
        :pswitch_348
        :pswitch_30d
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2d9
        :pswitch_2c5
        :pswitch_2b9
        :pswitch_2a5
        :pswitch_299
        :pswitch_281
        :pswitch_26d
        :pswitch_24d
        :pswitch_235
        :pswitch_221
        :pswitch_209
        :pswitch_1f5
        :pswitch_1dd
        :pswitch_1c9
        :pswitch_1a6
        :pswitch_18a
        :pswitch_172
        :pswitch_15e
        :pswitch_14a
        :pswitch_136
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_da
        :pswitch_aa
        :pswitch_83
        :pswitch_74
        :pswitch_6c
        :pswitch_59
        :pswitch_4a
        :pswitch_37
        :pswitch_22
    .end packed-switch
.end method
