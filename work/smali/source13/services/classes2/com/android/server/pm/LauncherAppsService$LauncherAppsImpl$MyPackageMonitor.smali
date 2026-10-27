.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 1607
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1647
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1648
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1650
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5f

    .line 1651
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1652
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1653
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageModified"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1654
    goto :goto_51

    .line 1656
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v5
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_54

    if-nez v5, :cond_45

    .line 1657
    goto :goto_51

    .line 1660
    :cond_45
    :try_start_45
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_54

    .line 1663
    goto :goto_51

    .line 1661
    :catch_49
    move-exception v5

    .line 1662
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_4a
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_54

    .line 1650
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1666
    .end local v2    # "i":I
    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1667
    throw v2

    .line 1666
    :cond_5f
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1667
    nop

    .line 1668
    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1815
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string v14, "LauncherAppsService"

    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v13

    .line 1817
    .local v13, "n":I
    :try_start_10
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_14} :catch_100
    .catchall {:try_start_10 .. :try_end_14} :catchall_fc

    move-object v12, v0

    .line 1819
    .local v12, "user":Landroid/os/UserHandle;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_17
    if-ge v11, v13, :cond_eb

    .line 1820
    :try_start_19
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    move-object v10, v0

    .line 1821
    .local v10, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    move-object v9, v0

    .line 1822
    .local v9, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v2, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v3, "onShortcutChanged"

    invoke-static {v0, v2, v12, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1823
    move/from16 v16, v11

    move-object v3, v12

    move/from16 v17, v13

    move-object v1, v14

    goto/16 :goto_cc

    .line 1825
    :cond_48
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0, v15, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1826
    move/from16 v16, v11

    move-object v3, v12

    move/from16 v17, v13

    move-object v1, v14

    goto/16 :goto_cc

    .line 1828
    :cond_58
    iget-object v0, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v8, v0

    .line 1831
    .local v8, "launcherUserId":I
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v3, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_78

    .line 1834
    move/from16 v16, v11

    move-object v3, v12

    move/from16 v17, v13

    move-object v1, v14

    goto :goto_cc

    .line 1840
    :cond_78
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v2

    iget-object v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x41f

    iget v7, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v3, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_8d} :catch_e5
    .catchall {:try_start_19 .. :try_end_8d} :catchall_df

    .line 1841
    move/from16 v19, v3

    move v3, v8

    move/from16 v20, v7

    move-object/from16 v7, p1

    move/from16 v21, v8

    .end local v8    # "launcherUserId":I
    .local v21, "launcherUserId":I
    move-object v8, v0

    move-object/from16 v22, v9

    .end local v9    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .local v22, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    move-object/from16 v9, v16

    move-object/from16 v23, v10

    .end local v10    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .local v23, "listener":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v10, v17

    move/from16 v16, v11

    .end local v11    # "i":I
    .local v16, "i":I
    move/from16 v11, v18

    move-object/from16 v24, v12

    .end local v12    # "user":Landroid/os/UserHandle;
    .local v24, "user":Landroid/os/UserHandle;
    move/from16 v12, p2

    move/from16 v17, v13

    .end local v13    # "n":I
    .local v17, "n":I
    move/from16 v13, v20

    move-object v1, v14

    move/from16 v14, v19

    :try_start_ae
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_ae .. :try_end_b2} :catch_da
    .catchall {:try_start_ae .. :try_end_b2} :catchall_d6

    move-object v2, v0

    .line 1849
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_b3
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_b8} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_b3 .. :try_end_b8} :catch_da
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_d6

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    .end local v23    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v24    # "user":Landroid/os/UserHandle;
    .local v3, "user":Landroid/os/UserHandle;
    .local v4, "listener":Landroid/content/pm/IOnAppsChangedListener;
    :try_start_bc
    invoke-interface {v4, v3, v15, v0}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_bf} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_bc .. :try_end_bf} :catch_da
    .catchall {:try_start_bc .. :try_end_bf} :catchall_d6

    .line 1853
    goto :goto_cc

    .line 1851
    :catch_c0
    move-exception v0

    goto :goto_c7

    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v4    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v23    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v24    # "user":Landroid/os/UserHandle;
    :catch_c2
    move-exception v0

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    .line 1852
    .end local v23    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v24    # "user":Landroid/os/UserHandle;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v3    # "user":Landroid/os/UserHandle;
    .restart local v4    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    :goto_c7
    :try_start_c7
    const-string v5, "Callback failed "

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catch Ljava/lang/RuntimeException; {:try_start_c7 .. :try_end_cc} :catch_da
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_d6

    .line 1819
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v21    # "launcherUserId":I
    .end local v22    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    :goto_cc
    add-int/lit8 v11, v16, 0x1

    move-object v14, v1

    move-object v12, v3

    move/from16 v13, v17

    move-object/from16 v1, p0

    .end local v16    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_17

    .line 1860
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v11    # "i":I
    :catchall_d6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_10f

    .line 1856
    :catch_da
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, p0

    goto :goto_104

    .line 1860
    .end local v17    # "n":I
    .restart local v13    # "n":I
    :catchall_df
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v1, p0

    goto :goto_ff

    .line 1856
    :catch_e5
    move-exception v0

    move/from16 v17, v13

    move-object/from16 v1, p0

    goto :goto_103

    .line 1819
    .restart local v11    # "i":I
    .restart local v12    # "user":Landroid/os/UserHandle;
    :cond_eb
    move/from16 v16, v11

    move-object v3, v12

    move/from16 v17, v13

    .line 1860
    .end local v11    # "i":I
    .end local v12    # "user":Landroid/os/UserHandle;
    .end local v13    # "n":I
    .restart local v17    # "n":I
    move-object/from16 v1, p0

    :goto_f2
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1861
    goto :goto_10d

    .line 1860
    .end local v17    # "n":I
    .restart local v13    # "n":I
    :catchall_fc
    move-exception v0

    move/from16 v17, v13

    .end local v13    # "n":I
    .restart local v17    # "n":I
    :goto_ff
    goto :goto_10f

    .line 1856
    .end local v17    # "n":I
    .restart local v13    # "n":I
    :catch_100
    move-exception v0

    move/from16 v17, v13

    :goto_103
    move-object v2, v14

    .line 1858
    .end local v13    # "n":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v17    # "n":I
    :goto_104
    :try_start_104
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_10e

    .line 1860
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_f2

    .line 1862
    :goto_10d
    return-void

    .line 1860
    :catchall_10e
    move-exception v0

    :goto_10f
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1861
    throw v0
.end method


# virtual methods
.method synthetic lambda$onShortcutChanged$0$com-android-server-pm-LauncherAppsService$LauncherAppsImpl$MyPackageMonitor(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1810
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1613
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1614
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1616
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_5f

    .line 1617
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1618
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1619
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageAdded"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1620
    goto :goto_51

    .line 1622
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v5
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_54

    if-nez v5, :cond_45

    .line 1623
    goto :goto_51

    .line 1626
    :cond_45
    :try_start_45
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_54

    .line 1629
    goto :goto_51

    .line 1627
    :catch_49
    move-exception v5

    .line 1628
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_4a
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_54

    .line 1616
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1632
    .end local v2    # "i":I
    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1633
    throw v2

    .line 1632
    :cond_5f
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1633
    nop

    .line 1634
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 1635
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;

    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {v3, v4, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1637
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1635
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManagerInternal;->registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z

    .line 1638
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1642
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 1643
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 1644
    return-void
.end method

.method public onPackageStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1866
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;)V

    .line 1867
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageStateChanged(Ljava/lang/String;I)V

    .line 1868
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1672
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1673
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1675
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_67

    .line 1676
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1677
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1678
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesAvailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1679
    goto :goto_59

    .line 1681
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;

    move-result-object v5

    .line 1683
    .local v5, "filteredPackages":[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_5c

    if-eqz v6, :cond_49

    .line 1684
    goto :goto_59

    .line 1687
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v3, v0, v5, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_5c

    .line 1690
    goto :goto_59

    .line 1688
    :catch_51
    move-exception v6

    .line 1689
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_52
    const-string v7, "LauncherAppsService"

    const-string v8, "Callback failed "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5c

    .line 1675
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "filteredPackages":[Ljava/lang/String;
    .end local v6    # "re":Landroid/os/RemoteException;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1693
    .end local v2    # "i":I
    :catchall_5c
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1694
    throw v2

    .line 1693
    :cond_67
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1694
    nop

    .line 1696
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 1697
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 16
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1730
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1731
    .local v0, "user":Landroid/os/UserHandle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1732
    .local v1, "packagesWithExtras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    .local v2, "packagesWithoutExtras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_39

    aget-object v6, p1, v5

    .line 1734
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    .line 1736
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1735
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v7

    .line 1737
    .local v7, "launcherExtras":Landroid/os/Bundle;
    if-eqz v7, :cond_33

    .line 1738
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1740
    :cond_33
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "launcherExtras":Landroid/os/Bundle;
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1743
    :cond_39
    nop

    .line 1744
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 1743
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1745
    .local v3, "packagesNullExtras":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v5

    .line 1747
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51
    if-ge v6, v5, :cond_cd

    .line 1748
    :try_start_53
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/pm/IOnAppsChangedListener;

    .line 1749
    .local v7, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v8, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1750
    .local v8, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v10, v8, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v11, "onPackagesSuspended"

    invoke-static {v9, v10, v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 1751
    goto :goto_bf

    .line 1753
    :cond_79
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 1754
    invoke-static {v9, v3, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;

    move-result-object v9
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_c2

    .line 1756
    .local v9, "filteredPackagesWithoutExtras":[Ljava/lang/String;
    :try_start_7f
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 1757
    const/4 v10, 0x0

    invoke-interface {v7, v0, v9, v10}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1760
    :cond_89
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_b6

    .line 1761
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 1762
    .local v11, "packageExtraPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v12, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v12, v13, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v12

    if-nez v12, :cond_a3

    .line 1763
    goto :goto_b3

    .line 1765
    :cond_a3
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    aput-object v13, v12, v4

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    invoke-interface {v7, v0, v12, v13}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_b3} :catch_b7
    .catchall {:try_start_7f .. :try_end_b3} :catchall_c2

    .line 1760
    .end local v11    # "packageExtraPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :goto_b3
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    .line 1771
    .end local v10    # "idx":I
    :cond_b6
    goto :goto_bf

    .line 1769
    :catch_b7
    move-exception v10

    .line 1770
    .local v10, "re":Landroid/os/RemoteException;
    :try_start_b8
    const-string v11, "LauncherAppsService"

    const-string v12, "Callback failed "

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_c2

    .line 1747
    .end local v7    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v8    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v9    # "filteredPackagesWithoutExtras":[Ljava/lang/String;
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_bf
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 1774
    .end local v6    # "i":I
    :catchall_c2
    move-exception v4

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1775
    throw v4

    .line 1774
    :cond_cd
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1775
    nop

    .line 1776
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1701
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1702
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1704
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_67

    .line 1705
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1706
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1707
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnavailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1708
    goto :goto_59

    .line 1710
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;

    move-result-object v5

    .line 1712
    .local v5, "filteredPackages":[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_5c

    if-eqz v6, :cond_49

    .line 1713
    goto :goto_59

    .line 1716
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v3, v0, v5, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_5c

    .line 1719
    goto :goto_59

    .line 1717
    :catch_51
    move-exception v6

    .line 1718
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_52
    const-string v7, "LauncherAppsService"

    const-string v8, "Callback failed "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5c

    .line 1704
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "filteredPackages":[Ljava/lang/String;
    .end local v6    # "re":Landroid/os/RemoteException;
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1722
    .end local v2    # "i":I
    :catchall_5c
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1723
    throw v2

    .line 1722
    :cond_67
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1723
    nop

    .line 1725
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 1726
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 11
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1780
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1781
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1783
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_63

    .line 1784
    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1785
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1786
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnsuspended"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1787
    goto :goto_55

    .line 1789
    :cond_3c
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5, p1, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;

    move-result-object v5

    .line 1791
    .local v5, "filteredPackages":[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_58

    if-eqz v6, :cond_49

    .line 1792
    goto :goto_55

    .line 1795
    :cond_49
    :try_start_49
    invoke-interface {v3, v0, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_58

    .line 1798
    goto :goto_55

    .line 1796
    :catch_4d
    move-exception v6

    .line 1797
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_4e
    const-string v7, "LauncherAppsService"

    const-string v8, "Callback failed "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_58

    .line 1783
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "filteredPackages":[Ljava/lang/String;
    .end local v6    # "re":Landroid/os/RemoteException;
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1801
    .end local v2    # "i":I
    :catchall_58
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1802
    throw v2

    .line 1801
    :cond_63
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1802
    nop

    .line 1804
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1810
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 1811
    return-void
.end method
