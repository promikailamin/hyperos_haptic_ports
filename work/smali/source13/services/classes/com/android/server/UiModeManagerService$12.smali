.class Lcom/android/server/UiModeManagerService$12;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 654
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 746
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$requestProjection$1(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "rec$"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Ljava/lang/String;

    .line 1086
    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setNightModeActivatedForModeInternal(IZ)Z
    .registers 11
    .param p1, "modeCustomType"    # I
    .param p2, "active"    # Z

    .line 944
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 949
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission, calling uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling pid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return v1

    .line 953
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 954
    .local v0, "user":I
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v0, v2, :cond_64

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_64

    .line 957
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v1

    .line 964
    :cond_64
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6c

    .line 965
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V

    .line 967
    :cond_6c
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    if-eq p1, v3, :cond_75

    .line 968
    return v1

    .line 970
    :cond_75
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 971
    :try_start_7c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_121

    .line 973
    .local v4, "ident":J
    :try_start_80
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v6

    if-eqz v6, :cond_b3

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_92

    goto :goto_b3

    .line 979
    :cond_92
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v2, :cond_a3

    if-eqz p2, :cond_a3

    .line 981
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    goto :goto_d7

    .line 982
    :cond_a3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-ne v1, v6, :cond_d7

    if-nez p2, :cond_d7

    .line 984
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    goto :goto_d7

    .line 974
    :cond_b3
    :goto_b3
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 975
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-nez p2, :cond_bd

    move v1, v2

    :cond_bd
    invoke-static {v6, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V

    .line 976
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V

    .line 977
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v6

    invoke-static {v1, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V

    .line 978
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v6

    invoke-static {v1, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V

    .line 987
    :cond_d7
    :goto_d7
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNightModeActivated mNightMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V

    .line 989
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V

    .line 990
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v6

    invoke-static {v1, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    :try_end_115
    .catchall {:try_start_80 .. :try_end_115} :catchall_11b

    .line 991
    nop

    .line 993
    :try_start_116
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    .line 991
    return v2

    .line 993
    :catchall_11b
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 994
    nop

    .end local v0    # "user":I
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "modeCustomType":I
    .end local p2    # "active":Z
    throw v1

    .line 995
    .end local v4    # "ident":J
    .restart local v0    # "user":I
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "modeCustomType":I
    .restart local p2    # "active":Z
    :catchall_121
    move-exception v1

    monitor-exit v3
    :try_end_123
    .catchall {:try_start_116 .. :try_end_123} :catchall_121

    throw v1
.end method

.method private setNightModeInternal(II)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "customModeType"    # I

    .line 783
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 788
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission, calling uid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calling pid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 792
    :cond_41
    packed-switch p1, :pswitch_data_120

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :pswitch_5d
    sget-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 799
    goto :goto_84

    .line 801
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set the custom type to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :pswitch_83
    nop

    .line 807
    :goto_84
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 808
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 810
    .local v1, "ident":J
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lcom/android/server/MiuiUiModeManagerServiceStub;->shouldDelayNightModeChange(II)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 811
    return-void

    .line 815
    :cond_97
    :try_start_97
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_11b

    .line 816
    :try_start_9e
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, p1, :cond_ae

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eq v4, p2, :cond_112

    .line 817
    :cond_ae
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_bf

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_c9

    .line 818
    :cond_bf
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 819
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V

    .line 821
    :cond_c9
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-ne p1, v5, :cond_cf

    .line 822
    move v6, p2

    goto :goto_d0

    .line 823
    :cond_cf
    const/4 v6, -0x1

    :goto_d0
    invoke-static {v4, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V

    .line 824
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 825
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/server/MiuiUiModeManagerServiceStub;->setNightMode(I)V

    .line 826
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z

    .line 827
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 829
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eqz v4, :cond_f9

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_101

    :cond_f9
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 830
    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 831
    :cond_101
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 832
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_112

    .line 834
    :cond_10d
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 837
    :cond_112
    :goto_112
    monitor-exit v3
    :try_end_113
    .catchall {:try_start_9e .. :try_end_113} :catchall_118

    .line 839
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    nop

    .line 841
    return-void

    .line 837
    :catchall_118
    move-exception v4

    :try_start_119
    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    .end local v0    # "user":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "mode":I
    .end local p2    # "customModeType":I
    :try_start_11a
    throw v4
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_11b

    .line 839
    .restart local v0    # "user":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "mode":I
    .restart local p2    # "customModeType":I
    :catchall_11b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    throw v3

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_5d
    .end packed-switch
.end method


# virtual methods
.method public addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .registers 9
    .param p1, "listener"    # Landroid/app/IOnProjectionStateChangedListener;
    .param p2, "projectionType"    # I

    .line 1138
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "addOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    if-nez p2, :cond_10

    .line 1142
    return-void

    .line 1144
    :cond_10
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1145
    :try_start_17
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1146
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    .line 1148
    :cond_2a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1149
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1151
    :cond_44
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1155
    invoke-static {v2, p2, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    move-result v2

    .line 1156
    .local v2, "activeProjectionTypes":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_65
    .catchall {:try_start_17 .. :try_end_65} :catchall_77

    if-nez v3, :cond_75

    .line 1158
    :try_start_67
    invoke-interface {p1, v2, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_77

    .line 1163
    goto :goto_75

    .line 1159
    :catch_6b
    move-exception v3

    .line 1160
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6c
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed a call to onProjectionStateChanged() during listener registration."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "activeProjectionTypes":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_75
    :goto_75
    monitor-exit v0

    .line 1167
    return-void

    .line 1166
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_77

    throw v1
.end method

.method public disableCarMode(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 709
    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .registers 13
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 719
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 720
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 730
    :cond_10
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 731
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    .line 732
    .local v1, "isSystemCaller":Z
    :goto_23
    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    .line 733
    .local v2, "isShellCaller":Z
    :goto_29
    if-nez v1, :cond_32

    if-nez v2, :cond_32

    .line 734
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 737
    :cond_32
    if-eqz v1, :cond_36

    move v4, p1

    goto :goto_38

    :cond_36
    and-int/lit8 v4, p1, -0x3

    .line 739
    .local v4, "carModeFlags":I
    :goto_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 741
    .local v5, "ident":J
    :try_start_3c
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_8e

    .line 744
    :try_start_43
    iget-object v8, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v8}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 745
    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;

    invoke-direct {v9, p2}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 747
    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;-><init>()V

    .line 748
    invoke-virtual {v8, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    .line 749
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 751
    .local v8, "priority":I
    iget-object v9, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v9, v3, v4, v8, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 752
    iget-object v9, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v9, v9, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v9, :cond_85

    .line 753
    iget-object v9, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v9, v3, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 755
    .end local v8    # "priority":I
    :cond_85
    monitor-exit v7
    :try_end_86
    .catchall {:try_start_43 .. :try_end_86} :catchall_8b

    .line 757
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    nop

    .line 759
    return-void

    .line 755
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .end local v0    # "callingUid":I
    .end local v1    # "isSystemCaller":Z
    .end local v2    # "isShellCaller":Z
    .end local v4    # "carModeFlags":I
    .end local v5    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_8d
    throw v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 757
    .restart local v0    # "callingUid":I
    .restart local v1    # "isSystemCaller":Z
    .restart local v2    # "isShellCaller":Z
    .restart local v4    # "carModeFlags":I
    .restart local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_8e
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 930
    :cond_11
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 931
    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .registers 11
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 668
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 669
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 673
    :cond_10
    if-eqz p2, :cond_29

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 674
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 677
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    move v0, v3

    .line 684
    .local v0, "isShellCaller":Z
    :goto_3c
    if-nez v0, :cond_43

    .line 685
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 688
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 690
    .local v4, "ident":J
    :try_start_47
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_67

    .line 691
    :try_start_4e
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v2, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 692
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_5e

    .line 693
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 695
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_64

    .line 697
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    nop

    .line 699
    return-void

    .line 695
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .end local v0    # "isShellCaller":Z
    .end local v4    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .end local p1    # "flags":I
    .end local p2    # "priority":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_66
    throw v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 697
    .restart local v0    # "isShellCaller":Z
    .restart local v4    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    .restart local p1    # "flags":I
    .restart local p2    # "priority":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_67
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    throw v1
.end method

.method public getActiveProjectionTypes()I
    .registers 5

    .line 1109
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "getActiveProjectionTypes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "projectionTypeFlag":I
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1113
    :try_start_15
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 1114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 1115
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    .line 1116
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1114
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1120
    .end local v2    # "i":I
    :cond_4a
    monitor-exit v1

    .line 1121
    return v0

    .line 1120
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .line 763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 765
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_19

    .line 766
    :try_start_b
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    return v3

    .line 767
    :catchall_16
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :try_start_18
    throw v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 769
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$12;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw v2
.end method

.method public getCustomNightModeEnd()J
    .registers 5

    .line 1028
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .registers 5

    .line 1000
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNightMode()I
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 847
    :try_start_7
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetIS_CTS_BUILD()Z

    move-result v1

    if-nez v1, :cond_15

    .line 848
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$misInNightModeUnderAuto(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 851
    :cond_15
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 852
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getNightModeCustomType()I
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 874
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 875
    :try_start_15
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 876
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1

    .line 871
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getNightModeCustomType requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProjectingPackages(I)Ljava/util/List;
    .registers 5
    .param p1, "projectionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string/jumbo v2, "getProjectionState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    .line 1132
    monitor-exit v0

    return-object v1

    .line 1133
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 917
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 918
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 910
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 911
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 924
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 925
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    invoke-static {}, Lcom/android/server/MiuiUiModeManagerServiceStub;->getInstance()Lcom/android/server/MiuiUiModeManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/MiuiUiModeManagerServiceStub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 660
    const/4 v0, 0x1

    return v0

    .line 662
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IUiModeManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public releaseProjection(ILjava/lang/String;)Z
    .registers 4
    .param p1, "projectionType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1102
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/IOnProjectionStateChangedListener;

    .line 1172
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string/jumbo v2, "removeOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1176
    :try_start_15
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1178
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1181
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 1182
    return-void

    .line 1181
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 15
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "projectionType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1058
    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1061
    :try_start_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    .line 1062
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    .line 1064
    :cond_27
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1065
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1067
    :cond_41
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1070
    .local v1, "currentHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 1071
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1072
    monitor-exit v0

    return v2

    .line 1070
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 1080
    .end local v3    # "i":I
    :cond_69
    const/4 v3, 0x0

    if-ne p2, v2, :cond_74

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    .line 1081
    monitor-exit v0

    return v3

    .line 1084
    :cond_74
    new-instance v10, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v8, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;)V

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p3

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService$ProjectionHolder-IA;)V

    move-object v4, v10

    .line 1087
    .local v4, "projectionHolder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    invoke-static {v4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$mlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 1088
    monitor-exit v0

    return v3

    .line 1090
    :cond_8e
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set projection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V

    .line 1094
    .end local v1    # "currentHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/UiModeManagerService$ProjectionHolder;>;"
    .end local v4    # "projectionHolder":Lcom/android/server/UiModeManagerService$ProjectionHolder;
    monitor-exit v0

    .line 1095
    return v2

    .line 1094
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_14 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method public setApplicationNightMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 881
    packed-switch p1, :pswitch_data_3a

    .line 888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :pswitch_1c
    nop

    .line 891
    packed-switch p1, :pswitch_data_46

    .line 899
    const/4 v0, 0x0

    .local v0, "configNightMode":I
    goto :goto_28

    .line 893
    .end local v0    # "configNightMode":I
    :pswitch_22
    const/16 v0, 0x20

    .line 894
    .restart local v0    # "configNightMode":I
    goto :goto_28

    .line 896
    .end local v0    # "configNightMode":I
    :pswitch_25
    const/16 v0, 0x10

    .line 897
    .restart local v0    # "configNightMode":I
    nop

    .line 901
    :goto_28
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    .line 902
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    .line 903
    .local v1, "updater":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    invoke-interface {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    .line 904
    invoke-interface {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    .line 905
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public setCustomNightModeEnd(J)V
    .registers 8
    .param p1, "time"    # J

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1036
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void

    .line 1039
    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1040
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_29
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_2d
    .catch Ljava/time/DateTimeException; {:try_start_29 .. :try_end_2d} :catch_40
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3e

    .line 1043
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_33

    .line 1049
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    return-void

    .line 1044
    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1045
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_3d
    .catch Ljava/time/DateTimeException; {:try_start_33 .. :try_end_3d} :catch_40
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_46

    .line 1049
    :catchall_3e
    move-exception v3

    goto :goto_4b

    .line 1046
    :catch_40
    move-exception v3

    .line 1047
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_41
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3e

    .line 1049
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    nop

    .line 1051
    return-void

    .line 1049
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    throw v3
.end method

.method public setCustomNightModeStart(J)V
    .registers 8
    .param p1, "time"    # J

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1008
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1011
    :cond_1e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1012
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1014
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_29
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_2d
    .catch Ljava/time/DateTimeException; {:try_start_29 .. :try_end_2d} :catch_45
    .catchall {:try_start_29 .. :try_end_2d} :catchall_43

    .line 1015
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_33

    .line 1022
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1015
    return-void

    .line 1016
    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1017
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 1018
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_42
    .catch Ljava/time/DateTimeException; {:try_start_33 .. :try_end_42} :catch_45
    .catchall {:try_start_33 .. :try_end_42} :catchall_43

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_4b

    .line 1022
    :catchall_43
    move-exception v3

    goto :goto_50

    .line 1019
    :catch_45
    move-exception v3

    .line 1020
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_46
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 1022
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    nop

    .line 1024
    return-void

    .line 1022
    :goto_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    throw v3
.end method

.method public setNightMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 776
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 777
    const/4 v0, 0x0

    goto :goto_6

    .line 778
    :cond_5
    const/4 v0, -0x1

    :goto_6
    nop

    .line 779
    .local v0, "customModeType":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->setNightModeInternal(II)V

    .line 780
    return-void
.end method

.method public setNightModeActivated(Z)Z
    .registers 3
    .param p1, "active"    # Z

    .line 940
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/UiModeManagerService$12;->setNightModeActivatedForModeInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public setNightModeActivatedForCustomMode(IZ)Z
    .registers 4
    .param p1, "modeNightCustomType"    # I
    .param p2, "active"    # Z

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService$12;->setNightModeActivatedForModeInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public setNightModeCustomType(I)V
    .registers 4
    .param p1, "nightModeCustomType"    # I

    .line 857
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 863
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/UiModeManagerService$12;->setNightModeInternal(II)V

    .line 864
    return-void

    .line 860
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setNightModeCustomType requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
