.class public final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "AutofillManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 1620
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    .registers 9

    const/4 v0, 0x0

    .line 1626
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2f
    .catchall {:try_start_1 .. :try_end_8} :catchall_2d

    .line 1627
    :try_start_8
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1628
    invoke-static {v2, p3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p3

    .line 1629
    invoke-virtual {p3, p1, p2, p5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;Z)I

    move-result p1

    if-eqz p1, :cond_15

    move v0, p1

    .line 1633
    :cond_15
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_1c

    or-int/lit8 p1, v0, 0x2

    move v0, p1

    .line 1636
    :cond_1c
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_23

    or-int/lit8 p1, v0, 0x4

    move v0, p1

    .line 1639
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2a

    .line 1644
    :goto_24
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :catchall_2a
    move-exception p1

    .line 1639
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_2f
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p1

    goto :goto_4b

    :catch_2f
    move-exception p1

    .line 1642
    :try_start_30
    const-string p2, "AutofillManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "addClient(): failed "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_2d

    goto :goto_24

    .line 1644
    :goto_4b
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1645
    throw p1
.end method

.method public autofillRemoteApp(Landroid/os/IBinder;ILandroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    .registers 7

    .line 2174
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2175
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2176
    invoke-static {p0, p5}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2178
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->autofillRemoteAppLocked(Landroid/os/IBinder;ILandroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    goto :goto_2f

    :catchall_13
    move-exception p0

    goto :goto_31

    .line 2180
    :cond_15
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2f

    .line 2181
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "autofillRemoteApp(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_13

    throw p0
.end method

.method public cancelSession(II)V
    .registers 5

    .line 2065
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2066
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2067
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2069
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->cancelSessionLocked(II)V

    goto :goto_33

    :catchall_17
    move-exception p0

    goto :goto_35

    .line 2070
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    .line 2071
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSession(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_17

    throw p0
.end method

.method public disableOwnedAutofillServices(I)V
    .registers 5

    .line 2079
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2080
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2081
    invoke-static {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    goto :goto_33

    :catchall_17
    move-exception p0

    goto :goto_35

    .line 2084
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    .line 2085
    const-string p0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession(): no service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_17

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 2188
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6f

    .line 2193
    array-length v2, p3

    move v3, v0

    move v4, v3

    move v5, v1

    :goto_17
    if-ge v3, v2, :cond_6d

    aget-object v6, p3, v3

    .line 2194
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_204

    goto :goto_47

    :sswitch_27
    const-string v7, "--help"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    goto :goto_47

    :cond_30
    const/4 v8, 0x2

    goto :goto_47

    :sswitch_32
    const-string v7, "--no-history"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_47

    :cond_3b
    move v8, v1

    goto :goto_47

    :sswitch_3d
    const-string v7, "--ui-only"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    goto :goto_47

    :cond_46
    move v8, v0

    :goto_47
    packed-switch v8, :pswitch_data_212

    .line 2205
    const-string v7, "AutofillManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring invalid dump arg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2202
    :pswitch_61
    const-string p0, "Usage: dumpsys autofill [--ui-only|--no-history]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_67
    move v5, v0

    goto :goto_6a

    :pswitch_69
    move v4, v1

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_6d
    move v0, v4

    goto :goto_70

    :cond_6f
    move v5, v1

    :goto_70
    if-eqz v0, :cond_7c

    .line 2211
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 2216
    :cond_7c
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2217
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2219
    :try_start_80
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2220
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_1fd

    .line 2221
    :try_start_8b
    const-string/jumbo v3, "sDebug: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2223
    const-string v3, " sVerbose: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2225
    const-string v3, "Flags: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmFlagLock(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_140

    .line 2227
    :try_start_a8
    const-string/jumbo v4, "mPccClassificationEnabled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2228
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmPccClassificationEnabled(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2229
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    const-string/jumbo v4, "mPccPreferProviderOverPcc="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2231
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmPccPreferProviderOverPcc(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2232
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    const-string/jumbo v4, "mPccUseFallbackDetection="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmPccUseFallbackDetection(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2235
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    const-string/jumbo v4, "mPccProviderHints="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmPccProviderHints(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    const-string/jumbo v4, "mAutofillCredmanIntegrationEnabled="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAutofillCredmanIntegrationEnabled(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2241
    monitor-exit v3
    :try_end_108
    .catchall {:try_start_a8 .. :try_end_108} :catchall_1f8

    .line 2243
    :try_start_108
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    const-string v4, ""

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$3900(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2244
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v3, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    .line 2245
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2246
    const-string v3, "Max partitions per session: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$sfgetsPartitionMaxCount()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2248
    const-string v3, "Max visible datasets: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$sfgetsVisibleDatasetsMaxCount()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2250
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_143

    .line 2251
    const-string v3, "Overridden full-screen mode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_143

    :catchall_140
    move-exception p0

    goto/16 :goto_1fb

    .line 2254
    :cond_143
    :goto_143
    const-string v3, "User data constraints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    const-string v3, "  "

    invoke-static {v3, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2256
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 2257
    const-string v3, "Autofill Compat State: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAutofillCompatState(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v3

    const-string v4, "  "

    invoke-static {v3, v4, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->-$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2259
    const-string v3, "from device config: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetAllowedCompatModePackagesFromDeviceConfig(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmSupportedSmartSuggestionModes(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    if-eqz v3, :cond_18e

    .line 2262
    const-string v3, "Smart Suggestion modes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2263
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmSupportedSmartSuggestionModes(Lcom/android/server/autofill/AutofillManagerService;)I

    move-result v3

    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    :cond_18e
    const-string v3, "Augmented Service Idle Unbind Timeout: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2267
    const-string v3, "Augmented Service Request Timeout: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    if-eqz v5, :cond_1e4

    .line 2270
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2271
    const-string v3, "Requests history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2273
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmRequestsHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2274
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2275
    const-string v3, "UI latency history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2277
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUiLatencyHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2278
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2279
    const-string v3, "WTF history:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2281
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmWtfHistory(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2283
    :cond_1e4
    const-string p1, "Augmented Autofill State: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2285
    monitor-exit v1
    :try_end_1f3
    .catchall {:try_start_108 .. :try_end_1f3} :catchall_140

    .line 2287
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2288
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    return-void

    :catchall_1f8
    move-exception p0

    .line 2241
    :try_start_1f9
    monitor-exit v3
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1f8

    :try_start_1fa
    throw p0

    .line 2285
    :goto_1fb
    monitor-exit v1
    :try_end_1fc
    .catchall {:try_start_1fa .. :try_end_1fc} :catchall_140

    :try_start_1fc
    throw p0
    :try_end_1fd
    .catchall {:try_start_1fc .. :try_end_1fd} :catchall_1fd

    :catchall_1fd
    move-exception p0

    .line 2287
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 2288
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2289
    throw p0

    nop

    :sswitch_data_204
    .sparse-switch
        0x35b095a5 -> :sswitch_3d
        0x417d0228 -> :sswitch_32
        0x4f7504e1 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_69
        :pswitch_67
        :pswitch_61
    .end packed-switch
.end method

.method public finishSession(III)V
    .registers 5

    .line 2052
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2053
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2054
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2056
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(III)V

    goto :goto_33

    :catchall_17
    move-exception p0

    goto :goto_35

    .line 2057
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_33

    .line 2058
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finishSession(): no service for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_17

    throw p0
.end method

.method public getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1919
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1922
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$2000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_40
    .catchall {:try_start_5 .. :try_end_c} :catchall_3e

    .line 1923
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1924
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 1926
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_35

    :catchall_19
    move-exception v0

    goto :goto_3c

    .line 1927
    :cond_1b
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_35

    .line 1928
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutofillServiceComponentName(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_35
    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_19

    .line 1934
    :goto_36
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    .line 1930
    :goto_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_19

    :try_start_3d
    throw v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_40
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    goto :goto_5c

    :catch_40
    move-exception v0

    .line 1932
    :try_start_41
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutofillServiceComponentName(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_3e

    goto :goto_36

    .line 1934
    :goto_5c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1935
    throw v0
.end method

.method public getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1891
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1894
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_44
    .catchall {:try_start_5 .. :try_end_c} :catchall_42

    .line 1895
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1896
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1899
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :catchall_1d
    move-exception v0

    goto :goto_40

    .line 1901
    :cond_1f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    .line 1902
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableFcAlgorithms(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_39
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    .line 1911
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void

    .line 1905
    :goto_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1d

    :try_start_41
    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    goto :goto_65

    :catch_44
    move-exception v0

    .line 1908
    :try_start_45
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableFieldClassificationAlgorithms(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_42

    .line 1911
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void

    :goto_65
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    .line 1912
    throw v0
.end method

.method public getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1833
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1836
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_44
    .catchall {:try_start_5 .. :try_end_c} :catchall_42

    .line 1837
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1838
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1840
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :catchall_1d
    move-exception v0

    goto :goto_40

    .line 1842
    :cond_1f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    .line 1843
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFcAlgorithm(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_39
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    .line 1851
    :goto_3a
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void

    .line 1846
    :goto_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1d

    :try_start_41
    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    goto :goto_60

    :catch_44
    move-exception v0

    .line 1849
    :try_start_45
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFieldClassificationAlgorithm(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_42

    goto :goto_3a

    .line 1851
    :goto_60
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1852
    throw v0
.end method

.method public getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1726
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_44
    .catchall {:try_start_5 .. :try_end_c} :catchall_42

    .line 1727
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1728
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1730
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    goto :goto_39

    :catchall_1d
    move-exception v0

    goto :goto_40

    .line 1731
    :cond_1f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    .line 1732
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFillEventHistory(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_39
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    .line 1739
    :goto_3a
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    .line 1734
    :goto_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1d

    :try_start_41
    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    goto :goto_60

    :catch_44
    move-exception v0

    .line 1737
    :try_start_45
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFillEventHistory(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_42

    goto :goto_3a

    .line 1739
    :goto_60
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1740
    throw v0
.end method

.method public getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1746
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1749
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_44
    .catchall {:try_start_5 .. :try_end_c} :catchall_42

    .line 1750
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1751
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1753
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v1

    goto :goto_39

    :catchall_1d
    move-exception v0

    goto :goto_40

    .line 1754
    :cond_1f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_39

    .line 1755
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_39
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    .line 1762
    :goto_3a
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void

    .line 1757
    :goto_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_1d

    :try_start_41
    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    goto :goto_60

    :catch_44
    move-exception v0

    .line 1760
    :try_start_45
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserData(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_42

    goto :goto_3a

    .line 1762
    :goto_60
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 1763
    throw v0
.end method

.method public getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .registers 9

    .line 1769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1772
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_58
    .catchall {:try_start_5 .. :try_end_c} :catchall_55

    .line 1773
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1774
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1776
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v0

    goto :goto_3b

    :catchall_1d
    move-exception v0

    move-object v3, v1

    goto :goto_4d

    .line 1777
    :cond_20
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_3a

    .line 1778
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserDataId(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_1d

    :cond_3a
    move-object v0, v1

    .line 1780
    :goto_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_49

    if-nez v0, :cond_3f

    goto :goto_43

    .line 1785
    :cond_3f
    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1786
    :goto_43
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void

    :catchall_49
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 1780
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_53

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_51
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    goto :goto_7c

    :catch_51
    move-exception v0

    goto :goto_5a

    :catchall_53
    move-exception v0

    goto :goto_4d

    :catchall_55
    move-exception v0

    move-object v3, v1

    goto :goto_7c

    :catch_58
    move-exception v0

    move-object v3, v1

    .line 1783
    :goto_5a
    :try_start_5a
    const-string v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserDataId(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_4f

    if-nez v3, :cond_77

    goto :goto_43

    .line 1785
    :cond_77
    invoke-virtual {v3}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :goto_7c
    if-nez v3, :cond_7f

    goto :goto_83

    :cond_7f
    invoke-virtual {v3}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1786
    :goto_83
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 1787
    throw v0
.end method

.method public isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .registers 8

    .line 1809
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1812
    :try_start_5
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_45
    .catchall {:try_start_5 .. :try_end_c} :catchall_43

    .line 1813
    :try_start_c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1814
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1816
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabled(I)Z

    move-result v1

    goto :goto_3a

    :catchall_1d
    move-exception v0

    goto :goto_41

    .line 1817
    :cond_1f
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_3a

    .line 1818
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFieldClassificationEnabled(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_3a
    :goto_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_1d

    .line 1825
    :goto_3b
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    .line 1820
    :goto_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1d

    :try_start_42
    throw v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_45
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    goto :goto_62

    :catch_45
    move-exception v0

    .line 1823
    :try_start_46
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFieldClassificationEnabled(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_43

    goto :goto_3b

    .line 1825
    :goto_62
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1826
    throw v0
.end method

.method public isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .registers 7

    const/4 v0, 0x0

    .line 2112
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_22
    .catchall {:try_start_1 .. :try_end_8} :catchall_20

    .line 2113
    :try_start_8
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2114
    invoke-static {v2, p1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p1

    .line 2115
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2116
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1d

    .line 2121
    :goto_17
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_1d
    move-exception p1

    .line 2116
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_22
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    goto :goto_3f

    :catch_22
    move-exception p1

    .line 2119
    :try_start_23
    const-string p2, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceEnabled(): failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_20

    goto :goto_17

    .line 2121
    :goto_3f
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 2122
    throw p1
.end method

.method public isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    const/4 v0, 0x0

    .line 2095
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_1c
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 2096
    :try_start_8
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z
    invoke-static {v2, p1}, Lcom/android/server/autofill/AutofillManagerService;->access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 2097
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 2102
    :goto_11
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    :catchall_17
    move-exception p1

    .line 2097
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1a} :catch_1c
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    goto :goto_39

    :catch_1c
    move-exception p1

    .line 2100
    :try_start_1d
    const-string v1, "AutofillManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isServiceSupported(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_1a

    goto :goto_11

    .line 2102
    :goto_39
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 2103
    throw p1
.end method

.method public notifyImeAnimationEnd(IJI)V
    .registers 6

    .line 2156
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2157
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2158
    invoke-static {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2160
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->notifyImeAnimationEnd(IJI)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2161
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2162
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyImeAnimationEnd(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public notifyImeAnimationStart(IJI)V
    .registers 6

    .line 2143
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2144
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2145
    invoke-static {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2147
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->notifyImeAnimationStart(IJI)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2148
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2149
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyImeAnimationStart(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public notifyNotExpiringResponseDuringAuth(II)V
    .registers 5

    .line 2011
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2012
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2013
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2015
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->notifyNotExpiringResponseDuringAuth(II)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2016
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2017
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyNotExpiringResponseDuringAuth(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public notifyViewEnteredIgnoredDuringAuthCount(II)V
    .registers 5

    .line 2024
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2025
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2026
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2028
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->notifyViewEnteredIgnoredDuringAuthCount(II)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2029
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2030
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyNotExpiringResponseDuringAuth(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 6

    .line 2127
    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 2128
    :cond_e
    :goto_e
    const-string v1, "invalid operation: %d"

    .line 2130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2128
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2131
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$3400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2132
    :try_start_22
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2134
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2133
    invoke-static {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_34

    .line 2136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_36

    .line 2138
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_32

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2295
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

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

.method public removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 5

    .line 1650
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1651
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_17

    .line 1653
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V

    goto :goto_32

    :catchall_15
    move-exception p0

    goto :goto_34

    .line 1654
    :cond_17
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_32

    .line 1655
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeClient(): no service for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_15

    throw p0
.end method

.method public restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .registers 9

    .line 1943
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 1946
    :try_start_5
    const-string v2, "activityToken"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1947
    const-string v2, "appCallback"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1949
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$2100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_4f
    .catchall {:try_start_5 .. :try_end_16} :catchall_4d

    .line 1950
    :try_start_16
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1951
    invoke-static {v3, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1953
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, p1, v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v1

    goto :goto_44

    :catchall_27
    move-exception p1

    goto :goto_4b

    .line 1955
    :cond_29
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_44

    .line 1956
    const-string p1, "AutofillManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "restoreSession(): no service for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_44
    :goto_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_27

    .line 1963
    :goto_45
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    return-void

    .line 1958
    :goto_4b
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_27

    :try_start_4c
    throw p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4f
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    goto :goto_6c

    :catch_4f
    move-exception p1

    .line 1961
    :try_start_50
    const-string p2, "AutofillManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restoreSession(): failed "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_4d

    goto :goto_45

    .line 1963
    :goto_6c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0, p4, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V

    .line 1964
    throw p1
.end method

.method public setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .registers 10

    .line 1861
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1864
    :try_start_6
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$1800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_56
    .catchall {:try_start_6 .. :try_end_d} :catchall_53

    .line 1865
    :try_start_d
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1866
    invoke-static {v4, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 1869
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    .line 1868
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z

    move-result p1

    goto :goto_3d

    :catchall_1e
    move-exception p1

    move p2, v2

    goto :goto_4b

    .line 1871
    :cond_21
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_3c

    .line 1872
    const-string p1, "AutofillManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAugmentedAutofillWhitelist(): no service for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_1e

    :cond_3c
    move p1, v2

    .line 1876
    :goto_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_47

    .line 1881
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    if-eqz p1, :cond_43

    move v1, v2

    :cond_43
    invoke-static {p0, p3, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :catchall_47
    move-exception p2

    move-object v5, p2

    move p2, p1

    move-object p1, v5

    .line 1876
    :goto_4b
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_51

    :try_start_4c
    throw p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4f
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    goto :goto_7c

    :catch_4f
    move-exception p1

    goto :goto_58

    :catchall_51
    move-exception p1

    goto :goto_4b

    :catchall_53
    move-exception p1

    move p2, v2

    goto :goto_7c

    :catch_56
    move-exception p1

    move p2, v2

    .line 1879
    :goto_58
    :try_start_58
    const-string v0, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAugmentedAutofillWhitelist(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_4d

    .line 1881
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    if-eqz p2, :cond_78

    move v1, v2

    :cond_78
    invoke-static {p0, p3, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :goto_7c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    if-eqz p2, :cond_81

    move v1, v2

    :cond_81
    invoke-static {p0, p3, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    .line 1884
    throw p1
.end method

.method public setAuthenticationResult(Landroid/os/Bundle;III)V
    .registers 6

    .line 1663
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1664
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1665
    invoke-static {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    .line 1667
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p4

    .line 1666
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationResultLocked(Landroid/os/Bundle;III)V

    .line 1668
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setAutofillFailure(ILjava/util/List;ZI)V
    .registers 6

    .line 1985
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1986
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1987
    invoke-static {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 1989
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p4

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;Z)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 1990
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 1991
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAutofillFailure(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V
    .registers 5

    .line 2038
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2039
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2040
    invoke-static {p0, p3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2042
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillIdsAttemptedForRefill(ILjava/util/List;I)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2043
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2044
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAutofillIdsAttemptedForRefill(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public setHasCallback(IIZ)V
    .registers 5

    .line 1673
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1674
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1675
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    .line 1676
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 1677
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .registers 5

    .line 1792
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1794
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1795
    :try_start_b
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1796
    invoke-static {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 1798
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    goto :goto_38

    :catchall_1b
    move-exception p0

    goto :goto_3a

    .line 1799
    :cond_1d
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_38

    .line 1800
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserData(): no service for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_38
    :goto_38
    monitor-exit v1

    return-void

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_1b

    throw p0
.end method

.method public setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    .registers 5

    .line 1998
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$2400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1999
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2000
    invoke-static {p0, p3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2002
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setViewAutofilledLocked(IILandroid/view/autofill/AutofillId;)V

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    .line 2003
    :cond_19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_34

    .line 2004
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAutofillFailure(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_17

    throw p0
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p6

    move-object/from16 v14, p11

    .line 1686
    const-string v3, "activityToken"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1687
    const-string v3, "clientCallback"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1688
    const-string v3, "autofillId"

    move-object/from16 v6, p3

    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1689
    const-string v3, "clientActivity"

    move-object/from16 v10, p9

    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1690
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v7, 0x0

    if-ne v1, v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    move v4, v7

    :goto_37
    const-string/jumbo v8, "userId"

    invoke-static {v4, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1695
    :try_start_3d
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4a} :catch_90

    .line 1702
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAm(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Landroid/app/ActivityManagerInternal;->getTaskIdForActivity(Landroid/os/IBinder;Z)I

    move-result v3

    .line 1704
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1705
    :try_start_5b
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1706
    invoke-static {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1707
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v4

    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1709
    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z
    invoke-static {v7}, Lcom/android/server/autofill/AutofillManagerService;->access$1100(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v12

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move/from16 v13, p8

    move/from16 v11, p10

    .line 1707
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J

    move-result-wide v1

    .line 1710
    monitor-exit v15
    :try_end_7a
    .catchall {:try_start_5b .. :try_end_7a} :catchall_8d

    long-to-int v3, v1

    const/16 v4, 0x20

    shr-long/2addr v1, v4

    long-to-int v1, v1

    if-eqz v1, :cond_87

    .line 1714
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v14, v3, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V

    return-void

    .line 1716
    :cond_87
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0, v14, v3}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V

    return-void

    :catchall_8d
    move-exception v0

    .line 1710
    :try_start_8e
    monitor-exit v15
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    :catch_90
    move-exception v0

    .line 1697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .registers 18

    move/from16 v0, p7

    .line 1970
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$2200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1971
    :try_start_9
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1972
    invoke-static {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mpeekServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1974
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    move-result v4

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    goto :goto_3e

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto :goto_40

    .line 1976
    :cond_23
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_3e

    .line 1977
    const-string p0, "AutofillManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSession(): no service for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_3e
    :goto_3e
    monitor-exit v1

    return-void

    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_20

    throw p0
.end method
