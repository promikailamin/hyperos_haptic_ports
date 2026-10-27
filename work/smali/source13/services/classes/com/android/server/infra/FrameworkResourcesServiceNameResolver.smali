.class public final Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
.super Ljava/lang/Object;
.source "FrameworkResourcesServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# static fields
.field private static final MSG_RESET_TEMPORARY_SERVICE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mArrayResourceId:I

.field private final mContext:Landroid/content/Context;

.field private final mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

.field private final mIsMultiple:Z

.field private final mLock:Ljava/lang/Object;

.field private mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

.field private final mStringResourceId:I

.field private mTemporaryHandler:Landroid/os/Handler;

.field private mTemporaryServiceExpiration:J

.field private final mTemporaryServiceNamesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 100
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    .line 101
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "isMultiple"    # Z

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 108
    if-eqz p3, :cond_25

    .line 113
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 115
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    .line 117
    return-void

    .line 109
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use FrameworkResourcesServiceNameResolver(context, @StringRes int) constructor if single service mode is requested."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDefaultServiceEnabledLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 295
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "newTemporaryName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 340
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    if-eqz v0, :cond_7

    .line 341
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;->onNameResolved(ILjava/lang/String;Z)V

    .line 343
    :cond_7
    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 308
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    const-string v1, "FrameworkResourcesServiceNamer: resId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 311
    const-string v1, ", numberTemps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 313
    const-string v1, ", enabledDefaults="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 321
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 323
    .local v1, "temporaryNames":[Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 324
    const-string/jumbo v2, "tmpName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-wide v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 327
    .local v2, "ttl":J
    const-string v4, " (expires in "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 329
    const-string v4, "), "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    .end local v2    # "ttl":J
    :cond_2e
    const-string v2, "defaultName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 334
    .local v2, "disabled":Z
    if-eqz v2, :cond_45

    const-string v3, " (disabled)"

    goto :goto_47

    :cond_45
    const-string v3, " (enabled)"

    :goto_47
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .end local v1    # "temporaryNames":[Ljava/lang/String;
    .end local v2    # "disabled":Z
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "serviceNames":[Ljava/lang/String;
    if-eqz v0, :cond_e

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public getDefaultServiceNameList(I)[Ljava/lang/String;
    .registers 10
    .param p1, "userId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    if-eqz v1, :cond_57

    .line 174
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "serviceNameList":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_70

    .line 179
    .local v2, "validatedServiceNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    :try_start_19
    array-length v4, v1

    if-ge v3, v4, :cond_40

    .line 180
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 181
    goto :goto_3d

    .line 183
    :cond_25
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 185
    .local v4, "serviceComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/32 v6, 0xc0000

    invoke-interface {v5, v4, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 189
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_3d

    .line 190
    aget-object v6, v1, v3

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3d} :catch_41
    .catchall {:try_start_19 .. :try_end_3d} :catchall_70

    .line 179
    .end local v4    # "serviceComponent":Landroid/content/ComponentName;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 195
    .end local v3    # "i":I
    :cond_40
    goto :goto_49

    .line 193
    :catch_41
    move-exception v3

    .line 194
    .local v3, "e":Ljava/lang/Exception;
    :try_start_42
    sget-object v4, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    const-string v5, "Could not validate provided services."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 197
    .local v3, "validatedServiceNameArray":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v0

    return-object v4

    .line 199
    .end local v1    # "serviceNameList":[Ljava/lang/String;
    .end local v2    # "validatedServiceNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "validatedServiceNameArray":[Ljava/lang/String;
    :cond_57
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_69

    new-array v2, v3, [Ljava/lang/String;

    goto :goto_6e

    :cond_69
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    :goto_6e
    monitor-exit v0

    return-object v2

    .line 202
    .end local v1    # "name":Ljava/lang/String;
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_42 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public getServiceName(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "serviceNames":[Ljava/lang/String;
    if-eqz v0, :cond_e

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public getServiceNameList(I)[Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 147
    .local v1, "temporaryNames":[Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 149
    sget-object v2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getServiceName(): using temporary name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-object v1

    .line 153
    :cond_36
    iget-object v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 154
    .local v2, "disabled":Z
    if-eqz v2, :cond_5a

    .line 156
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getServiceName(): temporary name not set and default disabled for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 160
    :cond_5a
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 162
    .end local v1    # "temporaryNames":[Ljava/lang/String;
    .end local v2    # "disabled":Z
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public isConfiguredInMultipleMode()Z
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mIsMultiple:Z

    return v0
.end method

.method public isDefaultServiceEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 291
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isTemporary(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 214
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public resetTemporaryService(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    sget-object v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetting temporary service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    .line 257
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 259
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    .line 260
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iput-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    .line 263
    :cond_42
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    .line 265
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 270
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result v1

    .line 272
    .local v1, "currentlyEnabled":Z
    if-ne v1, p2, :cond_2f

    .line 273
    sget-object v2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultServiceEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 276
    :cond_2f
    const/4 v2, 0x1

    if-eqz p2, :cond_50

    .line 277
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabling default service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    goto :goto_6d

    .line 280
    :cond_50
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabling default service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    .end local v1    # "currentlyEnabled":Z
    :goto_6d
    monitor-exit v0

    .line 284
    return v2

    .line 283
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 121
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryServices(I[Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 229
    new-instance v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;-><init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V

    iput-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_21

    .line 242
    :cond_1e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    .line 245
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    int-to-long v3, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    array-length v2, p2

    if-ge v1, v2, :cond_3c

    .line 247
    aget-object v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 250
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameworkResourcesServiceNamer[temps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 302
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
