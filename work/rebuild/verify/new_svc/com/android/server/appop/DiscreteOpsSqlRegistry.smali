.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsSqlRegistry.java"


# static fields
.field public static final DB_WRITE_INTERVAL:J

.field public static final EXPIRED_ENTRY_DELETION_INTERVAL:J


# instance fields
.field public mChainIdOffset:J

.field public final mContext:Landroid/content/Context;

.field public final mDatabaseFile:Ljava/io/File;

.field public final mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

.field public final mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

.field public final mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDiscreteOpCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiscreteOpsDbHelper(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsDbHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDB_WRITE_INTERVAL()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetEXPIRED_ENTRY_DELETION_INTERVAL()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xa

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    const-wide/16 v0, 0x6

    .line 60
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 7

    .line 82
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 70
    new-instance v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    const/16 v1, 0x200

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    .line 83
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "DiscreteOpsSqlRegistry"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 85
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    .line 87
    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    .line 88
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsDbHelper;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getLargestAttributionChainId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mChainIdOffset:J

    .line 90
    sget-wide p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x2

    .line 91
    sget-wide p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public deleteDatabase()Z
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 752
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAllDiscreteOps()Ljava/util/List;
    .registers 3

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->-$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 740
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    const-string v1, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
