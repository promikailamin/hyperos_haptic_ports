.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1708
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1711
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1712
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_b

    .line 1713
    return-void

    .line 1716
    :cond_b
    const/4 v0, 0x0

    .line 1717
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1718
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1719
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1720
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1721
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1722
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1724
    .local v20, "reason":I
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v12, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v13, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v14, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    if-nez v10, :cond_69

    .line 1725
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v4, v10

    if-nez v10, :cond_64

    .line 1726
    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 1727
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v5, v10

    if-nez v10, :cond_5f

    .line 1728
    const-string v10, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v0, v10

    if-nez v10, :cond_64

    .line 1729
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 1730
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 1731
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 1732
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24e

    goto :goto_64

    .line 1727
    :cond_5f
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_6d

    .line 1733
    :cond_64
    :goto_64
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    goto :goto_6d

    .line 1724
    :cond_69
    move/from16 v21, v5

    move v5, v4

    move v4, v0

    .line 1733
    .end local v0    # "queryRestart":Z
    .local v4, "queryRestart":Z
    .local v5, "queryRemove":Z
    .local v21, "packageChanged":Z
    :goto_6d
    const-string v0, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1735
    .local v15, "changeUserId":I
    const/16 v16, 0x0

    .line 1736
    .local v16, "pkgList":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1737
    .local v17, "uidList":[I
    const/4 v10, 0x0

    if-eqz v5, :cond_85

    .line 1738
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_85

    const/4 v0, 0x1

    goto :goto_86

    :cond_85
    move v0, v10

    :goto_86
    move/from16 v22, v0

    .line 1739
    .local v22, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v10, "NotificationService"

    if-eqz v0, :cond_b3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    .end local v5    # "queryRemove":Z
    .local v24, "queryRemove":Z
    const-string v5, "action="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " removing="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, v22

    .end local v22    # "removingPackage":Z
    .local v5, "removingPackage":Z
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .end local v24    # "queryRemove":Z
    .local v5, "queryRemove":Z
    .restart local v22    # "removingPackage":Z
    :cond_b3
    move/from16 v24, v5

    move/from16 v5, v22

    .line 1740
    .end local v22    # "removingPackage":Z
    .local v5, "removingPackage":Z
    .restart local v24    # "queryRemove":Z
    :goto_b7
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "android.intent.extra.changed_uid_list"

    move/from16 v22, v6

    .end local v6    # "cancelNotifications":Z
    .local v22, "cancelNotifications":Z
    const-string v6, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_d3

    .line 1741
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1742
    .end local v16    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    move-object/from16 v14, v17

    move/from16 v6, v22

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1bc

    .line 1743
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v16    # "pkgList":[Ljava/lang/String;
    :cond_d3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 1744
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1745
    .end local v16    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    .line 1746
    const/4 v6, 0x0

    .line 1747
    .end local v22    # "cancelNotifications":Z
    .restart local v6    # "cancelNotifications":Z
    const/4 v7, 0x1

    move-object/from16 v14, v17

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1bc

    .line 1748
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v6    # "cancelNotifications":Z
    .restart local v16    # "pkgList":[Ljava/lang/String;
    .restart local v22    # "cancelNotifications":Z
    :cond_e9
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1749
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1750
    .end local v16    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    .line 1751
    const/4 v6, 0x0

    .line 1752
    .end local v22    # "cancelNotifications":Z
    .restart local v6    # "cancelNotifications":Z
    const/4 v8, 0x1

    move-object/from16 v14, v17

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1bc

    .line 1753
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v6    # "cancelNotifications":Z
    .restart local v16    # "pkgList":[Ljava/lang/String;
    .restart local v22    # "cancelNotifications":Z
    :cond_ff
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1754
    nop

    .line 1755
    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1757
    .local v0, "distractionRestrictions":I
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_11f

    .line 1759
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1760
    .end local v16    # "pkgList":[Ljava/lang/String;
    .local v6, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    .line 1761
    .end local v17    # "uidList":[I
    .local v9, "uidList":[I
    const/4 v10, 0x0

    .line 1762
    .end local v22    # "cancelNotifications":Z
    .local v10, "cancelNotifications":Z
    const/4 v7, 0x1

    move-object v0, v6

    move-object/from16 v17, v9

    goto :goto_12c

    .line 1764
    .end local v6    # "pkgList":[Ljava/lang/String;
    .end local v9    # "uidList":[I
    .end local v10    # "cancelNotifications":Z
    .restart local v16    # "pkgList":[Ljava/lang/String;
    .restart local v17    # "uidList":[I
    .restart local v22    # "cancelNotifications":Z
    :cond_11f
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1765
    .end local v16    # "pkgList":[Ljava/lang/String;
    .restart local v6    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    .line 1766
    .end local v17    # "uidList":[I
    .restart local v9    # "uidList":[I
    const/4 v10, 0x0

    .line 1767
    .end local v22    # "cancelNotifications":Z
    .restart local v10    # "cancelNotifications":Z
    const/4 v8, 0x1

    move-object v0, v6

    move-object/from16 v17, v9

    .line 1770
    .end local v6    # "pkgList":[Ljava/lang/String;
    .end local v9    # "uidList":[I
    .local v0, "pkgList":[Ljava/lang/String;
    .restart local v17    # "uidList":[I
    :goto_12c
    move v6, v10

    move-object/from16 v14, v17

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1bc

    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v10    # "cancelNotifications":Z
    .restart local v16    # "pkgList":[Ljava/lang/String;
    .restart local v22    # "cancelNotifications":Z
    :cond_133
    const-string v6, "android.intent.extra.UID"

    if-eqz v4, :cond_160

    .line 1771
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1774
    .end local v16    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    if-eqz v0, :cond_159

    array-length v9, v0

    if-lez v9, :cond_159

    .line 1775
    array-length v9, v0

    new-array v9, v9, [I

    .line 1776
    .end local v17    # "uidList":[I
    .restart local v9    # "uidList":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_146
    array-length v11, v9

    if-ge v10, v11, :cond_153

    .line 1777
    const/4 v11, -0x1

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    aput v12, v9, v10

    .line 1776
    add-int/lit8 v10, v10, 0x1

    goto :goto_146

    :cond_153
    move-object v14, v9

    move/from16 v6, v22

    const/4 v10, 0x1

    const/4 v13, 0x0

    .end local v10    # "i":I
    goto :goto_1bc

    .line 1818
    .end local v9    # "uidList":[I
    .restart local v17    # "uidList":[I
    :cond_159
    move-object/from16 v14, v17

    move/from16 v6, v22

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_1bc

    .line 1782
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v16    # "pkgList":[Ljava/lang/String;
    :cond_160
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1783
    .local v11, "uri":Landroid/net/Uri;
    if-nez v11, :cond_167

    .line 1784
    return-void

    .line 1786
    :cond_167
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 1787
    .local v12, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_16e

    .line 1788
    return-void

    .line 1791
    :cond_16e
    invoke-static {}, Lcom/android/server/notification/NotificationManagerServiceStub;->getInstance()Lcom/android/server/notification/NotificationManagerServiceStub;

    move-result-object v0

    .line 1792
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v13}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v13

    .line 1791
    invoke-interface {v0, v9, v13, v15, v12}, Lcom/android/server/notification/NotificationManagerServiceStub;->isAllowAppNotificationListener(ZLcom/android/server/notification/NotificationManagerService$NotificationListeners;ILjava/lang/String;)V

    .line 1794
    if-eqz v21, :cond_1a7

    .line 1797
    :try_start_181
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1799
    const/4 v9, -0x1

    if-eq v15, v9, :cond_18c

    move v9, v15

    goto :goto_18d

    .line 1800
    :cond_18c
    const/4 v9, 0x0

    .line 1797
    :goto_18d
    invoke-interface {v0, v12, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_191
    .catch Ljava/lang/IllegalArgumentException; {:try_start_181 .. :try_end_191} :catch_19c
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_191} :catch_19a

    .line 1801
    .local v0, "enabled":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_196

    if-nez v0, :cond_199

    .line 1803
    :cond_196
    const/4 v9, 0x0

    move/from16 v22, v9

    .line 1813
    .end local v0    # "enabled":I
    :cond_199
    :goto_199
    goto :goto_1a7

    .line 1811
    :catch_19a
    move-exception v0

    goto :goto_1a7

    .line 1805
    :catch_19c
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v9, :cond_199

    .line 1809
    const-string v9, "Exception trying to look up app enabled setting"

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_199

    .line 1815
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1a7
    :goto_1a7
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    .line 1816
    .end local v16    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v9, v10, [I

    const/4 v14, -0x1

    invoke-virtual {v2, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v9, v13

    move-object/from16 v17, v9

    move-object/from16 v14, v17

    move/from16 v6, v22

    .line 1818
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v17    # "uidList":[I
    .end local v22    # "cancelNotifications":Z
    .local v6, "cancelNotifications":Z
    .local v14, "uidList":[I
    :goto_1bc
    if-eqz v0, :cond_23b

    array-length v9, v0

    if-lez v9, :cond_23b

    .line 1819
    if-eqz v6, :cond_219

    .line 1820
    array-length v12, v0

    move v11, v13

    :goto_1c5
    if-ge v11, v12, :cond_212

    aget-object v22, v0, v11

    .line 1821
    .local v22, "pkgName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v16

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    if-nez v4, :cond_1de

    move/from16 v25, v10

    goto :goto_1e0

    :cond_1de
    move/from16 v25, v13

    :goto_1e0
    const/16 v26, 0x0

    move/from16 v27, v10

    move/from16 v28, v13

    move/from16 v10, v16

    move/from16 v29, v11

    move/from16 v11, v17

    move/from16 v30, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v18

    move-object/from16 v31, v14

    .end local v14    # "uidList":[I
    .local v31, "uidList":[I
    move/from16 v14, v19

    move/from16 v32, v15

    .end local v15    # "changeUserId":I
    .local v32, "changeUserId":I
    move/from16 v15, v23

    move/from16 v16, v25

    move/from16 v17, v32

    move/from16 v18, v20

    move-object/from16 v19, v26

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1820
    .end local v22    # "pkgName":Ljava/lang/String;
    add-int/lit8 v11, v29, 0x1

    move/from16 v10, v27

    move/from16 v13, v28

    move/from16 v12, v30

    move-object/from16 v14, v31

    move/from16 v15, v32

    goto :goto_1c5

    .end local v31    # "uidList":[I
    .end local v32    # "changeUserId":I
    .restart local v14    # "uidList":[I
    .restart local v15    # "changeUserId":I
    :cond_212
    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v14    # "uidList":[I
    .end local v15    # "changeUserId":I
    .restart local v31    # "uidList":[I
    .restart local v32    # "changeUserId":I
    move-object/from16 v9, v31

    goto :goto_23e

    .line 1824
    .end local v31    # "uidList":[I
    .end local v32    # "changeUserId":I
    .restart local v14    # "uidList":[I
    .restart local v15    # "changeUserId":I
    :cond_219
    move-object/from16 v31, v14

    move/from16 v32, v15

    .end local v14    # "uidList":[I
    .end local v15    # "changeUserId":I
    .restart local v31    # "uidList":[I
    .restart local v32    # "changeUserId":I
    if-eqz v7, :cond_22c

    move-object/from16 v9, v31

    .end local v31    # "uidList":[I
    .restart local v9    # "uidList":[I
    if-eqz v9, :cond_22e

    array-length v10, v9

    if-lez v10, :cond_22e

    .line 1825
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v0, v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_23e

    .line 1824
    .end local v9    # "uidList":[I
    .restart local v31    # "uidList":[I
    :cond_22c
    move-object/from16 v9, v31

    .line 1826
    .end local v31    # "uidList":[I
    .restart local v9    # "uidList":[I
    :cond_22e
    if-eqz v8, :cond_23e

    if-eqz v9, :cond_23e

    array-length v10, v9

    if-lez v10, :cond_23e

    .line 1827
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v0, v9}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_23e

    .line 1818
    .end local v9    # "uidList":[I
    .end local v32    # "changeUserId":I
    .restart local v14    # "uidList":[I
    .restart local v15    # "changeUserId":I
    :cond_23b
    move-object v9, v14

    move/from16 v32, v15

    .line 1831
    .end local v14    # "uidList":[I
    .end local v15    # "changeUserId":I
    .restart local v9    # "uidList":[I
    .restart local v32    # "changeUserId":I
    :cond_23e
    :goto_23e
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    move/from16 v11, v32

    .end local v32    # "changeUserId":I
    .local v11, "changeUserId":I
    invoke-virtual {v10, v5, v11, v0, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v4

    move/from16 v5, v21

    move/from16 v4, v24

    .line 1833
    .end local v9    # "uidList":[I
    .end local v11    # "changeUserId":I
    .end local v21    # "packageChanged":Z
    .end local v24    # "queryRemove":Z
    .local v0, "queryRestart":Z
    .local v4, "queryRemove":Z
    .local v5, "packageChanged":Z
    :cond_24e
    return-void
.end method
