.class public Lcom/android/server/pdb/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public static bridge synthetic -$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method public static getVerifiedBootState()Ljava/lang/String;
    .registers 1

    .line 1134
    const-string/jumbo v0, "ro.boot.verifiedbootstate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deactivateFactoryResetProtection([B)Z
    .registers 3

    .line 1221
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceConfigureFrpPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1222
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdeactivateFrp(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1201
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 1203
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDataBlockFile: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsFileBacked: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsFileBacked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInitDoneSignal: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmInitDoneSignal(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAllowedUid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmAllowedUid(Lcom/android/server/pdb/PersistentDataBlockService;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBlockDeviceSize: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmBlockDeviceSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1209
    :try_start_9a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsWritable: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    monitor-exit p1
    :try_end_b5
    .catchall {:try_start_9a .. :try_end_b5} :catchall_ba

    const/4 p1, 0x0

    .line 1211
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)I

    return-void

    :catchall_ba
    move-exception p0

    .line 1210
    :try_start_bb
    monitor-exit p1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw p0
.end method

.method public final enforceConfigureFrpPermissionOrPersistentDataBlockAccess()V
    .registers 3

    .line 1169
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    :cond_12
    return-void
.end method

.method public final enforcePersistentDataBlockAccess()V
    .registers 3

    .line 1162
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1164
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    :cond_17
    return-void
.end method

.method public getDataBlockSize()I
    .registers 6

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    const/4 v0, 0x0

    .line 1143
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_41

    .line 1150
    :try_start_19
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_30
    .catchall {:try_start_19 .. :try_end_20} :catchall_2e

    .line 1151
    :try_start_20
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result p0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    .line 1157
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_2b
    move-exception p0

    .line 1152
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_30
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    goto :goto_3d

    .line 1154
    :catch_30
    :try_start_30
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v2, "error reading data block size"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2e

    .line 1157
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_3d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1158
    throw p0

    .line 1145
    :catch_41
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFlashLockState()I
    .registers 2

    .line 1121
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1122
    const-string/jumbo p0, "ro.boot.flash.locked"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1123
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, -0x1

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .line 1178
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 1179
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .line 1115
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1116
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p0

    return p0
.end method

.method public getPersistentDataPackageName()Ljava/lang/String;
    .registers 2

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 1196
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x10402d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 3

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforceConfigureFrpPermissionOrPersistentDataBlockAccess()V

    .line 1186
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmInternalService(Lcom/android/server/pdb/PersistentDataBlockService;)Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->getFrpCredentialHandle()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_13

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    :catch_13
    move-exception p0

    .line 1188
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error reading frp handle"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1189
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot read frp credential"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFactoryResetProtectionActive()Z
    .registers 1

    .line 1216
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 900
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 971
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    const/4 p0, 0x0

    .line 880
    new-array v0, p0, [Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, p0, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-eqz p3, :cond_5a

    .line 883
    :try_start_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FRP secret in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/String;

    .line 884
    invoke-static {p2, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 883
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p0

    .line 886
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 889
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FRP secret file "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists, contents omitted."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_73
    return-void
.end method

.method public final printFrpDataFilesContents(Ljava/io/PrintWriter;Z)V
    .registers 4

    .line 874
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpSecretFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 875
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpSecretTmpFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public final printFrpSecret(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 861
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mhasFrpSecretMagic(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz p2, :cond_33

    .line 863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FRP secret in PDB: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 864
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object p0

    .line 863
    invoke-virtual {v0, p0}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 866
    :cond_33
    const-string p0, "FRP secret present but omitted."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 869
    :cond_39
    const-string p0, "FRP magic not found"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printFrpStatus(Ljava/io/PrintWriter;Z)I
    .registers 6

    .line 838
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;IZ)V

    .line 840
    const-string v0, "FRP state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    const-string v0, "========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    const-string v0, "Enforcement enabled: true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FRP state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFilesContents(Ljava/io/PrintWriter;Z)V

    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpSecret(Ljava/io/PrintWriter;Z)V

    .line 849
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_72

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OEM unlock state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bootloader lock state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getFlashLockState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Verified boot state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getVerifiedBootState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Has FRP credential handle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->hasFrpCredentialHandle()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FRP challenge block size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getDataBlockSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public read()[B
    .registers 8

    .line 1021
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 1023
    new-array p0, v1, [B

    return-object p0

    :cond_15
    const/4 v0, 0x0

    .line 1028
    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_bd

    .line 1035
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_97
    .catchall {:try_start_2b .. :try_end_32} :catchall_95

    .line 1036
    :try_start_32
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result p0

    if-nez p0, :cond_4d

    .line 1039
    new-array p0, v1, [B

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_4b

    .line 1057
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    return-object p0

    .line 1059
    :catch_41
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_4b
    move-exception p0

    goto :goto_93

    .line 1042
    :cond_4d
    :try_start_4d
    new-array v4, p0, [B

    .line 1043
    invoke-virtual {v2, v4, v1, p0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    if-ge v1, p0, :cond_84

    .line 1046
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to read entire data block. bytes read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_4b

    .line 1057
    :try_start_76
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    return-object v0

    .line 1059
    :catch_7a
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to close OutputStream"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1050
    :cond_84
    :try_start_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_4b

    .line 1057
    :try_start_85
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    return-object v4

    .line 1059
    :catch_89
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1051
    :goto_93
    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_4b

    :try_start_94
    throw p0
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_95} :catch_97
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception p0

    goto :goto_af

    :catch_97
    move-exception p0

    .line 1053
    :try_start_98
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "failed to read data"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_95

    .line 1057
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_ae

    .line 1059
    :catch_a5
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to close OutputStream"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    return-object v0

    .line 1057
    :goto_af
    :try_start_af
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_bc

    .line 1059
    :catch_b3
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_bc
    throw p0

    :catch_bd
    move-exception p0

    .line 1030
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setFactoryResetProtectionSecret([B)Z
    .registers 4

    .line 1227
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceConfigureFrpPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1228
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    if-eqz p1, :cond_21

    .line 1229
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_21

    .line 1233
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceFactoryResetProtectionInactive(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1234
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mupdateFrpSecret(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z

    move-result p0

    return p0

    .line 1230
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid FRP secret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4

    .line 1095
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1099
    :cond_7
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceIsAdmin(Lcom/android/server/pdb/PersistentDataBlockService;)V

    if-eqz p1, :cond_23

    .line 1104
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    .line 1107
    :cond_23
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1108
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1109
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    .line 1110
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p0
.end method

.method public wipe()V
    .registers 7

    .line 1066
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceFactoryResetProtectionInactive(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1071
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsFileBacked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_37

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 1073
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const v3, 0x19000

    new-array v3, v3, [B

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_35} :catch_39
    .catchall {:try_start_1a .. :try_end_35} :catchall_37

    move v1, v2

    goto :goto_45

    :catchall_37
    move-exception p0

    goto :goto_62

    :catch_39
    const/4 v1, -0x1

    goto :goto_45

    .line 1080
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v1

    :goto_45
    if-gez v1, :cond_51

    .line 1084
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "failed to wipe persistent partition"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1086
    :cond_51
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fputmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;Z)V

    .line 1087
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "persistent partition now wiped and unwritable"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_60
    monitor-exit v0

    return-void

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3b .. :try_end_63} :catchall_37

    throw p0
.end method

.method public write([B)I
    .registers 6

    .line 982
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V

    .line 985
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    move-result-wide v0

    .line 986
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    neg-long p0, v0

    long-to-int p0, p0

    return p0

    .line 991
    :cond_18
    array-length v0, p1

    add-int/lit8 v0, v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    .line 993
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v1, 0x19901873

    .line 994
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 995
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 996
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 997
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 998
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 999
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_4a

    .line 1000
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_48

    return v3

    :catchall_48
    move-exception p0

    goto :goto_80

    .line 1003
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_50} :catch_67
    .catchall {:try_start_4a .. :try_end_50} :catchall_48

    .line 1004
    :try_start_50
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    .line 1005
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_69

    .line 1006
    :try_start_57
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_67
    .catchall {:try_start_57 .. :try_end_5a} :catchall_48

    .line 1011
    :try_start_5a
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 1012
    array-length p0, p1

    monitor-exit v1

    return p0

    .line 1014
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_48

    return v3

    :catch_67
    move-exception p0

    goto :goto_75

    :catchall_69
    move-exception p0

    if-eqz v2, :cond_74

    .line 1003
    :try_start_6c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    :try_start_71
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw p0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_67
    .catchall {:try_start_71 .. :try_end_75} :catchall_48

    .line 1007
    :goto_75
    :try_start_75
    invoke-static {}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "failed writing to the persistent data block"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    monitor-exit v1

    return v3

    .line 1016
    :goto_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_48

    throw p0
.end method
