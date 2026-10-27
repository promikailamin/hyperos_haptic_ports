.class public Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static synthetic $r8$lambda$brKP91vTER4zoSOxWJ1OnJjU4jQ(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 617
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 8

    const-wide/32 v0, 0x4000000

    .line 944
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#commit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 945
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_89

    .line 947
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$1;->executeAllRequestsLocked(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_28
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 959
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_26

    .line 961
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_26
    move-exception p0

    goto :goto_87

    :catch_28
    move-exception p1

    .line 949
    :try_start_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_26

    .line 951
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mrestoreSettingsLocked(Lcom/android/server/om/OverlayManagerService;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_82

    .line 953
    :try_start_32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    const-string p0, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_75

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_77

    :cond_75
    const-string p1, ""

    :goto_77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_82
    move-exception p0

    .line 953
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw p0

    .line 959
    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_32 .. :try_end_88} :catchall_26

    :try_start_88
    throw p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    .line 961
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 962
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 1086
    new-instance p1, Lcom/android/server/om/DumpState;

    invoke-direct {p1}, Lcom/android/server/om/DumpState;-><init>()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 1090
    :goto_9
    array-length v4, p3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_b5

    .line 1091
    aget-object v4, p3, v2

    if-eqz v4, :cond_b5

    .line 1092
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_21

    goto/16 :goto_b5

    :cond_21
    add-int/lit8 v6, v2, 0x1

    .line 1097
    const-string v7, "-a"

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    goto/16 :goto_b2

    .line 1099
    :cond_2d
    const-string v7, "-h"

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1100
    const-string p0, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const-string p0, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    const-string p0, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string p0, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    const-string p0, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    const-string p0, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    const-string p0, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1108
    :cond_59
    const-string v7, "--user"

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 1109
    array-length v3, p3

    if-lt v6, v3, :cond_6a

    .line 1110
    const-string p0, "Error: user missing argument"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1114
    :cond_6a
    :try_start_6a
    aget-object v3, p3, v6

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_70} :catch_73

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :catch_73
    move-exception p0

    .line 1117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1120
    :cond_8d
    const-string v2, "--verbose"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1121
    invoke-virtual {p1, v5}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_b2

    .line 1123
    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b2
    move v2, v6

    goto/16 :goto_9

    .line 1126
    :cond_b5
    :goto_b5
    array-length v4, p3

    if-ge v2, v4, :cond_149

    .line 1127
    aget-object v4, p3, v2

    add-int/lit8 v2, v2, 0x1

    .line 1129
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_18e

    :goto_c6
    move v1, v0

    goto/16 :goto_13f

    :sswitch_c9
    const-string v1, "basecodepath"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    goto :goto_c6

    :cond_d2
    const/16 v1, 0x9

    goto/16 :goto_13f

    :sswitch_d6
    const-string/jumbo v1, "packagename"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    goto :goto_c6

    :cond_e0
    const/16 v1, 0x8

    goto/16 :goto_13f

    :sswitch_e4
    const-string v1, "isenabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    goto :goto_c6

    :cond_ed
    const/4 v1, 0x7

    goto :goto_13f

    :sswitch_ef
    const-string/jumbo v1, "state"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    goto :goto_c6

    :cond_f9
    const/4 v1, 0x6

    goto :goto_13f

    :sswitch_fb
    const-string v1, "category"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_104

    goto :goto_c6

    :cond_104
    const/4 v1, 0x5

    goto :goto_13f

    :sswitch_106
    const-string v1, "ismutable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    goto :goto_c6

    :cond_10f
    const/4 v1, 0x4

    goto :goto_13f

    :sswitch_111
    const-string/jumbo v1, "userid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11b

    goto :goto_c6

    :cond_11b
    const/4 v1, 0x3

    goto :goto_13f

    :sswitch_11d
    const-string/jumbo v1, "priority"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    goto :goto_c6

    :cond_127
    const/4 v1, 0x2

    goto :goto_13f

    :sswitch_129
    const-string/jumbo v1, "targetpackagename"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_133

    goto :goto_c6

    :cond_133
    move v1, v5

    goto :goto_13f

    :sswitch_135
    const-string/jumbo v5, "targetoverlayablename"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13f

    goto :goto_c6

    :cond_13f
    :goto_13f
    packed-switch v1, :pswitch_data_1b8

    .line 1143
    invoke-virtual {p1, v4}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    goto :goto_149

    .line 1140
    :pswitch_146
    invoke-virtual {p1, v4}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 1147
    :cond_149
    :goto_149
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_157

    array-length v1, p3

    if-ge v2, v1, :cond_157

    .line 1148
    aget-object p3, p3, v2

    invoke-virtual {p1, p3}, Lcom/android/server/om/DumpState;->setOverlyIdentifier(Ljava/lang/String;)V

    .line 1152
    :cond_157
    const-string p3, "dump"

    invoke-virtual {p0, p3}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    if-eq v3, v0, :cond_164

    .line 1154
    const-string p3, "dump"

    invoke-static {v3, p3}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result v3

    .line 1155
    :cond_164
    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 1156
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 1157
    :try_start_16e
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_189

    .line 1159
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    goto :goto_189

    :catchall_187
    move-exception p0

    goto :goto_18b

    .line 1161
    :cond_189
    :goto_189
    monitor-exit p3

    return-void

    :goto_18b
    monitor-exit p3
    :try_end_18c
    .catchall {:try_start_16e .. :try_end_18c} :catchall_187

    throw p0

    nop

    :sswitch_data_18e
    .sparse-switch
        -0x685a1e7c -> :sswitch_135
        -0x4a674a60 -> :sswitch_129
        -0x4577865c -> :sswitch_11d
        -0x31d4cdda -> :sswitch_111
        -0x3188d944 -> :sswitch_106
        0x302bcfe -> :sswitch_fb
        0x68ac491 -> :sswitch_ef
        0x1a483ad7 -> :sswitch_e4
        0x36391bd1 -> :sswitch_d6
        0x64f6f963 -> :sswitch_c9
    .end sparse-switch

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
        :pswitch_146
    .end packed-switch
.end method

.method public enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5

    const/4 v0, 0x1

    .line 688
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/om/OverlayManagerService$1;->setEnabled(Ljava/lang/String;ZILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V
    .registers 5

    .line 1176
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1184
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmActorEnforcer(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/om/OverlayActorEnforcer;->enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V

    return-void

    .line 1179
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to retrieve overlay information for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceDumpPermission(Ljava/lang/String;)V
    .registers 3

    .line 1171
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final executeAllRequestsLocked(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 5

    .line 1053
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1054
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 1055
    invoke-virtual {p0, v1}, Lcom/android/server/om/OverlayManagerService$1;->executeRequestLocked(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;

    move-result-object v1

    .line 1056
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    goto :goto_5

    .line 1067
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1069
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0, v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 1071
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1072
    throw p0
.end method

.method public final executeRequestLocked(Landroid/content/om/OverlayManagerTransaction$Request;)Ljava/util/Set;
    .registers 9

    .line 969
    const-string v0, "Transaction contains a null request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 970
    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    const-string v1, "Transaction overlay identifier must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 975
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2d

    if-ne v1, v2, :cond_19

    goto :goto_2d

    .line 1004
    :cond_19
    iget v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result v0

    .line 1005
    iget-object v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    goto :goto_73

    .line 977
    :cond_2d
    :goto_2d
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_128

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_10e

    .line 995
    iget-object v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_72

    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_72

    .line 996
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v5

    .line 998
    invoke-virtual {v5, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 997
    invoke-static {v5, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_72

    .line 999
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not own packageName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    :goto_72
    move v0, v4

    .line 1008
    :goto_73
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1010
    :try_start_77
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v6, 0x1

    if-eqz v1, :cond_df

    if-eq v1, v6, :cond_cc

    if-eq v1, v3, :cond_ac

    if-ne v1, v2, :cond_94

    .line 1034
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    move-result-object p0
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_92

    .line 1040
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_92
    move-exception p0

    goto :goto_10a

    .line 1037
    :cond_94
    :try_start_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unsupported request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1025
    :cond_ac
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-string v0, "fabricated_overlay"

    const-class v1, Landroid/os/FabricatedOverlayInternal;

    .line 1026
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/FabricatedOverlayInternal;

    .line 1029
    const-string/jumbo v0, "no fabricated overlay attached to request"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1031
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    move-result-object p0
    :try_end_c8
    .catchall {:try_start_94 .. :try_end_c8} :catchall_92

    .line 1040
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1021
    :cond_cc
    :try_start_cc
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object p0
    :try_end_db
    .catchall {:try_start_cc .. :try_end_db} :catchall_92

    .line 1040
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1013
    :cond_df
    :try_start_df
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    iget-object v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget-object v3, p1, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    .line 1014
    invoke-virtual {v1, v2, v6, v0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 1013
    invoke-static {v2, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 1016
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 1017
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object p0

    .line 1016
    invoke-static {v1, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    .line 1018
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0
    :try_end_106
    .catchall {:try_start_df .. :try_end_106} :catchall_92

    .line 1040
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_10a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw p0

    .line 987
    :cond_10e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    const-string v0, "202768292"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 988
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-root shell cannot fabricate overlays"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 978
    :cond_128
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unsupported for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 6

    const-wide/32 v0, 0x4000000

    .line 622
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 623
    const-string v2, "getAllOverlays"

    invoke-static {p1, v2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 625
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_36

    .line 626
    :try_start_24
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object p0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_33

    .line 629
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_33
    move-exception p0

    .line 627
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 629
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    throw p0
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 6

    const-wide/32 v0, 0x4000000

    .line 899
    :try_start_3
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 900
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_31

    .line 905
    :try_start_18
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_36

    .line 906
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p0

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_33

    .line 909
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 912
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_31
    move-exception p0

    goto :goto_3b

    :catchall_33
    move-exception p0

    .line 907
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 909
    :try_start_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_31

    .line 912
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    throw p0
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 4

    .line 655
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$1;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .registers 7

    if-eqz p1, :cond_44

    .line 661
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    :cond_9
    const-wide/32 v0, 0x4000000

    .line 666
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 667
    const-string v2, "getOverlayInfo"

    invoke-static {p2, v2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 669
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_3f

    .line 670
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_3c

    .line 673
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_3c
    move-exception p0

    .line 671
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    .line 673
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 674
    throw p0

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 7

    if-nez p1, :cond_5

    .line 637
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_5
    const-wide/32 v0, 0x4000000

    .line 641
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 642
    const-string v2, "getOverlayInfosForTarget"

    invoke-static {p2, v2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 644
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3b

    .line 645
    :try_start_29
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 648
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_38
    move-exception p0

    .line 646
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 648
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    throw p0
.end method

.method public getPartitionOrder()Ljava/lang/String;
    .registers 1

    .line 1191
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayConfig()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getPartitionOrder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidateCachesForOverlay(Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 923
    :cond_3
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 924
    const-string p1, "invalidateCachesForOverlay"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 925
    const-string p2, "invalidateCachesForOverlay"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 928
    :try_start_17
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4d

    .line 930
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_27
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1e .. :try_end_27} :catch_2a
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_46

    :catchall_28
    move-exception p0

    goto :goto_4b

    :catch_2a
    move-exception p0

    .line 932
    :try_start_2b
    const-string p1, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidate caches for overlay \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' failed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    :goto_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_28

    .line 936
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 934
    :goto_4b
    :try_start_4b
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_28

    :try_start_4c
    throw p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p0

    .line 936
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
    throw p0
.end method

.method public isDefaultPartitionOrder()Z
    .registers 1

    .line 1198
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayConfig()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->isDefaultPartitionOrder()Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1080
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 5

    .line 681
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 680
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerService$1;->setEnabled(Ljava/lang/String;ZILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final setEnabled(Ljava/lang/String;ZILjava/util/List;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 699
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 701
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 702
    const-string/jumbo p1, "setEnabled"

    invoke-static {p3, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 703
    const-string/jumbo p3, "setEnabled"

    invoke-virtual {p0, v3, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_56

    .line 707
    :try_start_39
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_64

    .line 709
    :try_start_40
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    .line 710
    invoke-virtual {v6, v3, p2, p1, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 709
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_4d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_40 .. :try_end_4d} :catch_5a
    .catchall {:try_start_40 .. :try_end_4d} :catchall_58

    .line 711
    :try_start_4d
    monitor-exit p3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_58

    .line 717
    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    .line 720
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_56
    move-exception p0

    goto :goto_69

    :catchall_58
    move-exception p0

    goto :goto_62

    .line 713
    :catch_5a
    :try_start_5a
    monitor-exit p3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_58

    .line 717
    :try_start_5b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_56

    .line 720
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 715
    :goto_62
    :try_start_62
    monitor-exit p3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_58

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    .line 717
    :try_start_65
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    throw p0
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_56

    .line 720
    :goto_69
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 721
    throw p0
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    if-nez p2, :cond_6

    goto :goto_76

    :cond_6
    const-wide/32 v1, 0x4000000

    .line 732
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 734
    new-instance p2, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p2, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 735
    const-string/jumbo p1, "setEnabledExclusive"

    invoke-static {p3, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 736
    const-string/jumbo p3, "setEnabledExclusive"

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3b
    .catchall {:try_start_9 .. :try_end_3b} :catchall_5f

    .line 740
    :try_start_3b
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_6d

    .line 742
    :try_start_42
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p2, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 744
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_56
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_42 .. :try_end_56} :catch_63
    .catchall {:try_start_42 .. :try_end_56} :catchall_61

    .line 746
    :try_start_56
    monitor-exit p3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_61

    .line 752
    :try_start_57
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5f

    .line 755
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_5f
    move-exception p0

    goto :goto_72

    :catchall_61
    move-exception p0

    goto :goto_6b

    .line 748
    :catch_63
    :try_start_63
    monitor-exit p3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_61

    .line 752
    :try_start_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5f

    .line 755
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 750
    :goto_6b
    :try_start_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_61

    :try_start_6c
    throw p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p0

    .line 752
    :try_start_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    throw p0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_5f

    .line 755
    :goto_72
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 756
    throw p0

    :cond_76
    :goto_76
    return v0
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 767
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 769
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 770
    const-string/jumbo p1, "setEnabledExclusiveInCategory"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 772
    const-string/jumbo p2, "setEnabledExclusiveInCategory"

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_55

    .line 776
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_63

    .line 778
    :try_start_38
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Landroid/content/om/OverlayIdentifier;ZI)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v3, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 780
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4d
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_4d} :catch_59
    .catchall {:try_start_38 .. :try_end_4d} :catchall_57

    .line 781
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_57

    .line 787
    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_55

    .line 790
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    :catchall_55
    move-exception p0

    goto :goto_68

    :catchall_57
    move-exception p0

    goto :goto_61

    .line 783
    :catch_59
    :try_start_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_57

    .line 787
    :try_start_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_55

    .line 790
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 785
    :goto_61
    :try_start_61
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_57

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 787
    :try_start_64
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw p0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_55

    .line 790
    :goto_68
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    throw p0
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 838
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setHighestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 840
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 841
    const-string/jumbo p1, "setHighestPriority"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 842
    const-string/jumbo p2, "setHighestPriority"

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_4e

    .line 846
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_5c

    .line 848
    :try_start_38
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    .line 849
    invoke-virtual {v6, v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    move-result-object p1

    .line 848
    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdateTargetPackagesLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)V
    :try_end_45
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_45} :catch_52
    .catchall {:try_start_38 .. :try_end_45} :catchall_50

    .line 850
    :try_start_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_50

    .line 856
    :try_start_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4e

    .line 859
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_4e
    move-exception p0

    goto :goto_61

    :catchall_50
    move-exception p0

    goto :goto_5a

    .line 852
    :catch_52
    :try_start_52
    monitor-exit p2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_50

    .line 856
    :try_start_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_4e

    .line 859
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 854
    :goto_5a
    :try_start_5a
    monitor-exit p2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_50

    :try_start_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 856
    :try_start_5d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    throw p0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_4e

    .line 859
    :goto_61
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 860
    throw p0
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-wide/32 v1, 0x4000000

    .line 871
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setLowestPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 873
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 874
    const-string/jumbo p1, "setLowestPriority"

    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 875
    const-string/jumbo p2, "setLowestPriority"

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_55

    .line 879
    :try_start_31
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_63

    .line 881
    :try_start_38
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance v3, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 882
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4c
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_38 .. :try_end_4c} :catch_59
    .catchall {:try_start_38 .. :try_end_4c} :catchall_57

    .line 883
    :try_start_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_57

    .line 889
    :try_start_4d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_55

    .line 892
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_55
    move-exception p0

    goto :goto_68

    :catchall_57
    move-exception p0

    goto :goto_61

    .line 885
    :catch_59
    :try_start_59
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_57

    .line 889
    :try_start_5a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_55

    .line 892
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 887
    :goto_61
    :try_start_61
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_57

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 889
    :try_start_64
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    throw p0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_55

    .line 892
    :goto_68
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 893
    throw p0
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_7b

    if-nez p2, :cond_6

    goto :goto_7b

    :cond_6
    const-wide/32 v1, 0x4000000

    .line 803
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMS#setPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 806
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v3, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 807
    new-instance p1, Landroid/content/om/OverlayIdentifier;

    invoke-direct {p1, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 808
    const-string/jumbo p2, "setPriority"

    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 809
    const-string/jumbo p3, "setPriority"

    invoke-virtual {p0, v3, p3, p2}, Lcom/android/server/om/OverlayManagerService$1;->enforceActor(Landroid/content/om/OverlayIdentifier;Ljava/lang/String;I)V

    .line 811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_64

    .line 813
    :try_start_40
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_72

    .line 815
    :try_start_47
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    new-instance p2, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 816
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_5b
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_47 .. :try_end_5b} :catch_68
    .catchall {:try_start_47 .. :try_end_5b} :catchall_66

    .line 817
    :try_start_5b
    monitor-exit p3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_66

    .line 823
    :try_start_5c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_64

    .line 826
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :catchall_64
    move-exception p0

    goto :goto_77

    :catchall_66
    move-exception p0

    goto :goto_70

    .line 819
    :catch_68
    :try_start_68
    monitor-exit p3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_66

    .line 823
    :try_start_69
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_64

    .line 826
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    .line 821
    :goto_70
    :try_start_70
    monitor-exit p3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_66

    :try_start_71
    throw p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception p0

    .line 823
    :try_start_73
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    throw p0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_64

    .line 826
    :goto_77
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 827
    throw p0

    :cond_7b
    :goto_7b
    return v0
.end method
