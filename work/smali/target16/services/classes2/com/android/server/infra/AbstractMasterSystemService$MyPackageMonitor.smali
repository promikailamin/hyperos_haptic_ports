.class public Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public static synthetic $r8$lambda$WJOav7o2UH2fVtcWZYNxlSqiN4Y(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .registers 2

    .line 1270
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Z)V
    .registers 3

    .line 1016
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 1017
    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getActiveServicePackageNameLocked()Ljava/lang/String;
    .registers 2

    .line 1256
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1257
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    .line 1261
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_15

    return-object v0

    .line 1265
    :cond_15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleActiveServiceRemoved(I)V
    .registers 4

    .line 1162
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1164
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_22

    .line 1165
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1167
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 1164
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final handleActiveServiceRestartedLocked(Ljava/lang/String;I)V
    .registers 7

    .line 1175
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const-string v1, " is being restarted"

    if-eqz v0, :cond_34

    .line 1176
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_8b

    .line 1177
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holding service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 1181
    :cond_34
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_5b

    .line 1182
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_5b
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1188
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_8b

    .line 1189
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_86

    .line 1190
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eagerly recreating service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_86
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 1195
    :cond_8b
    :goto_8b
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    return-void
.end method

.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 3

    .line 1270
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 12

    .line 1113
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1114
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 1115
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_3d

    aget-object v4, p2, v3

    .line 1116
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    if-nez p4, :cond_1d

    const/4 p0, 0x1

    .line 1118
    monitor-exit p3

    return p0

    :catchall_1b
    move-exception p0

    goto :goto_3f

    .line 1120
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1121
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    .line 1122
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1123
    invoke-virtual {p0, v0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRestartedLocked(Ljava/lang/String;I)V

    goto :goto_3a

    .line 1125
    :cond_31
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    goto :goto_3a

    .line 1128
    :cond_37
    invoke-virtual {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1131
    :cond_3d
    monitor-exit p3

    return v2

    :goto_3f
    monitor-exit p3
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_1b

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5

    .line 1137
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1d

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageDataCleared(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1140
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_3c

    .line 1141
    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1142
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_32
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedMultiModeLocked(Ljava/lang/String;I)V

    .line 1144
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw p0

    .line 1148
    :cond_3c
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_41
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 1151
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 1153
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1154
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageDataClearedLocked(I)V

    goto :goto_61

    :catchall_5f
    move-exception p0

    goto :goto_63

    .line 1158
    :cond_61
    :goto_61
    monitor-exit v0

    return-void

    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_41 .. :try_end_64} :catchall_5f

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 7

    .line 1200
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v2, :cond_25

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageModified(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_58

    .line 1203
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v1, :cond_2d

    .line 1204
    monitor-exit v0

    return-void

    .line 1207
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1208
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1211
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v3}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1215
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3, v2, p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$mremoveInvalidCachedServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService;[Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4a
    const/4 v3, 0x0

    .line 1220
    :goto_4b
    array-length v4, v2

    if-ge v3, v4, :cond_56

    .line 1221
    aget-object v4, v2, v3

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1225
    :cond_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_23

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 1087
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz p2, :cond_1f

    .line 1088
    invoke-interface {p2}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1090
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_15
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->handlePackageRemovedMultiModeLocked(Ljava/lang/String;I)V

    .line 1092
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p0

    .line 1096
    :cond_1f
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1097
    :try_start_24
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1098
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 1100
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 1102
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1103
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRemoved(I)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_48

    .line 1107
    :cond_46
    :goto_46
    monitor-exit p2

    return-void

    :goto_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_44

    throw p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    .line 1066
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1d

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateFinished(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 1068
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_26
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    move-object v1, v2

    goto :goto_3d

    .line 1070
    :cond_31
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1071
    :goto_3d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1072
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 1073
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1074
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_68

    .line 1075
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    goto :goto_68

    :catchall_66
    move-exception p0

    goto :goto_73

    .line 1078
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_71

    .line 1080
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 1082
    :goto_71
    monitor-exit v0

    return-void

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_26 .. :try_end_74} :catchall_66

    throw p0
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 8

    .line 1027
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_1d

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageUpdateStarted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1d
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1029
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    monitor-exit p2

    return-void

    :catchall_2e
    move-exception p0

    goto/16 :goto_ee

    .line 1032
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 1034
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_51

    .line 1035
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v3, Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicesCacheList(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fputmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)V

    .line 1037
    :cond_51
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmUpdatingPackageNames(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1038
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 1039
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_93

    .line 1040
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_ec

    .line 1041
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Holding service for user "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is being updated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 1045
    :cond_93
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v2, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v2, :cond_bc

    .line 1046
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is being updated"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_bc
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 1052
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->-$$Nest$fgetmServicePackagePolicyFlags(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_ec

    .line 1054
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_e7

    .line 1055
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eagerly recreating service for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_e7
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 1061
    :cond_ec
    :goto_ec
    monitor-exit p2

    return-void

    :goto_ee
    monitor-exit p2
    :try_end_ef
    .catchall {:try_start_22 .. :try_end_ef} :catchall_2e

    throw p0
.end method

.method public final peekAndUpdateCachedServiceLocked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    if-nez p3, :cond_3

    goto :goto_35

    .line 1236
    :cond_3
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_35

    .line 1238
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_35

    .line 1244
    :cond_14
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 1246
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_35

    .line 1248
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p3, p1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p3, :cond_30

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo p3, "update cached"

    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_30
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public startTrackingPackageChanges(Landroid/os/Looper;)V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method
