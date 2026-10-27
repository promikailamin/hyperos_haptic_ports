.class final Lcom/android/server/am/PlatformCompatCache;
.super Ljava/lang/Object;
.source "PlatformCompatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PlatformCompatCache$CacheItem;,
        Lcom/android/server/am/PlatformCompatCache$CachedCompatChangeId;
    }
.end annotation


# static fields
.field static final CACHED_COMPAT_CHANGE_CAMERA_MICROPHONE_CAPABILITY:I = 0x1

.field static final CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

.field static final CACHED_COMPAT_CHANGE_PROCESS_CAPABILITY:I = 0x0

.field static final CACHED_COMPAT_CHANGE_USE_SHORT_FGS_USAGE_INTERACTION_TIME:I = 0x2

.field private static sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;


# instance fields
.field private final mCacheEnabled:Z

.field private final mCaches:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/PlatformCompatCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method private constructor <init>([J)V
    .registers 11
    .param p1, "compatChanges"    # [J

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 78
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    .local v1, "b":Landroid/os/IBinder;
    instance-of v2, v1, Lcom/android/server/compat/PlatformCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    .line 80
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 82
    array-length v0, p1

    :goto_20
    if-ge v3, v0, :cond_33

    aget-wide v5, p1, v3

    .line 83
    .local v5, "changeId":J
    iget-object v2, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    new-instance v7, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    iget-object v8, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {v7, v8, v5, v6}, Lcom/android/server/am/PlatformCompatCache$CacheItem;-><init>(Lcom/android/server/compat/PlatformCompat;J)V

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 82
    .end local v5    # "changeId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 85
    :cond_33
    iput-object v4, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    goto :goto_43

    .line 89
    :cond_39
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 90
    iput-object v4, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 91
    iput-boolean v3, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    .line 93
    :goto_43
    return-void
.end method

.method static getInstance()Lcom/android/server/am/PlatformCompatCache;
    .registers 2

    .line 96
    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    if-nez v0, :cond_11

    .line 97
    new-instance v0, Lcom/android/server/am/PlatformCompatCache;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Lcom/android/server/am/PlatformCompatCache;-><init>([J)V

    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    .line 103
    :cond_11
    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    return-object v0

    :array_14
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method static isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 6
    .param p0, "cachedCompatChangeId"    # I
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "defaultValue"    # Z

    .line 121
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    aget-wide v1, v1, p0

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method private isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z
    .registers 8
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "defaultValue"    # Z

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    invoke-virtual {v0, p3}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_17

    .line 109
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 108
    :goto_17
    return v0

    .line 110
    :catch_18
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading platform compat change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return p4
.end method


# virtual methods
.method invalidate(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 130
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    invoke-virtual {v1, p1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 132
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 139
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    invoke-virtual {v1, p1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 141
    .end local v0    # "i":I
    :cond_18
    return-void
.end method
