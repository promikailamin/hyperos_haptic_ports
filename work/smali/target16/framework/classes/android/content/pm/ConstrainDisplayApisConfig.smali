.class public final Landroid/content/pm/ConstrainDisplayApisConfig;
.super Ljava/lang/Object;
.source "ConstrainDisplayApisConfig.java"


# static fields
.field private static final blacklist FLAG_ALWAYS_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "always_constrain_display_apis"

.field private static final blacklist FLAG_NEVER_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "never_constrain_display_apis"

.field private static final blacklist FLAG_NEVER_CONSTRAIN_DISPLAY_APIS_ALL_PACKAGES:Ljava/lang/String; = "never_constrain_display_apis_all_packages"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mNeverConstrainConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mNeverConstrainDisplayApisAllPackages:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$Du7LXQtgJcKaBJLUe7Y7BpkrIDI(Landroid/content/pm/ConstrainDisplayApisConfig;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-class v0, Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->updateCache()V

    .line 85
    nop

    .line 86
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/content/pm/ConstrainDisplayApisConfig$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ConstrainDisplayApisConfig;)V

    .line 85
    const-string v2, "constrain_display_apis"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 87
    return-void
.end method

.method private static blacklist buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 150
    return-object v0

    .line 152
    :cond_c
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_a2

    aget-object v4, p0, v3

    .line 153
    const-string v5, ":"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 154
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_43

    .line 155
    sget-object v5, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid package entry in flag \'never/always_constrain_display_apis\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    goto :goto_9e

    .line 160
    :cond_43
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 161
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 162
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 165
    :try_start_57
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_60

    const-wide/high16 v7, -0x8000000000000000L

    goto :goto_64

    :cond_60
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 168
    :goto_64
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_70

    const-wide v9, 0x7fffffffffffffffL

    goto :goto_74

    :cond_70
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 170
    :goto_74
    new-instance v5, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_84} :catch_85

    .line 175
    goto :goto_9e

    .line 172
    :catch_85
    move-exception v5

    .line 173
    sget-object v5, Landroid/content/pm/ConstrainDisplayApisConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid APK version code in package entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_9e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 177
    :cond_a2
    return-object v0
.end method

.method private static blacklist flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Landroid/content/pm/ApplicationInfo;",
            ")Z"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 190
    return v1

    .line 192
    :cond_8
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 193
    return v1

    .line 195
    :cond_11
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    invoke-static {p0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->matchesApplicationInfo(Landroid/util/Pair;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->updateCache()V

    return-void
.end method

.method private static blacklist matchesApplicationInfo(Landroid/util/Pair;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/pm/ApplicationInfo;",
            ")Z"
        }
    .end annotation

    .line 209
    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1e

    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 209
    :goto_1f
    return p0
.end method

.method private blacklist updateCache()V
    .registers 4

    .line 120
    const-string/jumbo v0, "never_constrain_display_apis_all_packages"

    const/4 v1, 0x0

    const-string v2, "constrain_display_apis"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainDisplayApisAllPackages:Z

    .line 124
    const-string/jumbo v0, "never_constrain_display_apis"

    const-string v1, ""

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainConfigMap:Landroid/util/ArrayMap;

    .line 129
    const-string v0, "always_constrain_display_apis"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/content/pm/ConstrainDisplayApisConfig;->buildConfigMap(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;

    .line 133
    return-void
.end method


# virtual methods
.method public blacklist getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mAlwaysConstrainConfigMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method

.method public blacklist getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 97
    iget-boolean v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainDisplayApisAllPackages:Z

    if-eqz v0, :cond_6

    .line 98
    const/4 p1, 0x1

    return p1

    .line 101
    :cond_6
    iget-object v0, p0, Landroid/content/pm/ConstrainDisplayApisConfig;->mNeverConstrainConfigMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Landroid/content/pm/ConstrainDisplayApisConfig;->flagHasMatchingPackageEntry(Ljava/util/Map;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
