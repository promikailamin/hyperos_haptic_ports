.class Lcom/android/server/infra/AbstractMasterSystemService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 966
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveServicePackageNameLocked()Ljava/lang/String;
    .registers 5

    .line 1170
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 1171
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 1172
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1173
    return-object v2

    .line 1175
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1176
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_15

    .line 1177
    return-object v2

    .line 1179
    :cond_15
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveServiceRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1086
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1088
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_22

    .line 1089
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, "serviceSettingsProperty":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1091
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1094
    :cond_21
    return-void

    .line 1088
    .end local v0    # "serviceSettingsProperty":Ljava/lang/String;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "activePackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1099
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_3b

    .line 1100
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_9d

    .line 1101
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 1105
    :cond_3b
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_69

    .line 1106
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_69
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1112
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9d

    .line 1113
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_98

    .line 1114
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_98
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1119
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    .line 1120
    return-void
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1184
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v1, Lcom/android/server/infra/AbstractMasterSystemService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 1185
    return-void
.end method

.method static synthetic lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1184
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method

.method private peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 1145
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    if-nez p3, :cond_3

    .line 1146
    return-void

    .line 1149
    :cond_3
    nop

    .line 1150
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1151
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_39

    .line 1152
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_39

    .line 1158
    :cond_15
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 1159
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v1, :cond_38

    .line 1160
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1161
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_38

    .line 1162
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "update cached"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_33
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1166
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_38
    return-void

    .line 1153
    .end local v1    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 1046
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "activePackageName":Ljava/lang/String;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_3b

    aget-object v5, p2, v4

    .line 1049
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1050
    if-nez p4, :cond_1b

    .line 1051
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1053
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1054
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v7

    .line 1055
    .local v7, "userId":I
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 1056
    invoke-direct {p0, v1, v7}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_34

    .line 1058
    :cond_2f
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v8, v7}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1060
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "userId":I
    :goto_34
    goto :goto_38

    .line 1061
    :cond_35
    invoke-direct {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1048
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1064
    .end local v1    # "activePackageName":Ljava/lang/String;
    :cond_3b
    monitor-exit v0

    .line 1065
    return v3

    .line 1064
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1070
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageDataCleared(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 1072
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1073
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 1074
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_47

    .line 1075
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1076
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_47

    .line 1077
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1078
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

    .line 1082
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_47
    monitor-exit v1

    .line 1083
    return-void

    .line 1082
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1124
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageModified(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_26
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v1, :cond_2e

    .line 1128
    monitor-exit v0

    return-void

    .line 1131
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    .line 1132
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "serviceNames":[Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 1135
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    array-length v4, v2

    if-ge v3, v4, :cond_48

    .line 1136
    aget-object v4, v2, v3

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/infra/AbstractMasterSystemService$1;->peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1135
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 1139
    .end local v1    # "userId":I
    .end local v2    # "serviceNames":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_48
    monitor-exit v0

    .line 1140
    return-void

    .line 1139
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1029
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1030
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    .line 1031
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 1032
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_24

    .line 1033
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1034
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_24

    .line 1035
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1036
    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRemoved(I)V

    .line 1040
    .end local v1    # "userId":I
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_24
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1008
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 1010
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_35

    move-object v2, v3

    goto :goto_41

    .line 1012
    :cond_35
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_41
    nop

    .line 1013
    .local v2, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1014
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 1015
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1016
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_6a

    .line 1017
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    .line 1020
    :cond_6a
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_73

    .line 1022
    :cond_70
    invoke-direct {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1024
    .end local v2    # "activePackageName":Ljava/lang/String;
    :goto_73
    monitor-exit v1

    .line 1025
    return-void

    .line 1024
    :catchall_75
    move-exception v2

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_2a .. :try_end_77} :catchall_75

    throw v2
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 970
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateStarted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_21
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return-void

    .line 974
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    .line 975
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 976
    :try_start_35
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_51

    .line 977
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    .line 979
    :cond_51
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 981
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9a

    .line 982
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_fe

    .line 983
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 987
    :cond_9a
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_ca

    .line 988
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_ca
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 994
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_fe

    .line 996
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_f9

    .line 997
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eagerly recreating service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_f9
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1003
    :cond_fe
    :goto_fe
    monitor-exit v2

    .line 1004
    return-void

    .line 1003
    :catchall_100
    move-exception v3

    monitor-exit v2
    :try_end_102
    .catchall {:try_start_35 .. :try_end_102} :catchall_100

    throw v3
.end method
