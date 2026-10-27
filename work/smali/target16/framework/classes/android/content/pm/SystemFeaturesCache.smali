.class public final Landroid/content/pm/SystemFeaturesCache;
.super Ljava/lang/Object;
.source "SystemFeaturesCache.java"


# static fields
.field private static final blacklist UNAVAILABLE_FEATURE_VERSION:I = -0x80000000

.field private static volatile blacklist sInstance:Landroid/content/pm/SystemFeaturesCache;


# instance fields
.field private final blacklist mSdkFeatureVersions:[I


# direct methods
.method public constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/SystemFeaturesCache;-><init>(Ljava/util/Collection;)V

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, 0xbc

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    .line 101
    iget-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 105
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result v1

    .line 106
    if-ltz v1, :cond_2e

    .line 107
    iget-object v2, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    iget v0, v0, Landroid/content/pm/FeatureInfo;->version:I

    aput v0, v2, v1

    .line 109
    :cond_2e
    goto :goto_14

    .line 110
    :cond_2f
    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    array-length v0, p1

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_b

    .line 123
    iput-object p1, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    .line 124
    return-void

    .line 118
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 119
    const-string v1, "Unexpected cached SDK feature count: %d (expected %d)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist clearInstance()V
    .registers 1

    .line 84
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 85
    return-void
.end method

.method public static blacklist getInstance()Landroid/content/pm/SystemFeaturesCache;
    .registers 2

    .line 69
    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 70
    if-eqz v0, :cond_5

    .line 73
    return-object v0

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SystemFeaturesCache not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasInstance()Z
    .registers 1

    .line 78
    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist setInstance(Landroid/content/pm/SystemFeaturesCache;)V
    .registers 2

    .line 57
    sget-object v0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    if-nez v0, :cond_7

    .line 60
    sput-object p0, Landroid/content/pm/SystemFeaturesCache;->sInstance:Landroid/content/pm/SystemFeaturesCache;

    .line 61
    return-void

    .line 58
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SystemFeaturesCache instance already initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getSdkFeatureVersions()[I
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    return-object v0
.end method

.method public blacklist maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 6

    .line 141
    invoke-static {p1}, Landroid/content/pm/PackageManager;->maybeGetSdkFeatureIndex(Ljava/lang/String;)I

    move-result p1

    .line 142
    const/4 v0, 0x0

    if-gez p1, :cond_8

    .line 143
    return-object v0

    .line 149
    :cond_8
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_13

    iget-object v2, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget v2, v2, p1

    if-ne v2, v1, :cond_13

    .line 151
    return-object v0

    .line 154
    :cond_13
    iget-object v0, p0, Landroid/content/pm/SystemFeaturesCache;->mSdkFeatureVersions:[I

    aget p1, v0, p1

    if-lt p1, p2, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
