.class final Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RestrictionSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    }
.end annotation


# instance fields
.field final mRestrictionLevels:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method static bridge synthetic -$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getLastRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/AppRestrictionController;

    .line 437
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    return-void
.end method

.method private getLastRestrictionLevel(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 696
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 697
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_13

    .line 698
    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastRestrictionLevel()I

    move-result v2

    :goto_17
    monitor-exit v0

    .line 697
    return v2

    .line 699
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method static synthetic lambda$dump$1(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 2
    .param p0, "settings"    # Ljava/util/ArrayList;
    .param p1, "setting"    # Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 800
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$resetToDefault$0(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 5
    .param p0, "settings"    # Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 784
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 785
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 786
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V

    .line 787
    const/16 v2, 0x100

    invoke-static {p0, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 788
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v2

    if-eqz v2, :cond_28

    .line 789
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_28

    .line 790
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    aput-wide v0, v3, v2

    .line 789
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 793
    .end local v2    # "i":I
    :cond_28
    return-void
.end method

.method private loadOneFromXml(Landroid/util/TypedXmlPullParser;J[JZ)V
    .registers 27
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "now"    # J
    .param p4, "ts"    # [J
    .param p5, "applyLevel"    # Z

    .line 872
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v4, v3

    const-wide/16 v5, 0x0

    if-ge v0, v4, :cond_11

    .line 873
    aput-wide v5, v3, v0

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 876
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x0

    .line 877
    .local v0, "uid":I
    const/4 v4, 0x0

    .line 878
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 879
    .local v7, "curLevel":I
    const/16 v8, 0x100

    .line 880
    .local v8, "reason":I
    const-wide/16 v9, 0x0

    .line 881
    .local v9, "levelTs":J
    const/4 v11, 0x0

    move-object v15, v4

    move v14, v7

    move v13, v8

    move v7, v11

    move v4, v0

    move-wide v10, v9

    .end local v0    # "uid":I
    .end local v8    # "reason":I
    .end local v9    # "levelTs":J
    .local v4, "uid":I
    .local v7, "i":I
    .local v10, "levelTs":J
    .local v13, "reason":I
    .local v14, "curLevel":I
    .local v15, "packageName":Ljava/lang/String;
    :goto_1f
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v8, 0x0

    if-ge v7, v0, :cond_9b

    .line 883
    :try_start_26
    invoke-interface {v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "attrName":Ljava/lang/String;
    invoke-interface {v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 885
    .local v9, "attrValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_138

    :cond_35
    goto :goto_6b

    :sswitch_36
    const-string v8, "curlevel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x2

    goto :goto_6c

    :sswitch_40
    const-string/jumbo v8, "levelts"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x3

    goto :goto_6c

    :sswitch_4b
    const-string/jumbo v12, "uid"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    goto :goto_6c

    :sswitch_55
    const-string/jumbo v8, "package"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x1

    goto :goto_6c

    :sswitch_60
    const-string/jumbo v8, "reason"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x4

    goto :goto_6c

    :goto_6b
    const/4 v8, -0x1

    :goto_6c
    packed-switch v8, :pswitch_data_14e

    .line 902
    nop

    .line 903
    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTimeAttrToType(Ljava/lang/String;)I

    move-result v8

    goto :goto_90

    .line 899
    :pswitch_75
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v13, v8

    .line 900
    goto :goto_96

    .line 896
    :pswitch_7b
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 897
    goto :goto_96

    .line 893
    :pswitch_82
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v14, v8

    .line 894
    goto :goto_96

    .line 890
    :pswitch_88
    move-object v15, v9

    .line 891
    goto :goto_96

    .line 887
    :pswitch_8a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 888
    goto :goto_96

    .line 904
    .local v8, "type":I
    :goto_90
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aput-wide v16, v3, v8
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_96} :catch_97

    .line 908
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "attrValue":Ljava/lang/String;
    :goto_96
    goto :goto_98

    .line 907
    :catch_97
    move-exception v0

    .line 881
    :goto_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 910
    .end local v7    # "i":I
    :cond_9b
    if-eqz v4, :cond_132

    .line 917
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 918
    :try_start_a4
    invoke-virtual {v1, v4, v15}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_129

    move-object v12, v0

    .line 919
    .local v12, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v12, :cond_b4

    .line 920
    :try_start_ab
    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ad

    return-void

    .line 932
    .end local v12    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_ad
    move-exception v0

    move-wide v5, v10

    move v9, v13

    move v10, v14

    move-object v11, v15

    goto/16 :goto_12e

    .line 922
    .restart local v12    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_b4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b5
    :try_start_b5
    array-length v9, v3
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_129

    if-ge v0, v9, :cond_d0

    .line 923
    :try_start_b8
    invoke-virtual {v12, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v16

    cmp-long v9, v16, v5

    if-nez v9, :cond_cb

    aget-wide v16, v3, v0

    cmp-long v9, v16, v5

    if-eqz v9, :cond_cb

    .line 924
    aget-wide v5, v3, v0

    invoke-virtual {v12, v0, v5, v6, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V
    :try_end_cb
    .catchall {:try_start_b8 .. :try_end_cb} :catchall_ad

    .line 922
    :cond_cb
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v5, 0x0

    goto :goto_b5

    .line 927
    .end local v0    # "i":I
    :cond_d0
    :try_start_d0
    invoke-static {v12}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v0
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_129

    if-lt v0, v14, :cond_d8

    .line 930
    :try_start_d6
    monitor-exit v7
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_ad

    return-void

    .line 932
    :cond_d8
    :try_start_d8
    monitor-exit v7
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_129

    .line 933
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v7

    .line 934
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v0, 0x0

    .line 933
    move-object v8, v15

    move-wide v5, v10

    .end local v10    # "levelTs":J
    .local v5, "levelTs":J
    move-wide/from16 v10, p2

    move-object v2, v12

    .end local v12    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .local v2, "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    move v12, v0

    invoke-interface/range {v7 .. v12}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v8

    .line 935
    .local v8, "curBucket":I
    const v0, 0xff00

    if-eqz p5, :cond_111

    .line 936
    iget-object v12, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v12}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-result-object v16

    const/16 v18, 0x1

    and-int v19, v13, v0

    and-int/lit16 v0, v13, 0xff

    move v9, v13

    .end local v13    # "reason":I
    .local v9, "reason":I
    move-object v13, v15

    move v10, v14

    .end local v14    # "curLevel":I
    .local v10, "curLevel":I
    move v14, v4

    move-object v11, v15

    .end local v15    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    move v15, v10

    move/from16 v17, v8

    move/from16 v20, v0

    invoke-static/range {v12 .. v20}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mapplyRestrictionLevel(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_11a

    .line 939
    .end local v9    # "reason":I
    .end local v10    # "curLevel":I
    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "reason":I
    .restart local v14    # "curLevel":I
    .restart local v15    # "packageName":Ljava/lang/String;
    :cond_111
    move v9, v13

    move v10, v14

    move-object v11, v15

    .end local v13    # "reason":I
    .end local v14    # "curLevel":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v9    # "reason":I
    .restart local v10    # "curLevel":I
    .restart local v11    # "packageName":Ljava/lang/String;
    and-int/2addr v0, v9

    and-int/lit16 v7, v9, 0xff

    invoke-virtual {v2, v10, v0, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 942
    :goto_11a
    iget-object v0, v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 944
    :try_start_121
    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLevelChangeTime(J)V

    .line 945
    monitor-exit v12

    goto :goto_136

    :catchall_126
    move-exception v0

    monitor-exit v12
    :try_end_128
    .catchall {:try_start_121 .. :try_end_128} :catchall_126

    throw v0

    .line 932
    .end local v2    # "pkgSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v5    # "levelTs":J
    .end local v8    # "curBucket":I
    .end local v9    # "reason":I
    .end local v11    # "packageName":Ljava/lang/String;
    .local v10, "levelTs":J
    .restart local v13    # "reason":I
    .restart local v14    # "curLevel":I
    .restart local v15    # "packageName":Ljava/lang/String;
    :catchall_129
    move-exception v0

    move-wide v5, v10

    move v9, v13

    move v10, v14

    move-object v11, v15

    .end local v13    # "reason":I
    .end local v14    # "curLevel":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v5    # "levelTs":J
    .restart local v9    # "reason":I
    .local v10, "curLevel":I
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_12e
    :try_start_12e
    monitor-exit v7
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_130

    throw v0

    :catchall_130
    move-exception v0

    goto :goto_12e

    .line 910
    .end local v5    # "levelTs":J
    .end local v9    # "reason":I
    .end local v11    # "packageName":Ljava/lang/String;
    .local v10, "levelTs":J
    .restart local v13    # "reason":I
    .restart local v14    # "curLevel":I
    .restart local v15    # "packageName":Ljava/lang/String;
    :cond_132
    move-wide v5, v10

    move v9, v13

    move v10, v14

    move-object v11, v15

    .line 947
    .end local v13    # "reason":I
    .end local v14    # "curLevel":I
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v5    # "levelTs":J
    .restart local v9    # "reason":I
    .local v10, "curLevel":I
    .restart local v11    # "packageName":Ljava/lang/String;
    :goto_136
    return-void

    nop

    :sswitch_data_138
    .sparse-switch
        -0x37ba6dbc -> :sswitch_60
        -0x301acbba -> :sswitch_55
        0x1c450 -> :sswitch_4b
        0x428d903 -> :sswitch_40
        0x21f78144 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_88
        :pswitch_82
        :pswitch_7b
        :pswitch_75
    .end packed-switch
.end method

.method private toXmlByteArray(I)[B
    .registers 15
    .param p1, "userId"    # I

    .line 976
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_ac

    .line 977
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 979
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 981
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v4}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_a2

    .line 982
    :try_start_19
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_20
    if-ltz v5, :cond_90

    .line 983
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "j":I
    :goto_29
    if-ltz v6, :cond_8d

    .line 984
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 985
    .local v7, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getUid()I

    move-result v8

    .line 986
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v9, p1, :cond_3e

    .line 987
    goto :goto_8a

    .line 989
    :cond_3e
    const-string/jumbo v9, "settings"

    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    const-string/jumbo v9, "uid"

    invoke-interface {v2, v0, v9, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    const-string/jumbo v9, "package"

    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v0, v9, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    const-string v9, "curlevel"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v10

    invoke-interface {v2, v0, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    const-string/jumbo v9, "levelts"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J

    move-result-wide v10

    invoke-interface {v2, v0, v9, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 996
    const-string/jumbo v9, "reason"

    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v10

    invoke-interface {v2, v0, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_72
    const/4 v10, 0x2

    if-ge v9, v10, :cond_84

    .line 998
    nop

    .line 999
    invoke-static {v9}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToTimeAttr(I)Ljava/lang/String;

    move-result-object v10

    .line 1000
    invoke-virtual {v7, v9}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v11

    .line 998
    invoke-interface {v2, v0, v10, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 1002
    .end local v9    # "k":I
    :cond_84
    const-string/jumbo v9, "settings"

    invoke-interface {v2, v0, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    .end local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v8    # "uid":I
    :goto_8a
    add-int/lit8 v6, v6, -0x1

    goto :goto_29

    .line 982
    .end local v6    # "j":I
    :cond_8d
    add-int/lit8 v5, v5, -0x1

    goto :goto_20

    .line 1005
    .end local v5    # "i":I
    :cond_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_19 .. :try_end_91} :catchall_9f

    .line 1007
    :try_start_91
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1008
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 1010
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_a2

    .line 1011
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_ac

    .line 1010
    return-object v3

    .line 1005
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    :try_start_a1
    throw v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    .line 976
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    :catchall_a2
    move-exception v2

    :try_start_a3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v3

    :try_start_a8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    :goto_ab
    throw v2
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac

    .line 1011
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    :catch_ac
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 10

    .line 1026
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 1027
    .local v0, "newObj":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1028
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_49

    .line 1029
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_20
    if-ltz v3, :cond_46

    .line 1030
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1031
    .local v4, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1032
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1031
    invoke-virtual {v5, v6, v7, v8}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1029
    .end local v4    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 1028
    .end local v3    # "j":I
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1035
    .end local v2    # "i":I
    :cond_49
    monitor-exit v1

    .line 1036
    return-object v0

    .line 1035
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v0, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 800
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 801
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_54

    .line 802
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 804
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_32
    if-ge v3, v4, :cond_53

    .line 805
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    const/16 v5, 0x23

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 807
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 808
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 809
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-virtual {v5, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->dump(Ljava/io/PrintWriter;J)V

    .line 810
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 804
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 812
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_53
    return-void

    .line 801
    .end local v1    # "now":J
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 1041
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1042
    return v0

    .line 1044
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6f

    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    if-nez v2, :cond_c

    goto :goto_6f

    .line 1047
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1049
    .local v2, "otherSettings":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1050
    :try_start_18
    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    if-eq v4, v5, :cond_26

    .line 1051
    monitor-exit v3

    return v1

    .line 1053
    :cond_26
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_2d
    if-ltz v4, :cond_6a

    .line 1054
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    .line 1055
    .local v5, "uid":I
    invoke-virtual {v2, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1056
    invoke-virtual {v7, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v7

    if-eq v6, v7, :cond_43

    .line 1057
    monitor-exit v3

    return v1

    .line 1059
    :cond_43
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "j":I
    :goto_4a
    if-ltz v6, :cond_67

    .line 1060
    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1061
    .local v7, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    invoke-virtual {v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 1062
    monitor-exit v3

    return v1

    .line 1059
    .end local v7    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_64
    add-int/lit8 v6, v6, -0x1

    goto :goto_4a

    .line 1053
    .end local v5    # "uid":I
    .end local v6    # "j":I
    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_2d

    .line 1066
    .end local v4    # "i":I
    :cond_6a
    monitor-exit v3

    .line 1067
    return v0

    .line 1066
    :catchall_6c
    move-exception v0

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_18 .. :try_end_6e} :catchall_6c

    throw v0

    .line 1045
    .end local v2    # "otherSettings":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;>;"
    :cond_6f
    :goto_6f
    return v1
.end method

.method forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V
    .registers 10
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 705
    .local p2, "consumer":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    .line 706
    .local v0, "uidKeyIndex":I
    if-gez v0, :cond_9

    .line 707
    return-void

    .line 709
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v1

    .line 710
    .local v1, "numPackages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_38

    .line 711
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 712
    .local v3, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 713
    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 712
    invoke-interface {p2, v4, v5, v6}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .end local v3    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 715
    .end local v2    # "i":I
    :cond_38
    return-void
.end method

.method forEachUidLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 719
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 720
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 722
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method getReason(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 651
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 652
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 653
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v2

    goto :goto_18

    .line 654
    :cond_16
    const/16 v2, 0x100

    :goto_18
    monitor-exit v0

    .line 653
    return v2

    .line 655
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getRestrictionLevel(I)I
    .registers 10
    .param p1, "uid"    # I

    .line 659
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 660
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 661
    .local v1, "uidKeyIndex":I
    const/4 v2, 0x0

    if-gez v1, :cond_12

    .line 662
    monitor-exit v0

    return v2

    .line 664
    :cond_12
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    .line 665
    .local v3, "numPackages":I
    if-nez v3, :cond_1c

    .line 666
    monitor-exit v0

    return v2

    .line 668
    :cond_1c
    const/4 v2, 0x0

    .line 669
    .local v2, "level":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_3a

    .line 670
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 671
    .local v5, "setting":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-eqz v5, :cond_37

    .line 672
    invoke-virtual {v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v6

    .line 673
    .local v6, "l":I
    if-nez v2, :cond_32

    move v7, v6

    goto :goto_36

    :cond_32
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_36
    move v2, v7

    .line 669
    .end local v5    # "setting":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .end local v6    # "l":I
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 676
    .end local v4    # "i":I
    :cond_3a
    monitor-exit v0

    return v2

    .line 677
    .end local v1    # "uidKeyIndex":I
    .end local v2    # "level":I
    .end local v3    # "numPackages":I
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method getRestrictionLevel(ILjava/lang/String;)I
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 682
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 683
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_12

    .line 684
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v2

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v2

    :goto_16
    monitor-exit v0

    .line 683
    return v2

    .line 685
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method getRestrictionLevel(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 689
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 690
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    const-wide/32 v1, 0xc8000

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 691
    .local v1, "uid":I
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    return-object v0
.end method

.method getXmlFileNameForUser(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 827
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "apprestriction"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 829
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "settings.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method loadFromXml(IZ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "applyLevel"    # Z

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v0

    .line 843
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 844
    return-void

    .line 846
    :cond_b
    const/4 v1, 0x2

    new-array v8, v1, [J

    .line 847
    .local v8, "ts":[J
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_13} :catch_63

    move-object v9, v2

    .line 848
    .local v9, "in":Ljava/io/InputStream;
    :try_start_14
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 849
    .local v3, "parser":Landroid/util/TypedXmlPullParser;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 851
    .local v4, "now":J
    :goto_1c
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v10, v2

    .local v10, "type":I
    const/4 v6, 0x1

    if-eq v2, v6, :cond_55

    .line 852
    if-eq v10, v1, :cond_27

    .line 853
    goto :goto_1c

    .line 855
    :cond_27
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 856
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 857
    const-string v2, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected tag name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    goto :goto_1c

    .line 860
    :cond_4e
    move-object v2, p0

    move-object v6, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadOneFromXml(Landroid/util/TypedXmlPullParser;J[JZ)V
    :try_end_54
    .catchall {:try_start_14 .. :try_end_54} :catchall_59

    .line 861
    .end local v11    # "tagName":Ljava/lang/String;
    goto :goto_1c

    .line 865
    .end local v3    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "now":J
    .end local v10    # "type":I
    :cond_55
    :try_start_55
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_63

    .line 866
    .end local v9    # "in":Ljava/io/InputStream;
    goto :goto_64

    .line 847
    .restart local v9    # "in":Ljava/io/InputStream;
    :catchall_59
    move-exception v1

    :try_start_5a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v2

    :try_start_5f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v8    # "ts":[J
    .end local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .end local p1    # "userId":I
    .end local p2    # "applyLevel":Z
    :goto_62
    throw v1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_63} :catch_63

    .line 865
    .end local v9    # "in":Ljava/io/InputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v8    # "ts":[J
    .restart local p0    # "this":Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .restart local p1    # "userId":I
    .restart local p2    # "applyLevel":Z
    :catch_63
    move-exception v1

    .line 867
    :goto_64
    return-void
.end method

.method loadFromXml(Z)V
    .registers 6
    .param p1, "applyLevel"    # Z

    .line 834
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 835
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    aget v3, v0, v2

    .line 836
    .local v3, "userId":I
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(IZ)V

    .line 835
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 838
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 839
    return-void
.end method

.method persistToXml(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 951
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v0

    .line 952
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 953
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "ActivityManager"

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create folder for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 957
    :cond_2d
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 958
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 960
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_33
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 961
    invoke-direct {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->toXmlByteArray(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_44

    .line 968
    nop

    .line 969
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 973
    return-void

    .line 962
    :catch_44
    move-exception v5

    .line 963
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    if-eqz v4, :cond_60

    .line 965
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 967
    :cond_60
    return-void
.end method

.method removePackage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 742
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;IZ)V

    .line 743
    return-void
.end method

.method removePackage(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "persist"    # Z

    .line 746
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 747
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 748
    .local v1, "keyIndex":I
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    if-ltz v1, :cond_21

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 750
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 752
    .end local v1    # "keyIndex":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_38

    .line 753
    if-eqz p3, :cond_37

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 754
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 756
    :cond_37
    return-void

    .line 752
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method removeUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 759
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(IZ)V

    .line 760
    return-void
.end method

.method removeUid(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "persist"    # Z

    .line 763
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 764
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 765
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_23

    .line 766
    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 767
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 769
    :cond_22
    return-void

    .line 765
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 730
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 731
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_26

    .line 732
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 733
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p1, :cond_1e

    .line 734
    goto :goto_23

    .line 736
    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 731
    .end local v2    # "uid":I
    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 738
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method removeXml()V
    .registers 6

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1019
    .local v0, "allUsers":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget v3, v0, v2

    .line 1020
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1019
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1022
    :cond_1e
    return-void
.end method

.method reset()V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 774
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_19

    .line 775
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 774
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 777
    .end local v1    # "i":I
    :cond_19
    monitor-exit v0

    .line 778
    return-void

    .line 777
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method resetToDefault()V
    .registers 4

    .line 782
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 783
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 794
    monitor-exit v0

    .line 795
    return-void

    .line 794
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method scheduleLoadFromXml()V
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController$BgHandler;->sendEmptyMessage(I)Z

    .line 823
    return-void
.end method

.method schedulePersistToXml(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 816
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 818
    return-void
.end method

.method update(Ljava/lang/String;IIII)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "level"    # I
    .param p4, "reason"    # I
    .param p5, "subReason"    # I

    .line 637
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 638
    :try_start_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    .line 639
    .local v1, "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    if-nez v1, :cond_18

    .line 640
    new-instance v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    move-object v1, v2

    .line 641
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 643
    :cond_18
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    move-result v2

    monitor-exit v0

    return v2

    .line 644
    .end local v1    # "settings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
