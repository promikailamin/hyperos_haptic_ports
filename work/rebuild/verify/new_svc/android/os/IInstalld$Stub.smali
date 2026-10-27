.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x19

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copySystemProfile:I = 0x18

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createFsveritySetupAuthToken:I = 0x33

.field static final TRANSACTION_createOatDirs:I = 0x21

.field static final TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x24

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x17

.field static final TRANSACTION_enableFsverity:I = 0x34

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x1f

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getOdexVisibility:I = 0x32

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final TRANSACTION_invalidateMounts:I = 0x27

.field static final TRANSACTION_isQuotaSupported:I = 0x28

.field static final TRANSACTION_linkFile:I = 0x22

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final TRANSACTION_mergeProfiles:I = 0x16

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final TRANSACTION_moveAb:I = 0x23

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final TRANSACTION_prepareAppProfile:I = 0x29

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1e

.field static final TRANSACTION_rmdex:I = 0x15

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2a

.field static final TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 220
    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_13

    .line 221
    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    .line 223
    :cond_13
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 232
    const-string v3, "android.os.IInstalld"

    const/4 v9, 0x1

    if-lt v1, v9, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 233
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 236
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_1e
    packed-switch v1, :pswitch_data_5b8

    .line 989
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 976
    :pswitch_26
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    .line 978
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 981
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 983
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5b6

    .line 964
    :pswitch_45
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 966
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 967
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v0

    .line 969
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_5b6

    .line 948
    :pswitch_60
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 955
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 957
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5b6

    .line 935
    :pswitch_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 939
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 940
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 942
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 928
    :pswitch_96
    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 929
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 920
    :pswitch_9e
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 911
    :pswitch_ad
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 912
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 898
    :pswitch_bc
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 902
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 903
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 905
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 879
    :pswitch_d3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 892
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 858
    :pswitch_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 872
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 873
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 840
    :pswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 850
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 851
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_5b6

    .line 820
    :pswitch_144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 832
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 833
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 810
    :pswitch_16d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    .line 813
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 803
    :pswitch_180
    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 804
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 786
    :pswitch_188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 797
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_5b6

    .line 766
    :pswitch_1ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 778
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 779
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 750
    :pswitch_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 759
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_5b6

    .line 735
    :pswitch_1f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 720
    :pswitch_20e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 707
    :pswitch_229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDirs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 714
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 692
    :pswitch_240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 701
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 679
    :pswitch_25b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 686
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 668
    :pswitch_272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 657
    :pswitch_285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 641
    :pswitch_298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 650
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 630
    :pswitch_2b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 621
    :pswitch_2ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 610
    :pswitch_2d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 594
    :pswitch_2ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 603
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 576
    :pswitch_30b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 587
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_5b6

    .line 562
    :pswitch_32e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 569
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5b6

    .line 551
    :pswitch_349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 542
    :pswitch_35c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 545
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    .line 502
    :pswitch_36b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move v1, v9

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, v0

    move-object/from16 v0, p3

    .line 534
    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_3bc
    const/4 v9, 0x1

    goto/16 :goto_5b6

    :pswitch_3bf
    move-object v11, v2

    move-object v0, v8

    .line 481
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 489
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 493
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 494
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 495
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 496
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3bc

    :pswitch_3e9
    move-object v11, v2

    .line 466
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 473
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 474
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 475
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3bc

    :pswitch_406
    move-object v11, v2

    .line 454
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 457
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 459
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    .line 460
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_5b6

    :pswitch_41f
    move-object v11, v2

    .line 440
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 447
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_5b6

    :pswitch_43b
    move-object v11, v2

    .line 424
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 428
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 431
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 433
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_5b6

    :pswitch_45b
    move-object v11, v2

    .line 408
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 414
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 415
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 417
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_5b6

    :pswitch_47b
    move-object v11, v2

    .line 386
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 392
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 396
    invoke-virtual {v11}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 398
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 401
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_5b6

    :pswitch_4a7
    move-object v11, v2

    .line 375
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 380
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    :pswitch_4bb
    move-object v11, v2

    .line 358
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 367
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 369
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    :pswitch_4db
    move-object v11, v2

    .line 341
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 349
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 350
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 351
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 352
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    :pswitch_4fd
    move-object v11, v2

    .line 326
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 335
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    :pswitch_519
    move-object v11, v2

    .line 307
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 315
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 317
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 320
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5b6

    :pswitch_53d
    move-object v11, v2

    .line 298
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 299
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 301
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5b6

    :pswitch_550
    move-object v11, v2

    .line 288
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 289
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 291
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_5b6

    :pswitch_567
    move-object v11, v2

    .line 278
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 279
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 281
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b6

    .line 271
    :pswitch_57e
    invoke-interface {v0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 272
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5b6

    :pswitch_585
    move-object v11, v2

    .line 259
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 264
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 266
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5b6

    :pswitch_59c
    move-object v11, v2

    .line 244
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 253
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    :goto_5b6
    return v9

    nop

    :pswitch_data_5b8
    .packed-switch 0x1
        :pswitch_59c
        :pswitch_585
        :pswitch_57e
        :pswitch_567
        :pswitch_550
        :pswitch_53d
        :pswitch_519
        :pswitch_4fd
        :pswitch_4db
        :pswitch_4bb
        :pswitch_4a7
        :pswitch_47b
        :pswitch_45b
        :pswitch_43b
        :pswitch_41f
        :pswitch_406
        :pswitch_3e9
        :pswitch_3bf
        :pswitch_36b
        :pswitch_35c
        :pswitch_349
        :pswitch_32e
        :pswitch_30b
        :pswitch_2ec
        :pswitch_2d9
        :pswitch_2ca
        :pswitch_2b7
        :pswitch_298
        :pswitch_285
        :pswitch_272
        :pswitch_25b
        :pswitch_240
        :pswitch_229
        :pswitch_20e
        :pswitch_1f3
        :pswitch_1d4
        :pswitch_1ab
        :pswitch_188
        :pswitch_180
        :pswitch_16d
        :pswitch_144
        :pswitch_11f
        :pswitch_f6
        :pswitch_d3
        :pswitch_bc
        :pswitch_ad
        :pswitch_9e
        :pswitch_96
        :pswitch_7f
        :pswitch_60
        :pswitch_45
        :pswitch_26
    .end packed-switch
.end method
