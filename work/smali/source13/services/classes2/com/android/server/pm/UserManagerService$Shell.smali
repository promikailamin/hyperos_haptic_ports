.class final Lcom/android/server/pm/UserManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 5589
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method

.method private runList()I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5633
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5634
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 5635
    .local v0, "all":Z
    const/4 v3, 0x0

    move v4, v3

    move v3, v0

    .line 5637
    .end local v0    # "all":Z
    .local v3, "all":Z
    .local v4, "verbose":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "opt":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_5b

    .line 5638
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_1ac

    :cond_1b
    goto :goto_3a

    :sswitch_1c
    const-string v0, "--verbose"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v6, v8

    goto :goto_3b

    :sswitch_26
    const-string v0, "--all"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v6, 0x2

    goto :goto_3b

    :sswitch_30
    const-string v0, "-v"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v6, v7

    goto :goto_3b

    :goto_3a
    move v6, v9

    :goto_3b
    packed-switch v6, :pswitch_data_1ba

    .line 5647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid option: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5648
    return v9

    .line 5644
    :pswitch_55
    const/4 v0, 0x1

    .line 5645
    .end local v3    # "all":Z
    .restart local v0    # "all":Z
    move v3, v0

    goto :goto_5a

    .line 5641
    .end local v0    # "all":Z
    .restart local v3    # "all":Z
    :pswitch_58
    const/4 v0, 0x1

    .line 5642
    .end local v4    # "verbose":Z
    .local v0, "verbose":Z
    move v4, v0

    .line 5648
    .end local v0    # "verbose":Z
    .restart local v4    # "verbose":Z
    :goto_5a
    goto :goto_a

    .line 5651
    :cond_5b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 5652
    .local v9, "am":Landroid/app/IActivityManager;
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    xor-int/lit8 v10, v3, 0x1

    xor-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v10, v7, v11}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v10

    .line 5654
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v10, :cond_71

    .line 5655
    const-string v0, "Error: couldn\'t get users"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5656
    return v8

    .line 5658
    :cond_71
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 5659
    .local v11, "size":I
    const/16 v0, -0x2710

    .line 5660
    .local v0, "currentUser":I
    if-eqz v4, :cond_8e

    .line 5661
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "%d users:\n\n"

    invoke-virtual {v2, v13, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 5662
    invoke-interface {v9}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move v12, v0

    goto :goto_94

    .line 5667
    :cond_8e
    const-string v12, "Users:"

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v12, v0

    .line 5669
    .end local v0    # "currentUser":I
    .local v12, "currentUser":I
    :goto_94
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_96
    if-ge v13, v11, :cond_1a9

    .line 5670
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/UserInfo;

    .line 5671
    .local v14, "user":Landroid/content/pm/UserInfo;
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v9, v0, v7}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v15

    .line 5672
    .local v15, "running":Z
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v12, :cond_ab

    move v0, v8

    goto :goto_ac

    :cond_ab
    move v0, v7

    :goto_ac
    move/from16 v16, v0

    .line 5673
    .local v16, "current":Z
    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_bc

    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v0, v6, :cond_bc

    move v0, v8

    goto :goto_bd

    :cond_bc
    move v0, v7

    :goto_bd
    move v6, v0

    .line 5675
    .local v6, "hasParent":Z
    const-string v0, ""

    if-eqz v4, :cond_18b

    .line 5676
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetDevicePolicyManagerInternal(Lcom/android/server/pm/UserManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v8

    .line 5677
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManagerInternal;
    const-string v19, ""

    .line 5678
    .local v19, "deviceOwner":Ljava/lang/String;
    const-string v20, ""

    .line 5679
    .local v20, "profileOwner":Ljava/lang/String;
    if-eqz v8, :cond_f3

    .line 5680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5683
    .local v21, "ident":J
    :try_start_d2
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v7

    iget v1, v14, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v1, :cond_de

    .line 5684
    const-string v1, " (device-owner)"

    move-object/from16 v19, v1

    .line 5686
    :cond_de
    iget v1, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_ea

    .line 5687
    const-string v1, " (profile-owner)"
    :try_end_e8
    .catchall {:try_start_d2 .. :try_end_e8} :catchall_ee

    move-object/from16 v20, v1

    .line 5690
    :cond_ea
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5691
    goto :goto_f3

    .line 5690
    :catchall_ee
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5691
    throw v0

    .line 5693
    .end local v21    # "ident":J
    :cond_f3
    :goto_f3
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    .line 5694
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v21, 0x0

    aput-object v7, v1, v21

    iget v7, v14, Landroid/content/pm/UserInfo;->id:I

    .line 5695
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0x1

    aput-object v7, v1, v18

    iget-object v7, v14, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v7, v1, v17

    iget-object v7, v14, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 5697
    move/from16 v22, v3

    .end local v3    # "all":Z
    .local v22, "all":Z
    const-string v3, "android.os.usertype."

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v1, v7

    const/4 v3, 0x4

    iget v7, v14, Landroid/content/pm/UserInfo;->flags:I

    .line 5698
    invoke-static {v7}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 5699
    if-eqz v6, :cond_143

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (parentId="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_144

    :cond_143
    move-object v3, v0

    :goto_144
    const/4 v7, 0x5

    aput-object v3, v1, v7

    const/4 v3, 0x6

    .line 5700
    if-eqz v15, :cond_14d

    const-string v7, " (running)"

    goto :goto_14e

    :cond_14d
    move-object v7, v0

    :goto_14e
    aput-object v7, v1, v3

    const/4 v3, 0x7

    .line 5701
    iget-boolean v7, v14, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_158

    const-string v7, " (partial)"

    goto :goto_159

    :cond_158
    move-object v7, v0

    :goto_159
    aput-object v7, v1, v3

    const/16 v3, 0x8

    .line 5702
    iget-boolean v7, v14, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v7, :cond_164

    const-string v7, " (pre-created)"

    goto :goto_165

    :cond_164
    move-object v7, v0

    :goto_165
    aput-object v7, v1, v3

    const/16 v3, 0x9

    .line 5703
    iget-boolean v7, v14, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v7, :cond_170

    const-string v7, " (converted)"

    goto :goto_171

    :cond_170
    move-object v7, v0

    :goto_171
    aput-object v7, v1, v3

    const/16 v3, 0xa

    aput-object v19, v1, v3

    const/16 v3, 0xb

    aput-object v20, v1, v3

    const/16 v3, 0xc

    .line 5705
    if-eqz v16, :cond_181

    const-string v0, " (current)"

    :cond_181
    aput-object v0, v1, v3

    .line 5693
    const-string v0, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s\n"

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 5706
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManagerInternal;
    .end local v19    # "deviceOwner":Ljava/lang/String;
    .end local v20    # "profileOwner":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v7, 0x1

    goto :goto_19f

    .line 5710
    .end local v22    # "all":Z
    .restart local v3    # "all":Z
    :cond_18b
    move/from16 v22, v3

    .end local v3    # "all":Z
    .restart local v22    # "all":Z
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v3, v7

    if-eqz v15, :cond_197

    const-string v0, " running"

    :cond_197
    const/4 v7, 0x1

    aput-object v0, v3, v7

    const-string v0, "\t%s%s\n"

    invoke-virtual {v2, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 5669
    .end local v6    # "hasParent":Z
    .end local v14    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "running":Z
    .end local v16    # "current":Z
    :goto_19f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v8, v7

    move/from16 v3, v22

    const/4 v7, 0x0

    goto/16 :goto_96

    .line 5713
    .end local v13    # "i":I
    .end local v22    # "all":Z
    .restart local v3    # "all":Z
    :cond_1a9
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_1ac
    .sparse-switch
        0x5e9 -> :sswitch_30
        0x2901001 -> :sswitch_26
        0x6789dfe2 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_58
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method private runReportPackageAllowlistProblems()I
    .registers 9

    .line 5718
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5719
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 5720
    .local v1, "verbose":Z
    const/4 v2, 0x0

    .line 5721
    .local v2, "criticalOnly":Z
    const/16 v3, -0x3e8

    .line 5723
    .local v3, "mode":I
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_69

    .line 5724
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_b8

    :cond_18
    goto :goto_40

    :sswitch_19
    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v6, 0x1

    goto :goto_41

    :sswitch_23
    const-string v4, "--mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v6, 0x3

    goto :goto_41

    :sswitch_2d
    const-string v4, "-v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_41

    :sswitch_36
    const-string v4, "--critical-only"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v6, 0x2

    goto :goto_41

    :goto_40
    move v6, v7

    :goto_41
    packed-switch v6, :pswitch_data_ca

    .line 5736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5737
    return v7

    .line 5733
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5734
    goto :goto_68

    .line 5730
    :pswitch_64
    const/4 v2, 0x1

    .line 5731
    goto :goto_68

    .line 5727
    :pswitch_66
    const/4 v1, 0x1

    .line 5728
    nop

    .line 5737
    :goto_68
    goto :goto_8

    .line 5741
    :cond_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runReportPackageAllowlistProblems(): verbose="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", criticalOnly="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5743
    invoke-static {v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5741
    const-string v7, "UserManagerService"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    new-instance v4, Landroid/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v4, v0, v7}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5746
    .local v4, "ipw":Landroid/util/IndentingPrintWriter;
    :try_start_a1
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmSystemPackageInstaller(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserSystemPackageInstaller;

    move-result-object v7

    invoke-virtual {v7, v4, v3, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_ae

    .line 5748
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V

    .line 5749
    .end local v4    # "ipw":Landroid/util/IndentingPrintWriter;
    return v6

    .line 5745
    .restart local v4    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_ae
    move-exception v6

    :try_start_af
    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b7
    throw v6

    :sswitch_data_b8
    .sparse-switch
        -0x513a2c86 -> :sswitch_36
        0x5e9 -> :sswitch_2d
        0x4f776f43 -> :sswitch_23
        0x6789dfe2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_64
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5613
    if-nez p1, :cond_7

    .line 5614
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5618
    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    :cond_f
    goto :goto_25

    :sswitch_10
    const-string/jumbo v1, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_26

    :sswitch_1b
    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_26

    :goto_25
    move v1, v0

    :goto_26
    packed-switch v1, :pswitch_data_60

    .line 5624
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto :goto_38

    .line 5622
    :pswitch_2e
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$Shell;->runReportPackageAllowlistProblems()I

    move-result v0

    return v0

    .line 5620
    :pswitch_33
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$Shell;->runList()I

    move-result v0
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_37} :catch_39

    return v0

    .line 5624
    :goto_38
    return v0

    .line 5626
    :catch_39
    move-exception v1

    .line 5627
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5629
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0

    nop

    :sswitch_data_56
    .sparse-switch
        0x32b09e -> :sswitch_1b
        0x40afebbe -> :sswitch_10
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 5593
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5594
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "User manager (user) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5595
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5596
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5597
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5598
    const-string v1, "  list [-v | --verbose] [--all]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5599
    const-string v1, "    Prints all users on the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5600
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 5601
    const-string v1, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5603
    const-string v1, "    Reports all issues on user-type package allowlist XML files. Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5604
    const-string v1, "    -v | --verbose: shows extra info, like number of issues"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5605
    const-string v1, "    --critical-only: show only critical issues, excluding warnings"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5606
    const-string v1, "    --mode MODE: shows what errors would be if device used mode MODE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5607
    const-string v1, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5609
    return-void
.end method
