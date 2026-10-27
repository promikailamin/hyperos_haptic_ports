.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$UserServices;,
        Landroid/content/pm/RegisteredServicesCache$Injector;,
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,
        Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;,
        Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field protected static final greylist-max-o REGISTERED_SERVICES_DIR:Ljava/lang/String; = "registered_services"

.field static final blacklist SERVICE_INFO_CACHES_TIMEOUT_MILLIS:J = 0x7530L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final greylist-max-o mAttributesName:Ljava/lang/String;

.field private final blacklist mBackgroundHandler:Landroid/os/Handler;

.field public final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mExternalReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInterfaceName:Ljava/lang/String;

.field private greylist-max-o mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMetaDataName:Ljava/lang/String;

.field private final greylist-max-o mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final greylist-max-o mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mServicesLock:Ljava/lang/Object;

.field private final blacklist mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final greylist-max-o mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUserIdToServiceInfoCaches(Landroid/content/pm/RegisteredServicesCache;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePackageEvent(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->handlePackageEvent(Landroid/content/Intent;I)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 163
    new-instance v1, Landroid/content/pm/RegisteredServicesCache$Injector;

    invoke-direct {v1, p1}, Landroid/content/pm/RegisteredServicesCache$Injector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/pm/RegisteredServicesCache$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/RegisteredServicesCache$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$Injector<",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser<",
            "TV;>;)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    .line 242
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$2;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$3;

    invoke-direct {v0, p0}, Landroid/content/pm/RegisteredServicesCache$3;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    invoke-virtual {p1}, Landroid/content/pm/RegisteredServicesCache$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 177
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->migrateIfNecessaryLocked()V

    .line 179
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p2

    .line 181
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string p3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string/jumbo p3, "package"

    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    const/16 p3, 0x3e8

    if-eqz p2, :cond_68

    .line 187
    invoke-virtual {v3, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 189
    :cond_68
    invoke-virtual {p1}, Landroid/content/pm/RegisteredServicesCache$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 190
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    const-string p4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string p4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    if-eqz p2, :cond_8e

    .line 198
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 200
    :cond_8e
    iget-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p4, p5, p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    const-string p4, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    if-eqz p2, :cond_a7

    .line 206
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 208
    :cond_a7
    iget-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1, v1, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    return-void
.end method

.method private greylist-max-o containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;)Z"
        }
    .end annotation

    .line 684
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 685
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 686
    const/4 p1, 0x1

    return p1

    .line 684
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 690
    :cond_1b
    return v1
.end method

.method private greylist-max-o containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;TV;I)Z"
        }
    .end annotation

    .line 694
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1f

    .line 695
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 696
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v3, p3, :cond_1c

    .line 697
    const/4 p1, 0x1

    return p1

    .line 694
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 701
    :cond_1f
    return v1
.end method

.method private greylist-max-o containsUid([II)Z
    .registers 3

    .line 680
    if-eqz p1, :cond_b

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private greylist-max-o createFileForUser(I)Landroid/util/AtomicFile;
    .registers 5

    .line 885
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 886
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registered_services/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method private greylist-max-o findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 127
    if-nez v0, :cond_5f

    .line 128
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$UserServices;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/RegisteredServicesCache$UserServices;-><init>(Landroid/content/pm/RegisteredServicesCache-IA;)V

    .line 129
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    if-eqz p2, :cond_5f

    iget-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-eqz p2, :cond_5f

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->getUser(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 134
    if-eqz p1, :cond_5f

    .line 135
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 140
    nop

    .line 142
    :try_start_32
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 143
    invoke-direct {p0, v1}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3f
    .catchall {:try_start_32 .. :try_end_39} :catchall_3d

    .line 147
    :goto_39
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    goto :goto_5f

    .line 147
    :catchall_3d
    move-exception p1

    goto :goto_5b

    .line 144
    :catch_3f
    move-exception p2

    .line 145
    :try_start_40
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading persistent services for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_3d

    goto :goto_39

    .line 147
    :goto_5b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    throw p1

    .line 153
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method private greylist-max-o generateServicesMap([II)V
    .registers 15

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    invoke-virtual {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->queryIntentServices(I)Ljava/util/List;

    move-result-object v1

    .line 518
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 519
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 521
    nop

    .line 522
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 523
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 526
    :try_start_26
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/high16 v6, 0xc0000

    invoke-virtual {v2, v4, v6, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 529
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_30} :catch_31
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_30} :catch_31

    .line 532
    goto :goto_4c

    .line 530
    :catch_31
    move-exception v4

    .line 531
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get the PackageInfo in generateServicesMap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    .line 533
    :goto_4c
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_5c

    .line 534
    invoke-direct {p0, p2, v5, v6, v7}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfoFromServiceCache(ILandroid/content/ComponentName;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 536
    if-eqz v4, :cond_5c

    .line 537
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    goto :goto_13

    .line 543
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v3, v6, v7}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 544
    if-nez v4, :cond_7f

    .line 545
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load service info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    goto :goto_13

    .line 548
    :cond_7f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v6
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_85} :catch_8f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_85} :catch_8f

    .line 550
    :try_start_85
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, p2, v5, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    monitor-exit v6

    .line 554
    goto :goto_ac

    .line 551
    :catchall_8c
    move-exception v4

    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v4
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_8f} :catch_8f

    .line 552
    :catch_8f
    move-exception v4

    .line 553
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load service info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    :goto_ac
    goto/16 :goto_13

    .line 557
    :cond_ae
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 558
    :try_start_b1
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v2

    if-lez v2, :cond_cf

    .line 559
    new-instance v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;

    invoke-direct {v2, p0, p2}, Landroid/content/pm/RegisteredServicesCache$ServiceInfoCachesToken;-><init>(Landroid/content/pm/RegisteredServicesCache;I)V

    .line 561
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 562
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v4, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;

    invoke-direct {v4, p0, p2}, Landroid/content/pm/RegisteredServicesCache$ClearServiceInfoCachesTimeoutRunnable;-><init>(Landroid/content/pm/RegisteredServicesCache;I)V

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 566
    :cond_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_1cc

    .line 568
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 569
    :try_start_d3
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 570
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_df

    move v3, v5

    goto :goto_e0

    :cond_df
    move v3, v4

    .line 571
    :goto_e0
    if-eqz v3, :cond_e8

    .line 572
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 575
    :cond_e8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    nop

    .line 577
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :goto_f3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 587
    iget-object v9, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 588
    if-nez v9, :cond_12d

    .line 592
    nop

    .line 593
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-boolean v7, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mPersistentServicesFileDidNotExist:Z

    if-eqz v7, :cond_126

    if-nez v3, :cond_12b

    .line 596
    :cond_126
    iget-object v7, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-direct {p0, v7, p2, v4}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 625
    :cond_12b
    move v7, v5

    goto :goto_16c

    .line 598
    :cond_12d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v10, v11, :cond_13d

    .line 602
    iget-object v9, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    .line 603
    :cond_13d
    iget v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p0, v10}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    move-result v10

    if-nez v10, :cond_151

    iget-object v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .line 604
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v0, v10, v9}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    move-result v9

    if-nez v9, :cond_16c

    .line 614
    :cond_151
    nop

    .line 615
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v7, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v10, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v7, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-direct {p0, v7, p2, v4}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    move v7, v5

    .line 625
    :cond_16c
    :goto_16c
    goto :goto_f3

    .line 627
    :cond_16d
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 628
    iget-object v4, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 631
    invoke-direct {p0, v0, v6}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a0

    iget-object v8, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    .line 632
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, p1, v8}, Landroid/content/pm/RegisteredServicesCache;->containsUid([II)Z

    move-result v8

    if-eqz v8, :cond_1a0

    .line 633
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1a0
    goto :goto_17b

    .line 636
    :cond_1a1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 640
    nop

    .line 641
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-direct {p0, v0, p2, v5}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V

    .line 644
    move v7, v5

    goto :goto_1a5

    .line 664
    :cond_1bf
    if-eqz v7, :cond_1c7

    .line 665
    invoke-virtual {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 666
    invoke-direct {p0, v1, p2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 668
    :cond_1c7
    monitor-exit v2

    .line 669
    return-void

    .line 668
    :catchall_1c9
    move-exception p1

    monitor-exit v2
    :try_end_1cb
    .catchall {:try_start_d3 .. :try_end_1cb} :catchall_1c9

    throw p1

    .line 566
    :catchall_1cc
    move-exception p1

    :try_start_1cd
    monitor-exit v1
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1cc

    throw p1
.end method

.method private blacklist getServiceInfoFromServiceCache(ILandroid/content/ComponentName;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ComponentName;",
            "J)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v0

    .line 918
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 919
    if-eqz p1, :cond_15

    iget-wide v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->lastUpdateTime:J

    cmp-long p2, v1, p3

    if-nez p2, :cond_15

    .line 920
    monitor-exit v0

    return-object p1

    .line 922
    :cond_15
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 923
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private greylist-max-o handlePackageEvent(Landroid/content/Intent;I)V
    .registers 9

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_19

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v4

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v3

    .line 220
    :goto_1a
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 222
    if-eqz v1, :cond_25

    if-eqz v5, :cond_25

    goto :goto_4e

    .line 226
    :cond_25
    nop

    .line 229
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_45

    .line 233
    :cond_35
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 234
    if-lez p1, :cond_43

    .line 235
    new-array v0, v3, [I

    aput p1, v0, v4

    goto :goto_4b

    .line 234
    :cond_43
    const/4 v0, 0x0

    goto :goto_4b

    .line 231
    :cond_45
    :goto_45
    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 238
    :goto_4b
    invoke-direct {p0, v0, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 240
    :goto_4e
    return-void
.end method

.method static synthetic blacklist lambda$notifyListener$0(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .registers 4

    .line 326
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/pm/RegisteredServicesCacheListener;->onServiceChanged(Ljava/lang/Object;IZ)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 329
    goto :goto_c

    .line 327
    :catchall_4
    move-exception p0

    .line 328
    const-string p1, "PackageManager"

    const-string p2, "Exception from onServiceChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :goto_c
    return-void
.end method

.method private greylist-max-o migrateIfNecessaryLocked()V
    .registers 7

    .line 785
    const-string v0, "PackageManager"

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v1, :cond_7

    .line 786
    return-void

    .line 788
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 789
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "registered_services"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 790
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 791
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 793
    if-eqz v3, :cond_b9

    .line 794
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml.migrated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 800
    nop

    .line 802
    const/4 v2, 0x0

    :try_start_66
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 803
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 804
    invoke-direct {p0, v2}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked(Ljava/io/InputStream;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_72} :catch_78
    .catchall {:try_start_66 .. :try_end_72} :catchall_76

    .line 808
    :goto_72
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 809
    goto :goto_7f

    .line 808
    :catchall_76
    move-exception v0

    goto :goto_b5

    .line 805
    :catch_78
    move-exception v1

    .line 806
    :try_start_79
    const-string v4, "Error reading persistent services, starting from scratch"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_76

    goto :goto_72

    .line 811
    :goto_7f
    :try_start_7f
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 812
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$UserServices;

    .line 813
    if-eqz v4, :cond_a4

    .line 818
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v2}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V

    .line 820
    :cond_a4
    goto :goto_87

    .line 821
    :cond_a5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_a8} :catch_a9

    .line 824
    goto :goto_af

    .line 822
    :catch_a9
    move-exception v1

    .line 823
    const-string v2, "Migration failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    :goto_af
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_b9

    .line 808
    :goto_b5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 809
    throw v0

    .line 830
    :cond_b9
    :goto_b9
    return-void
.end method

.method private greylist-max-o notifyListener(Ljava/lang/Object;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IZ)V"
        }
    .end annotation

    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 317
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 318
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    .line 319
    if-nez v0, :cond_9

    .line 320
    return-void

    .line 323
    :cond_9
    nop

    .line 324
    new-instance v2, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2, p3}, Landroid/content/pm/RegisteredServicesCache$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void

    .line 318
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private greylist-max-o readPersistentServicesLocked(Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    .line 756
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 757
    :goto_8
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    if-eq v0, v1, :cond_13

    .line 759
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto :goto_8

    .line 761
    :cond_13
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string/jumbo v3, "services"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 763
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    .line 765
    :cond_24
    if-ne v0, v2, :cond_5c

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 766
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string/jumbo v3, "service"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 768
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v0, p1}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    .line 769
    if-nez v0, :cond_42

    .line 770
    goto :goto_62

    .line 772
    :cond_42
    const/4 v3, 0x0

    const-string/jumbo v4, "uid"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 773
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 774
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(IZ)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v4

    .line 776
    iget-object v4, v4, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :cond_5c
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    .line 780
    if-ne v0, v1, :cond_24

    .line 782
    :cond_62
    :goto_62
    return-void
.end method

.method private greylist-max-o writePersistentServicesLocked(Landroid/content/pm/RegisteredServicesCache$UserServices;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$UserServices<",
            "TV;>;I)V"
        }
    .end annotation

    .line 836
    const-string/jumbo v0, "service"

    const-string/jumbo v1, "services"

    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v2, :cond_b

    .line 837
    return-void

    .line 839
    :cond_b
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->createFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p2

    .line 840
    nop

    .line 842
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_6c

    .line 843
    :try_start_15
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 844
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 845
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 846
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 848
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    const-string/jumbo v6, "uid"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 851
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    goto :goto_33

    .line 853
    :cond_5f
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 855
    invoke-virtual {p2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_68} :catch_69

    .line 861
    goto :goto_79

    .line 856
    :catch_69
    move-exception p1

    move-object v2, v3

    goto :goto_6d

    :catch_6c
    move-exception p1

    .line 857
    :goto_6d
    const-string v0, "PackageManager"

    const-string v1, "Error writing accounts"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    if-eqz v2, :cond_79

    .line 859
    invoke-virtual {p2, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 862
    :cond_79
    :goto_79
    return-void
.end method


# virtual methods
.method public greylist-max-o dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 7

    .line 280
    iget-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 281
    :try_start_3
    invoke-direct {p0, p4}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p3

    .line 282
    iget-object p4, p3, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-eqz p4, :cond_5b

    .line 283
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RegisteredServicesCache: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v0, p3, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " services"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    iget-object p3, p3, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_37
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    goto :goto_37

    :cond_5a
    goto :goto_60

    .line 288
    :cond_5b
    const-string p3, "RegisteredServicesCache: services not loaded"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    :goto_60
    monitor-exit p1

    .line 291
    return-void

    .line 290
    :catchall_62
    move-exception p2

    monitor-exit p1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p2
.end method

.method public greylist-max-o getAllServices(I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;>;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 392
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_f

    .line 393
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 395
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 396
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 397
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public greylist-max-o getBindInstantServiceAllowed(I)Z
    .registers 5

    .line 445
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string v2, "getBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_c
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    .line 451
    iget-boolean p1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    monitor-exit v0

    return p1

    .line 452
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p1
.end method

.method protected greylist-max-o getDataDirectory()Ljava/io/File;
    .registers 2

    .line 897
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;"
        }
    .end annotation

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    monitor-exit p0

    return-object v0

    .line 296
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected greylist-max-o getPersistentServices(I)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 902
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->persistentServices:Ljava/util/Map;

    return-object p1
.end method

.method public greylist-max-o getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    invoke-direct {p0, p2}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 377
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_f

    .line 378
    const/4 v2, 0x0

    invoke-direct {p0, v2, p2}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 380
    :cond_f
    iget-object p2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    monitor-exit v0

    return-object p1

    .line 381
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method protected greylist-max-o getUser(I)Landroid/content/pm/UserInfo;
    .registers 3

    .line 881
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o getUserSystemDirectory(I)Ljava/io/File;
    .registers 2

    .line 892
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o getUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o inSystemImage(I)Z
    .registers 7

    .line 471
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 472
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 473
    array-length v1, p1

    move v2, v0

    :goto_f
    if-ge v2, v1, :cond_2c

    aget-object v3, p1, v2

    .line 475
    :try_start_13
    iget-object v4, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 477
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_2a

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    .line 478
    return v4

    .line 482
    :cond_26
    nop

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 480
    :catch_2a
    move-exception p1

    .line 481
    return v0

    .line 485
    :cond_2c
    return v0
.end method

.method public greylist-max-o invalidateCache(I)V
    .registers 5

    .line 272
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 274
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    .line 275
    invoke-virtual {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->onServicesChangedLocked(I)V

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method protected greylist-max-o onServicesChangedLocked(I)V
    .registers 2

    .line 673
    return-void
.end method

.method protected greylist-max-o onUserRemoved(I)V
    .registers 4

    .line 866
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 868
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 869
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    monitor-enter v1

    .line 870
    :try_start_c
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mUserIdToServiceInfoCaches:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 871
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_13
    move-exception p1

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1

    .line 868
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public abstract greylist-max-o parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method protected blacklist parseServiceInfo(Landroid/content/pm/ResolveInfo;J)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "J)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 712
    new-instance v3, Landroid/content/ComponentName;

    iget-object p1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 716
    nop

    .line 718
    const/4 v1, 0x0

    :try_start_13
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_19} :catch_a4
    .catchall {:try_start_13 .. :try_end_19} :catchall_a1

    .line 719
    if-eqz v6, :cond_80

    .line 723
    :try_start_1b
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 726
    :goto_1f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2a

    goto :goto_1f

    .line 730
    :cond_2a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 731
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 736
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v0}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object p1
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_42} :catch_7d
    .catchall {:try_start_1b .. :try_end_42} :catchall_79

    .line 738
    if-nez p1, :cond_4b

    .line 739
    nop

    .line 746
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 739
    :cond_4a
    return-object v1

    .line 741
    :cond_4b
    :try_start_4b
    new-instance v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/pm/ComponentInfo;Landroid/content/ComponentName;J)V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_52} :catch_7d
    .catchall {:try_start_4b .. :try_end_52} :catchall_79

    .line 746
    if-eqz v6, :cond_57

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 741
    :cond_57
    return-object v0

    .line 732
    :cond_58
    :try_start_58
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Meta-data does not start with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " tag"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 746
    :catchall_79
    move-exception v0

    move-object p1, v0

    move-object v1, v6

    goto :goto_c0

    .line 742
    :catch_7d
    move-exception v0

    move-object v1, v6

    goto :goto_a5

    .line 720
    :cond_80
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " meta-data"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_a1} :catch_7d
    .catchall {:try_start_58 .. :try_end_a1} :catchall_79

    .line 746
    :catchall_a1
    move-exception v0

    move-object p1, v0

    goto :goto_c0

    .line 742
    :catch_a4
    move-exception v0

    .line 743
    :goto_a5
    :try_start_a5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to load resources for pacakge "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c0
    .catchall {:try_start_a5 .. :try_end_c0} :catchall_a1

    .line 746
    :goto_c0
    if-eqz v1, :cond_c5

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 747
    :cond_c5
    throw p1
.end method

.method protected greylist-max-o queryIntentServices(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 491
    nop

    .line 494
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_a
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 496
    iget-boolean v2, v2, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    if-eqz v2, :cond_16

    .line 497
    const v2, 0x8c0080

    goto :goto_19

    .line 496
    :cond_16
    const v2, 0xc0080

    .line 499
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_26

    .line 500
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 499
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public greylist-max-o setBindInstantServiceAllowed(IZ)V
    .registers 6

    .line 459
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_d
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object p1

    .line 465
    iput-boolean p2, p1, Landroid/content/pm/RegisteredServicesCache$UserServices;->mBindInstantServiceAllowed:Z

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p1
.end method

.method public greylist-max-o setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener<",
            "TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 300
    if-nez p2, :cond_6

    .line 301
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 303
    :cond_6
    monitor-enter p0

    .line 304
    :try_start_7
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 305
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 306
    monitor-exit p0

    .line 307
    return-void

    .line 306
    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist unregisterReceivers()V
    .registers 3

    .line 910
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 911
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mExternalReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 912
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 913
    return-void
.end method

.method public greylist-max-o updateServices(I)V
    .registers 11

    .line 405
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/RegisteredServicesCache;->findOrCreateUserLocked(I)Landroid/content/pm/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 408
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    if-nez v2, :cond_d

    .line 409
    monitor-exit v0

    return-void

    .line 411
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$UserServices;->services:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_6c

    .line 413
    nop

    .line 414
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 415
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v4, v4

    .line 416
    iget-object v6, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 417
    nop

    .line 419
    :try_start_38
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_43} :catch_44

    .line 422
    goto :goto_46

    .line 420
    :catch_44
    move-exception v6

    move-object v6, v1

    .line 424
    :goto_46
    if-eqz v6, :cond_4f

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v6, v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_5b

    .line 429
    :cond_4f
    if-nez v2, :cond_56

    .line 430
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 432
    :cond_56
    iget v3, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 434
    :cond_5b
    goto :goto_20

    .line 435
    :cond_5c
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 436
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    .line 437
    invoke-direct {p0, v0, p1}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap([II)V

    .line 439
    :cond_6b
    return-void

    .line 412
    :catchall_6c
    move-exception p1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method
