.class public final Lcom/android/server/am/ConnectionRecord;
.super Lcom/android/server/am/psc/ConnectionRecordInternal;
.source "ConnectionRecord.java"


# static fields
.field public static final BIND_ORIG_ENUMS:[I

.field public static final BIND_PROTO_ENUMS:[I


# instance fields
.field public final activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public final aliasComponent:Landroid/content/ComponentName;

.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final binding:Lcom/android/server/am/AppBindRecord;

.field public final clientIntent:Landroid/app/PendingIntent;

.field public final clientLabel:I

.field public final clientPackageName:Ljava/lang/String;

.field public final clientProcessName:Ljava/lang/String;

.field public final clientUid:I

.field public final conn:Landroid/app/IServiceConnection;

.field public mBoundServiceSession:Lcom/android/server/am/BoundServiceSession;

.field public mProcStatsLock:Ljava/lang/Object;

.field public serviceDead:Z

.field public stringName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x12

    .line 67
    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    .line 87
    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x800000
        0x8
        0x10
        0x20
        0x40
        0x80
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        0x100
        0x1000
        0x200
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;JILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 12

    .line 130
    invoke-direct {p0, p4, p5}, Lcom/android/server/am/psc/ConnectionRecordInternal;-><init>(J)V

    .line 132
    iput-object p1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 133
    iput-object p2, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 134
    iput-object p3, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 135
    iput p6, p0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    .line 136
    iput-object p7, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 137
    iput p8, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 138
    iput-object p9, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 139
    iput-object p10, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 140
    iput-object p11, p0, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "binding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v0, :cond_20

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 113
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "conn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "ongoingCalls="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getOngoingCalls()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->mBoundServiceSession:Lcom/android/server/am/BoundServiceSession;

    if-eqz p0, :cond_6b

    .line 120
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BoundServiceSession;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_6b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    .line 313
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-nez v0, :cond_5

    return-void

    .line 314
    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 316
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    .line 315
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_37

    const-wide v1, 0x10500000002L

    .line 318
    iget v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 319
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 322
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v6

    sget-object v8, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    sget-object v9, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    const-wide v4, 0x20e00000003L

    move-object v3, p1

    .line 321
    invoke-static/range {v3 .. v9}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 323
    iget-boolean p1, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-eqz p1, :cond_56

    const-wide v0, 0x20e00000003L

    const/16 p1, 0xf

    .line 324
    invoke-virtual {v3, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    :cond_56
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz p0, :cond_66

    const-wide v0, 0x10900000004L

    .line 327
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 329
    :cond_66
    invoke-virtual {v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getActivity()Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-object p0
.end method

.method public getAttributedClient()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public bridge synthetic getAttributedClient()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/ConnectionRecord;->getAttributedClient()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getClient()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public bridge synthetic getClient()Lcom/android/server/am/psc/ProcessRecordInternal;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/ConnectionRecord;->getClient()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getClientProcessName()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public getService()Lcom/android/server/am/psc/ServiceRecordInternal;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public startAssociationIfNeeded()V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c4

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    if-ne v1, v2, :cond_1e

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 178
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 179
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    if-nez v0, :cond_63

    .line 181
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package in referenced service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_63
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_92

    .line 184
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inactive holder in referenced service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_92
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    .line 188
    monitor-enter v1

    .line 189
    :try_start_a1
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/psc/ServiceRecordInternal;->instanceName:Landroid/content/ComponentName;

    .line 190
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 192
    monitor-exit v1

    return-void

    :catchall_c1
    move-exception p0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_a1 .. :try_end_c3} :catchall_c1

    throw p0

    :cond_c4
    return-void
.end method

.method public stopAssociation()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_14

    .line 208
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 210
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    return-void

    :catchall_11
    move-exception p0

    .line 210
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 5

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 217
    const-string v1, "CR{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 232
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    const-string v2, "ConnectionRecord{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 239
    const-string v3, "CR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    const/4 v3, 0x2

    .line 241
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 242
    const-string v3, "DBG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    const/4 v3, 0x4

    .line 244
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 245
    const-string v3, "!FG "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    const/high16 v3, 0x800000

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 248
    const-string v3, "IMPB "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    const/16 v3, 0x8

    .line 250
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 251
    const-string v3, "ABCLT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    const/16 v3, 0x10

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 254
    const-string v3, "OOM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_7a
    invoke-virtual {p0, v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 257
    const-string v2, "WPRI "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    const/16 v2, 0x40

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 260
    const-string v2, "IMP "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_92
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 263
    const-string v1, "WACT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9d
    const/high16 v1, 0x2000000

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 266
    const-string v1, "FGSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_aa
    const/high16 v1, 0x4000000

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 269
    const-string v1, "FGS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    const/high16 v1, 0x8000000

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 272
    const-string v1, "LACT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c4
    const/high16 v1, 0x80000

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 275
    const-string v1, "SLTA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1
    const/high16 v1, 0x10000000

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 278
    const-string v1, "VFGS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_de
    const/high16 v1, 0x20000000

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 281
    const-string v1, "UI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_eb
    const/high16 v1, 0x40000000    # 2.0f

    .line 283
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 284
    const-string v1, "!VIS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f8
    const/16 v1, 0x100

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 287
    const-string v1, "!PRCP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_105
    const/16 v1, 0x200

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 290
    const-string v1, "BALF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_112
    const/16 v1, 0x1000

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 293
    const-string v1, "CAPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11f
    const-wide v1, 0x400000000L

    .line 295
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 296
    const-string v1, "!CPU "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12f
    const-wide v1, 0x800000000L

    .line 298
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/psc/ConnectionRecordInternal;->hasFlag(J)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 299
    const-string v1, "S!CPU "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_13f
    iget-boolean v1, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-eqz v1, :cond_148

    .line 302
    const-string v1, "DEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_148
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ":@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ConnectionRecordInternal;->getFlags()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public trackProcState(II)V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_15

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    return-void
.end method
