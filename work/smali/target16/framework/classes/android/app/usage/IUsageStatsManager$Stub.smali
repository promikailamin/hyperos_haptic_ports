.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final blacklist TRANSACTION_clearBroadcastEvents:I = 0x25

.field static final blacklist TRANSACTION_clearBroadcastResponseStats:I = 0x24

.field static final blacklist TRANSACTION_forceUsageSourceSettingRead:I = 0x21

.field static final blacklist TRANSACTION_getAppMinStandbyBucket:I = 0x12

.field static final greylist-max-o TRANSACTION_getAppStandbyBucket:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppStandbyBuckets:I = 0x10

.field static final blacklist TRANSACTION_getAppStandbyConstant:I = 0x27

.field static final blacklist TRANSACTION_getLastTimeAnyComponentUsed:I = 0x22

.field static final blacklist TRANSACTION_getUsageSource:I = 0x20

.field static final greylist-max-o TRANSACTION_isAppInactive:I = 0xb

.field static final blacklist TRANSACTION_isAppStandbyEnabled:I = 0xa

.field static final blacklist TRANSACTION_isPackageExemptedFromBroadcastResponseStats:I = 0x26

.field static final greylist-max-o TRANSACTION_onCarrierPrivilegedAppsChanged:I = 0xc

.field static final blacklist TRANSACTION_queryBroadcastResponseStats:I = 0x23

.field static final greylist-max-o TRANSACTION_queryConfigurationStats:I = 0x2

.field static final greylist-max-o TRANSACTION_queryEventStats:I = 0x3

.field static final greylist-max-o TRANSACTION_queryEvents:I = 0x4

.field static final greylist-max-o TRANSACTION_queryEventsForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_queryEventsForPackageForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_queryEventsForUser:I = 0x6

.field static final blacklist TRANSACTION_queryEventsWithFilter:I = 0x8

.field static final greylist-max-o TRANSACTION_queryUsageStats:I = 0x1

.field static final blacklist TRANSACTION_registerAppUsageLimitObserver:I = 0x19

.field static final greylist-max-o TRANSACTION_registerAppUsageObserver:I = 0x15

.field static final blacklist TRANSACTION_registerUsageSessionObserver:I = 0x17

.field static final greylist-max-o TRANSACTION_reportChooserSelection:I = 0xd

.field static final blacklist TRANSACTION_reportPastUsageStart:I = 0x1c

.field static final blacklist TRANSACTION_reportUsageStart:I = 0x1b

.field static final blacklist TRANSACTION_reportUsageStop:I = 0x1d

.field static final blacklist TRANSACTION_reportUserInteraction:I = 0x1e

.field static final blacklist TRANSACTION_reportUserInteractionWithBundle:I = 0x1f

.field static final greylist-max-o TRANSACTION_setAppInactive:I = 0x9

.field static final greylist-max-o TRANSACTION_setAppStandbyBucket:I = 0xf

.field static final greylist-max-o TRANSACTION_setAppStandbyBuckets:I = 0x11

.field static final blacklist TRANSACTION_setEstimatedLaunchTime:I = 0x13

.field static final blacklist TRANSACTION_setEstimatedLaunchTimes:I = 0x14

.field static final blacklist TRANSACTION_unregisterAppUsageLimitObserver:I = 0x1a

.field static final greylist-max-o TRANSACTION_unregisterAppUsageObserver:I = 0x16

.field static final blacklist TRANSACTION_unregisterUsageSessionObserver:I = 0x18


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    nop

    .line 177
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 166
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 167
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 168
    if-eqz p1, :cond_d

    .line 171
    iput-object p1, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 172
    return-void

    .line 169
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .registers 3

    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_4
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_13

    .line 190
    check-cast v0, Landroid/app/usage/IUsageStatsManager;

    return-object v0

    .line 192
    :cond_13
    new-instance v0, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 201
    packed-switch p0, :pswitch_data_96

    .line 361
    const/4 p0, 0x0

    return-object p0

    .line 357
    :pswitch_5
    const-string p0, "getAppStandbyConstant"

    return-object p0

    .line 353
    :pswitch_8
    const-string p0, "isPackageExemptedFromBroadcastResponseStats"

    return-object p0

    .line 349
    :pswitch_b
    const-string p0, "clearBroadcastEvents"

    return-object p0

    .line 345
    :pswitch_e
    const-string p0, "clearBroadcastResponseStats"

    return-object p0

    .line 341
    :pswitch_11
    const-string/jumbo p0, "queryBroadcastResponseStats"

    return-object p0

    .line 337
    :pswitch_15
    const-string p0, "getLastTimeAnyComponentUsed"

    return-object p0

    .line 333
    :pswitch_18
    const-string p0, "forceUsageSourceSettingRead"

    return-object p0

    .line 329
    :pswitch_1b
    const-string p0, "getUsageSource"

    return-object p0

    .line 325
    :pswitch_1e
    const-string/jumbo p0, "reportUserInteractionWithBundle"

    return-object p0

    .line 321
    :pswitch_22
    const-string/jumbo p0, "reportUserInteraction"

    return-object p0

    .line 317
    :pswitch_26
    const-string/jumbo p0, "reportUsageStop"

    return-object p0

    .line 313
    :pswitch_2a
    const-string/jumbo p0, "reportPastUsageStart"

    return-object p0

    .line 309
    :pswitch_2e
    const-string/jumbo p0, "reportUsageStart"

    return-object p0

    .line 305
    :pswitch_32
    const-string/jumbo p0, "unregisterAppUsageLimitObserver"

    return-object p0

    .line 301
    :pswitch_36
    const-string/jumbo p0, "registerAppUsageLimitObserver"

    return-object p0

    .line 297
    :pswitch_3a
    const-string/jumbo p0, "unregisterUsageSessionObserver"

    return-object p0

    .line 293
    :pswitch_3e
    const-string/jumbo p0, "registerUsageSessionObserver"

    return-object p0

    .line 289
    :pswitch_42
    const-string/jumbo p0, "unregisterAppUsageObserver"

    return-object p0

    .line 285
    :pswitch_46
    const-string/jumbo p0, "registerAppUsageObserver"

    return-object p0

    .line 281
    :pswitch_4a
    const-string/jumbo p0, "setEstimatedLaunchTimes"

    return-object p0

    .line 277
    :pswitch_4e
    const-string/jumbo p0, "setEstimatedLaunchTime"

    return-object p0

    .line 273
    :pswitch_52
    const-string p0, "getAppMinStandbyBucket"

    return-object p0

    .line 269
    :pswitch_55
    const-string/jumbo p0, "setAppStandbyBuckets"

    return-object p0

    .line 265
    :pswitch_59
    const-string p0, "getAppStandbyBuckets"

    return-object p0

    .line 261
    :pswitch_5c
    const-string/jumbo p0, "setAppStandbyBucket"

    return-object p0

    .line 257
    :pswitch_60
    const-string p0, "getAppStandbyBucket"

    return-object p0

    .line 253
    :pswitch_63
    const-string/jumbo p0, "reportChooserSelection"

    return-object p0

    .line 249
    :pswitch_67
    const-string/jumbo p0, "onCarrierPrivilegedAppsChanged"

    return-object p0

    .line 245
    :pswitch_6b
    const-string p0, "isAppInactive"

    return-object p0

    .line 241
    :pswitch_6e
    const-string p0, "isAppStandbyEnabled"

    return-object p0

    .line 237
    :pswitch_71
    const-string/jumbo p0, "setAppInactive"

    return-object p0

    .line 233
    :pswitch_75
    const-string/jumbo p0, "queryEventsWithFilter"

    return-object p0

    .line 229
    :pswitch_79
    const-string/jumbo p0, "queryEventsForPackageForUser"

    return-object p0

    .line 225
    :pswitch_7d
    const-string/jumbo p0, "queryEventsForUser"

    return-object p0

    .line 221
    :pswitch_81
    const-string/jumbo p0, "queryEventsForPackage"

    return-object p0

    .line 217
    :pswitch_85
    const-string/jumbo p0, "queryEvents"

    return-object p0

    .line 213
    :pswitch_89
    const-string/jumbo p0, "queryEventStats"

    return-object p0

    .line 209
    :pswitch_8d
    const-string/jumbo p0, "queryConfigurationStats"

    return-object p0

    .line 205
    :pswitch_91
    const-string/jumbo p0, "queryUsageStats"

    return-object p0

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 196
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1691
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 368
    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    .line 373
    const-string v3, "android.app.usage.IUsageStatsManager"

    const/4 v11, 0x1

    if-lt v1, v11, :cond_13

    const v4, 0xffffff

    if-gt v1, v4, :cond_13

    .line 374
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    :cond_13
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1c

    .line 377
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    return v11

    .line 380
    :cond_1c
    packed-switch v1, :pswitch_data_426

    .line 897
    move-object v12, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 888
    :pswitch_25
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    goto/16 :goto_425

    .line 876
    :pswitch_38
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 879
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v1, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;I)Z

    move-result v0

    .line 881
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 883
    goto/16 :goto_425

    .line 865
    :pswitch_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 868
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastEvents(Ljava/lang/String;I)V

    .line 870
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_425

    .line 850
    :pswitch_62
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 856
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V

    .line 859
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_425

    .line 834
    :pswitch_80
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 838
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 841
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object v0

    .line 843
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 845
    goto/16 :goto_425

    .line 822
    :pswitch_a1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 827
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 829
    goto/16 :goto_425

    .line 815
    :pswitch_b9
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->forceUsageSourceSettingRead()V

    .line 816
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    goto/16 :goto_425

    .line 808
    :pswitch_c1
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->getUsageSource()I

    move-result v0

    .line 809
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    goto/16 :goto_425

    .line 796
    :pswitch_cd
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 800
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 801
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteractionWithBundle(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 803
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto/16 :goto_425

    .line 785
    :pswitch_e9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteraction(Ljava/lang/String;I)V

    .line 790
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_425

    .line 772
    :pswitch_fd
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 774
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    goto/16 :goto_425

    .line 757
    :pswitch_115
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 759
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 763
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 766
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_425

    .line 744
    :pswitch_132
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_425

    .line 733
    :pswitch_14a
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V

    .line 738
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_425

    .line 714
    :pswitch_15e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 720
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 722
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 724
    move-object v9, v5

    move-wide v13, v7

    move-object v7, v6

    move-wide v5, v13

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 725
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    move-object v0, p0

    move-object v7, v9

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_425

    .line 703
    :pswitch_18c
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageSessionObserver(ILjava/lang/String;)V

    .line 708
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_425

    .line 682
    :pswitch_1a0
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    invoke-virtual {v7}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 688
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 690
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 692
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 694
    move-object v12, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 695
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_425

    .line 671
    :pswitch_1d4
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageObserver(ILjava/lang/String;)V

    .line 676
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_425

    .line 654
    :pswitch_1e8
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 660
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 662
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_425

    .line 643
    :pswitch_20d
    move-object v12, v2

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 645
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V

    .line 648
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_425

    .line 630
    :pswitch_225
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 634
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 635
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime(Ljava/lang/String;JI)V

    .line 637
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_425

    .line 616
    :pswitch_23d
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 621
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 623
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    goto/16 :goto_425

    .line 605
    :pswitch_259
    move-object v12, v2

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 607
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 608
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 610
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_425

    .line 593
    :pswitch_271
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 598
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    goto/16 :goto_425

    .line 580
    :pswitch_289
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 585
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket(Ljava/lang/String;II)V

    .line 587
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_425

    .line 566
    :pswitch_2a1
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 573
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    goto/16 :goto_425

    .line 549
    :pswitch_2bd
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 557
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 558
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    goto/16 :goto_425

    .line 542
    :pswitch_2de
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->onCarrierPrivilegedAppsChanged()V

    .line 543
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_425

    .line 529
    :pswitch_2e6
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 536
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 538
    goto/16 :goto_425

    .line 521
    :pswitch_302
    invoke-virtual {p0}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppStandbyEnabled()Z

    move-result v0

    .line 522
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    goto/16 :goto_425

    .line 509
    :pswitch_30e
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 513
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    .line 516
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_425

    .line 497
    :pswitch_326
    move-object v12, v2

    sget-object v1, Landroid/app/usage/UsageEventsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEventsQuery;

    .line 499
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsWithFilter(Landroid/app/usage/UsageEventsQuery;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 502
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 504
    goto/16 :goto_425

    .line 479
    :pswitch_342
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 481
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 483
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 485
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 487
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 490
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 492
    goto/16 :goto_425

    .line 463
    :pswitch_367
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 465
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 467
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 472
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    goto/16 :goto_425

    .line 449
    :pswitch_388
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 451
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 453
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 456
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 458
    goto/16 :goto_425

    .line 435
    :pswitch_3a5
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 437
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 439
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 440
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 442
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 444
    goto :goto_425

    .line 419
    :pswitch_3c1
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 423
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 425
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 426
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 428
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    goto :goto_425

    .line 403
    :pswitch_3e1
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 407
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 409
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 412
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 414
    goto :goto_425

    .line 385
    :pswitch_401
    move-object v12, v2

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 389
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 391
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 394
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 396
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v10, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 398
    nop

    .line 900
    :goto_425
    return v11

    :pswitch_data_426
    .packed-switch 0x1
        :pswitch_401
        :pswitch_3e1
        :pswitch_3c1
        :pswitch_3a5
        :pswitch_388
        :pswitch_367
        :pswitch_342
        :pswitch_326
        :pswitch_30e
        :pswitch_302
        :pswitch_2e6
        :pswitch_2de
        :pswitch_2bd
        :pswitch_2a1
        :pswitch_289
        :pswitch_271
        :pswitch_259
        :pswitch_23d
        :pswitch_225
        :pswitch_20d
        :pswitch_1e8
        :pswitch_1d4
        :pswitch_1a0
        :pswitch_18c
        :pswitch_15e
        :pswitch_14a
        :pswitch_132
        :pswitch_115
        :pswitch_fd
        :pswitch_e9
        :pswitch_cd
        :pswitch_c1
        :pswitch_b9
        :pswitch_a1
        :pswitch_80
        :pswitch_62
        :pswitch_4f
        :pswitch_38
        :pswitch_25
    .end packed-switch
.end method

.method protected blacklist setAppStandbyBucket_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1651
    return-void
.end method

.method protected blacklist setAppStandbyBuckets_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1657
    return-void
.end method

.method protected blacklist setEstimatedLaunchTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1663
    return-void
.end method

.method protected blacklist setEstimatedLaunchTimes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Landroid/app/usage/IUsageStatsManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/usage/IUsageStatsManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1668
    return-void
.end method
