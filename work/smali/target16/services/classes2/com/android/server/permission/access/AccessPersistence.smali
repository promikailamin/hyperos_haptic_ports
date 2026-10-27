.class public final Lcom/android/server/permission/access/AccessPersistence;
.super Ljava/lang/Object;
.source "AccessPersistence.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/AccessPersistence$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final pendingMutationTimesMillis:Landroid/util/SparseLongArray;

.field public final pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final policy:Lcom/android/server/permission/access/AccessPolicy;

.field public final scheduleLock:Ljava/lang/Object;

.field public writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

.field public final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/AccessPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/AccessPersistence$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/AccessPersistence;->Companion:Lcom/android/server/permission/access/AccessPersistence$Companion;

    .line 179
    const-class v0, Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessPolicy;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    .line 43
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 44
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 47
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$writePendingState(Lcom/android/server/permission/access/AccessPersistence;I)V
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void
.end method


# virtual methods
.method public final getSystemFile()Ljava/io/File;
    .registers 3

    .line 173
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/permission/access/util/PermissionApex;->INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;

    invoke-virtual {v0}, Lcom/android/server/permission/access/util/PermissionApex;->getSystemDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "access.abx"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUserFile(I)Ljava/io/File;
    .registers 3

    .line 176
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/permission/access/util/PermissionApex;->INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/util/PermissionApex;->getUserDataDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "access.abx"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initialize()V
    .registers 3

    .line 50
    new-instance v0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;-><init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    return-void
.end method

.method public final read(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 6

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->readSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1c

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v3

    .line 58
    invoke-virtual {p0, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->readUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1c
    return-void
.end method

.method public final readSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 11

    .line 63
    const-string v0, "AccessPersistence"

    const-string v1, "Failed to read "

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessPersistence;->getSystemFile()Ljava/io/File;

    move-result-object v2

    .line 91
    :try_start_8
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_d} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_a2

    const/4 v4, 0x0

    .line 33
    :try_start_e
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_26

    .line 27
    :try_start_12
    new-instance v6, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v6}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 28
    invoke-virtual {v6, v5, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    iget-object v7, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v7, v6, p1}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 91
    sget-object v6, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_2b

    .line 33
    :try_start_21
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_26

    goto/16 :goto_dd

    :catch_26
    move-exception v5

    goto :goto_32

    :catch_28
    move-exception v0

    goto/16 :goto_a4

    :catchall_2b
    move-exception v6

    :try_start_2c
    throw v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v7

    :try_start_2e
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_28
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_26

    .line 37
    :goto_32
    :try_start_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_6a} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6a} :catch_a2

    .line 40
    :try_start_6a
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_86

    .line 27
    :try_start_73
    new-instance v7, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v7}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 28
    invoke-virtual {v7, v3, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    iget-object v8, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v8, v7, p1}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 91
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_88

    .line 40
    :try_start_82
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_dd

    :catch_86
    move-exception v3

    goto :goto_8f

    :catchall_88
    move-exception v4

    :try_start_89
    throw v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v7

    :try_start_8b
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_86

    .line 42
    :goto_8f
    :try_start_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v5

    :catch_a2
    move-exception p0

    goto :goto_a5

    .line 35
    :goto_a4
    throw v0
    :try_end_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_a5} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_a2

    .line 97
    :goto_a5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :catch_ba
    sget-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/AccessPolicy;->migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    :goto_dd
    return-void
.end method

.method public final readUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 12

    .line 77
    const-string v0, "AccessPersistence"

    const-string v1, "Failed to read "

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPersistence;->getUserFile(I)Ljava/io/File;

    move-result-object v2

    .line 91
    :try_start_8
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_d} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_a2

    const/4 v4, 0x0

    .line 33
    :try_start_e
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_26

    .line 27
    :try_start_12
    new-instance v6, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v6}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 28
    invoke-virtual {v6, v5, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    iget-object v7, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v7, v6, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 91
    sget-object v6, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_2b

    .line 33
    :try_start_21
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_26

    goto/16 :goto_e5

    :catch_26
    move-exception v5

    goto :goto_32

    :catch_28
    move-exception v0

    goto/16 :goto_a4

    :catchall_2b
    move-exception v6

    :try_start_2c
    throw v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v7

    :try_start_2e
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_28
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_26

    .line 37
    :goto_32
    :try_start_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_6a} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6a} :catch_a2

    .line 40
    :try_start_6a
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_86

    .line 27
    :try_start_73
    new-instance v7, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v7}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    .line 28
    invoke-virtual {v7, v3, v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v8, v7, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 91
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_88

    .line 40
    :try_start_82
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_e5

    :catch_86
    move-exception v3

    goto :goto_8f

    :catchall_88
    move-exception v4

    :try_start_89
    throw v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v7

    :try_start_8b
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_86

    .line 42
    :goto_8f
    :try_start_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v5

    :catch_a2
    move-exception p0

    goto :goto_a5

    .line 35
    :goto_a4
    throw v0
    :try_end_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_a5} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_a2

    .line 97
    :goto_a5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :catch_ba
    sget-object v0, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 81
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/WritableState;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    :goto_e5
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/AccessState;)V
    .registers 7

    .line 101
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    .line 102
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_23

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/UserState;

    .line 102
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_23
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/AccessState;I)V
    .registers 12

    .line 106
    invoke-interface {p1}, Lcom/android/server/permission/access/WritableState;->getWriteMode()I

    move-result p1

    if-eqz p1, :cond_91

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 130
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-static {v0, p3, p2}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    sget-object p2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    monitor-exit p1

    .line 131
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void

    :catchall_1b
    move-exception p0

    .line 130
    monitor-exit p1

    throw p0

    .line 133
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_2c
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "writeHandler"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_8f

    :cond_3e
    :goto_3e
    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-static {v0, p3, p2}, Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 115
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 52
    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_57

    .line 54
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    goto :goto_5b

    .line 56
    :cond_57
    invoke-virtual {p2, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v4, v2

    :goto_5b
    sub-long/2addr v2, v4

    .line 117
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez p2, :cond_67

    const-string/jumbo p2, "writeHandler"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_67
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x7d0

    cmp-long p3, v2, v4

    if-lez p3, :cond_77

    .line 119
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    goto :goto_8d

    :cond_77
    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v2

    .line 122
    invoke-static {v6, v7, v4, v5}, Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;->coerceAtMost(JJ)J

    move-result-wide v2

    .line 125
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez p0, :cond_89

    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8a

    :cond_89
    move-object v1, p0

    :goto_8a
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8d
    .catchall {:try_start_2f .. :try_end_8d} :catchall_3c

    .line 109
    :goto_8d
    monitor-exit p1

    return-void

    :goto_8f
    monitor-exit p1

    throw p0

    :cond_91
    return-void
.end method

.method public final writePendingState(I)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3b

    .line 141
    :try_start_b
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 65
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 142
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-virtual {v3, p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;->remove(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-nez v3, :cond_26

    const-string/jumbo v3, "writeHandler"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_44

    :cond_26
    :goto_26
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_24

    .line 140
    :try_start_2b
    monitor-exit v2

    .line 145
    iget-object v1, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3b

    if-nez v1, :cond_32

    .line 146
    monitor-exit v0

    return-void

    :cond_32
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3d

    .line 149
    :try_start_35
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->writeSystemState(Lcom/android/server/permission/access/AccessState;)V

    goto :goto_42

    :catchall_3b
    move-exception p0

    goto :goto_46

    .line 151
    :cond_3d
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/permission/access/AccessPersistence;->writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_3b

    .line 138
    :goto_42
    monitor-exit v0

    return-void

    .line 140
    :goto_44
    :try_start_44
    monitor-exit v2

    throw p0
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_3b

    .line 138
    :goto_46
    monitor-exit v0

    throw p0
.end method

.method public final writeSystemState(Lcom/android/server/permission/access/AccessState;)V
    .registers 9

    .line 157
    const-string v0, "AccessPersistence"

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessPersistence;->getSystemFile()Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_6
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_ac

    .line 26
    :try_start_f
    new-instance v4, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v4, v3, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/permission/access/AccessPolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    .line 42
    invoke-virtual {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 79
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_b0

    .line 84
    :try_start_28
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_ae

    .line 76
    :try_start_2a
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".reservecopy"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_56} :catch_ac

    .line 55
    :try_start_56
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_75

    .line 56
    :try_start_5f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_77

    .line 57
    :try_start_64
    invoke-static {p1, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 58
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_79

    .line 56
    :try_start_6e
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_77

    .line 55
    :try_start_71
    invoke-static {p1, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_9a

    :catch_75
    move-exception p1

    goto :goto_86

    :catchall_77
    move-exception v3

    goto :goto_80

    :catchall_79
    move-exception v4

    .line 56
    :try_start_7a
    throw v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v5

    :try_start_7c
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_77

    .line 55
    :goto_80
    :try_start_80
    throw v3
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v4

    :try_start_82
    invoke-static {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_75

    .line 62
    :goto_86
    :try_start_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9a} :catch_ac

    .line 65
    :goto_9a
    :try_start_9a
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    .line 66
    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a4} :catch_a5

    goto :goto_d1

    :catch_a5
    move-exception p0

    .line 68
    :try_start_a6
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_ac

    goto :goto_d1

    :catch_ac
    move-exception p0

    goto :goto_bb

    :catchall_ae
    move-exception p0

    goto :goto_b5

    :catchall_b0
    move-exception p0

    .line 81
    :try_start_b1
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 82
    throw p0
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_ae

    .line 76
    :goto_b5
    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p1

    :try_start_b7
    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bb} :catch_ac

    .line 168
    :goto_bb
    sget-object p1, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d1
    return-void
.end method

.method public final writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    .registers 10

    .line 161
    const-string v0, "AccessPersistence"

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/AccessPersistence;->getUserFile(I)Ljava/io/File;

    move-result-object v1

    .line 166
    :try_start_6
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_ac

    .line 26
    :try_start_f
    new-instance v4, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v4, v3, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    .line 42
    invoke-virtual {v4}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 79
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_b0

    .line 84
    :try_start_28
    sget-object p0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_ae

    .line 76
    :try_start_2a
    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 52
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".reservecopy"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_56} :catch_ac

    .line 55
    :try_start_56
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_75

    .line 56
    :try_start_5f
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_77

    .line 57
    :try_start_64
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 58
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_79

    .line 56
    :try_start_6e
    invoke-static {p2, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_77

    .line 55
    :try_start_71
    invoke-static {p1, v5}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_9a

    :catch_75
    move-exception p1

    goto :goto_86

    :catchall_77
    move-exception p2

    goto :goto_80

    :catchall_79
    move-exception v3

    .line 56
    :try_start_7a
    throw v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v4

    :try_start_7c
    invoke-static {p2, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_77

    .line 55
    :goto_80
    :try_start_80
    throw p2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v3

    :try_start_82
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_75

    .line 62
    :goto_86
    :try_start_86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9a} :catch_ac

    .line 65
    :goto_9a
    :try_start_9a
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V

    .line 66
    invoke-static {p0}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Ljava/io/File;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a4} :catch_a5

    goto :goto_d1

    :catch_a5
    move-exception p0

    .line 68
    :try_start_a6
    const-string p1, "Failed to verity-protect runtime-permissions"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_ac

    goto :goto_d1

    :catch_ac
    move-exception p0

    goto :goto_bb

    :catchall_ae
    move-exception p0

    goto :goto_b5

    :catchall_b0
    move-exception p0

    .line 81
    :try_start_b1
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 82
    throw p0
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_ae

    .line 76
    :goto_b5
    :try_start_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p1

    :try_start_b7
    invoke-static {v3, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bb} :catch_ac

    .line 168
    :goto_bb
    sget-object p1, Lcom/android/server/permission/access/AccessPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to serialize "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d1
    return-void
.end method
