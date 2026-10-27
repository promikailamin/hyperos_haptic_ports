.class public final Landroid/content/pm/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"


# static fields
.field private static final blacklist ENABLE_CACHING:Z = true

.field static final blacklist MAX_NUM_CACHED_ENTRIES_PER_USER:I = 0x3e8

.field private static final blacklist sCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCacheLock:Ljava/lang/Object;

.field private static blacklist sUserIds:[I


# instance fields
.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist userId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/UserPackage;->sCacheLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    sput-object v0, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    .line 64
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Landroid/content/pm/UserPackage;->sUserIds:[I

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/content/pm/UserPackage;->userId:I

    .line 68
    iput-object p2, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private static blacklist maybePurgeRandomEntriesLocked(I)V
    .registers 7

    .line 160
    sget-object v0, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p0

    .line 161
    if-gez p0, :cond_9

    .line 162
    return-void

    .line 164
    :cond_9
    sget-object v0, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v0

    .line 165
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_14

    .line 166
    return-void

    .line 173
    :cond_14
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 174
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 175
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_34

    if-lez v0, :cond_34

    .line 176
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 177
    sget-object v5, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p0, v0}, Landroid/util/SparseArrayMap;->deleteAt(II)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_21

    .line 179
    :cond_34
    return-void
.end method

.method public static blacklist numEntriesForUser(I)I
    .registers 3

    .line 152
    sget-object v0, Landroid/content/pm/UserPackage;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 154
    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static blacklist of(ILjava/lang/String;)Landroid/content/pm/UserPackage;
    .registers 5

    .line 103
    sget-object v0, Landroid/content/pm/UserPackage;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-object v1, Landroid/content/pm/UserPackage;->sUserIds:[I

    invoke-static {v1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 106
    new-instance v1, Landroid/content/pm/UserPackage;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/UserPackage;-><init>(ILjava/lang/String;)V

    monitor-exit v0

    return-object v1

    .line 109
    :cond_12
    sget-object v1, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserPackage;

    .line 110
    if-nez v1, :cond_2d

    .line 111
    invoke-static {p0}, Landroid/content/pm/UserPackage;->maybePurgeRandomEntriesLocked(I)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v1, Landroid/content/pm/UserPackage;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/UserPackage;-><init>(ILjava/lang/String;)V

    .line 114
    sget-object v2, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2d
    monitor-exit v0

    return-object v1

    .line 117
    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public static blacklist removeFromCache(ILjava/lang/String;)V
    .registers 4

    .line 126
    sget-object v0, Landroid/content/pm/UserPackage;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-object v1, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static blacklist setValidUserIds([I)V
    .registers 4

    .line 137
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 138
    sget-object v0, Landroid/content/pm/UserPackage;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_9
    sput-object p0, Landroid/content/pm/UserPackage;->sUserIds:[I

    .line 141
    sget-object v1, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_29

    .line 142
    sget-object v2, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 143
    invoke-static {p0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_26

    .line 144
    sget-object v2, Landroid/content/pm/UserPackage;->sCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 141
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 147
    :cond_29
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 79
    return v0

    .line 81
    :cond_4
    instance-of v1, p1, Landroid/content/pm/UserPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 82
    check-cast p1, Landroid/content/pm/UserPackage;

    .line 83
    iget v1, p0, Landroid/content/pm/UserPackage;->userId:I

    iget v3, p1, Landroid/content/pm/UserPackage;->userId:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 85
    :cond_1e
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 90
    nop

    .line 91
    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/UserPackage;->userId:I

    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
