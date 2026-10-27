.class public final Lcom/android/server/am/psc/PlatformCompatCache;
.super Ljava/lang/Object;
.source "PlatformCompatCache.java"


# static fields
.field public static final CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

.field public static sPlatformCompatCache:Lcom/android/server/am/psc/PlatformCompatCache;


# instance fields
.field public final mCacheEnabled:Z

.field public final mCaches:Landroid/util/LongSparseArray;

.field public final mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 96
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/psc/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method public constructor <init>([J)V
    .registers 10

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 110
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 111
    instance-of v2, v1, Lcom/android/server/compat/PlatformCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    .line 112
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    iput-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 114
    array-length v0, p1

    :goto_20
    if-ge v4, v0, :cond_33

    aget-wide v1, p1, v4

    .line 115
    iget-object v5, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    new-instance v6, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;

    iget-object v7, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {v6, v7, v1, v2}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;-><init>(Lcom/android/server/compat/PlatformCompat;J)V

    invoke-virtual {v5, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 117
    :cond_33
    iput-object v3, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCacheEnabled:Z

    return-void

    .line 121
    :cond_39
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 122
    iput-object v3, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 123
    iput-boolean v4, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCacheEnabled:Z

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/psc/PlatformCompatCache;
    .registers 2

    .line 131
    sget-object v0, Lcom/android/server/am/psc/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/psc/PlatformCompatCache;

    if-nez v0, :cond_11

    .line 132
    new-instance v0, Lcom/android/server/am/psc/PlatformCompatCache;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Lcom/android/server/am/psc/PlatformCompatCache;-><init>([J)V

    sput-object v0, Lcom/android/server/am/psc/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/psc/PlatformCompatCache;

    .line 138
    :cond_11
    sget-object v0, Lcom/android/server/am/psc/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/psc/PlatformCompatCache;

    return-object v0

    :array_14
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method public static isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 6

    .line 156
    invoke-static {}, Lcom/android/server/am/psc/PlatformCompatCache;->getInstance()Lcom/android/server/am/psc/PlatformCompatCache;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/psc/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    aget-wide v1, v1, p0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/am/psc/PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public invalidate(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 165
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;

    invoke-virtual {v1, p1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z
    .registers 6

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCacheEnabled:Z

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;

    invoke-virtual {p0, p3}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    :catch_11
    move-exception p0

    goto :goto_1a

    .line 144
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_11

    return p0

    .line 146
    :goto_1a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error reading platform compat change "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformCompatCache"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p4
.end method

.method public onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 174
    iget-object v1, p0, Lcom/android/server/am/psc/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;

    invoke-virtual {v1, p1}, Lcom/android/server/am/psc/PlatformCompatCache$CacheItem;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method
