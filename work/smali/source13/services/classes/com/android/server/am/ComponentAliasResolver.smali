.class public Lcom/android/server/am/ComponentAliasResolver;
.super Ljava/lang/Object;
.source "ComponentAliasResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ComponentAliasResolver$Resolution;
    }
.end annotation


# static fields
.field private static final ALIAS_FILTER_ACTION:Ljava/lang/String; = "com.android.intent.action.EXPERIMENTAL_IS_ALIAS"

.field private static final ALIAS_FILTER_ACTION_ALT:Ljava/lang/String; = "android.intent.action.EXPERIMENTAL_IS_ALIAS"

.field private static final DEBUG:Z = true

.field private static final META_DATA_ALIAS_TARGET:Ljava/lang/String; = "alias_target"

.field private static final OPT_IN_PROPERTY:Ljava/lang/String; = "com.android.EXPERIMENTAL_COMPONENT_ALIAS_OPT_IN"

.field private static final PACKAGE_QUERY_FLAGS:I = 0x4c2080

.field private static final TAG:Ljava/lang/String; = "ComponentAliasResolver"

.field public static final USE_EXPERIMENTAL_COMPONENT_ALIAS:J = 0xbb29c26L


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEnabledByDeviceConfig:Z

.field private final mFromTo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOverrideString:Ljava/lang/String;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public static synthetic $r8$lambda$DjJWXFIJ3_BNTNCvsdO3dZ1NaRE(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ComponentAliasResolver;->refresh()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ComponentAliasResolver;->refresh()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 135
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$1;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 152
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 121
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 122
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method private extractAliasesLocked(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 317
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    .line 318
    .local v2, "ci":Landroid/content/pm/ComponentInfo;
    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 319
    .local v3, "from":Landroid/content/ComponentName;
    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "alias_target"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 320
    .local v4, "to":Landroid/content/ComponentName;
    if-nez v4, :cond_27

    .line 321
    goto :goto_4

    .line 323
    :cond_27
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ComponentAliasResolver;->validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 324
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v3    # "from":Landroid/content/ComponentName;
    .end local v4    # "to":Landroid/content/ComponentName;
    goto :goto_4

    .line 325
    :cond_2b
    return-void
.end method

.method private isEnabledForPackageLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "enabled":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.EXPERIMENTAL_COMPONENT_ALIAS_OPT_IN"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v1

    .line 268
    .local v1, "p":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_13

    move v0, v2

    .line 270
    .end local v1    # "p":Landroid/content/pm/PackageManager$Property;
    goto :goto_14

    .line 269
    :catch_13
    move-exception v1

    .line 271
    :goto_14
    if-nez v0, :cond_2e

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USE_EXPERIMENTAL_COMPONENT_ALIAS not enabled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComponentAliasResolver"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2e
    return v0
.end method

.method static synthetic lambda$resolveReceiver$3(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "receiver"    # Landroid/content/pm/ResolveInfo;

    .line 489
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$resolveService$2(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .registers 13
    .param p0, "service"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "packageFlags"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 459
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 461
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    int-to-long v4, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 463
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_19

    :cond_18
    move-object v3, v2

    .line 464
    .local v3, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_19
    if-nez v3, :cond_1c

    .line 465
    return-object v2

    .line 467
    :cond_1c
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private loadFromMetadataLocked()V
    .registers 3

    .line 228
    const-string v0, "ComponentAliasResolver"

    const-string v1, "Scanning service aliases..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXPERIMENTAL_IS_ALIAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLockedInner(Landroid/content/Intent;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.EXPERIMENTAL_IS_ALIAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLockedInner(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private loadFromMetadataLockedInner(Landroid/content/Intent;)V
    .registers 7
    .param p1, "i"    # Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c2080

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->extractAliasesLocked(Ljava/util/List;)V

    .line 244
    const-string v3, "ComponentAliasResolver"

    const-string v4, "Scanning receiver aliases..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 246
    invoke-virtual {v3, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/ComponentAliasResolver;->extractAliasesLocked(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method private loadOverridesLocked()V
    .registers 11

    .line 335
    const-string v0, "ComponentAliasResolver"

    const-string v1, "Loading aliases overrides ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    const-string v2, "\\,+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_68

    aget-object v5, v1, v4

    .line 337
    .local v5, "line":Ljava/lang/String;
    const/4 v6, 0x2

    const-string v7, "\\:+"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "fields":[Ljava/lang/String;
    aget-object v7, v6, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 339
    goto :goto_65

    .line 341
    :cond_26
    aget-object v7, v6, v3

    invoke-static {v7}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 342
    .local v7, "from":Landroid/content/ComponentName;
    if-nez v7, :cond_2f

    .line 343
    goto :goto_65

    .line 346
    :cond_2f
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_59

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [removed]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v8, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 350
    :cond_59
    aget-object v8, v6, v9

    invoke-static {v8}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 351
    .local v8, "to":Landroid/content/ComponentName;
    if-nez v8, :cond_62

    .line 352
    goto :goto_65

    .line 355
    :cond_62
    invoke-direct {p0, v7, v8}, Lcom/android/server/am/ComponentAliasResolver;->validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 336
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "fields":[Ljava/lang/String;
    .end local v7    # "from":Landroid/content/ComponentName;
    .end local v8    # "to":Landroid/content/ComponentName;
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 358
    :cond_68
    return-void
.end method

.method private refresh()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private refreshLocked()V
    .registers 3

    .line 217
    const-string v0, "ComponentAliasResolver"

    const-string v1, "Refreshing aliases..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 219
    invoke-direct {p0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLocked()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/am/ComponentAliasResolver;->loadOverridesLocked()V

    .line 221
    return-void
.end method

.method private static unflatten(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 361
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 362
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_7

    .line 363
    return-object v0

    .line 365
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid component name detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComponentAliasResolver"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    return-object v1
.end method

.method private static validateAlias(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 7
    .param p0, "from"    # Landroid/content/ComponentName;
    .param p1, "to"    # Landroid/content/ComponentName;

    .line 281
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "fromPackage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "toPackage":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 285
    return v3

    .line 287
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 288
    return v3

    .line 290
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v3, "ComponentAliasResolver"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x0

    return v2
.end method

.method private validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "from"    # Landroid/content/ComponentName;
    .param p2, "to"    # Landroid/content/ComponentName;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "ComponentAliasResolver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->validateAlias(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 302
    return-void

    .line 306
    :cond_31
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->isEnabledForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 307
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->isEnabledForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_4c

    .line 311
    :cond_46
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void

    .line 308
    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 373
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    const-string v1, "ACTIVITY MANAGER COMPONENT-ALIAS (dumpsys activity component-alias)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "  Enabled: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 377
    const-string v1, "  Aliases:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 379
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 380
    .local v2, "from":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 381
    .local v3, "to":Landroid/content/ComponentName;
    const-string v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string v4, " -> "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 378
    .end local v2    # "from":Landroid/content/ComponentName;
    .end local v3    # "to":Landroid/content/ComponentName;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 387
    .end local v1    # "i":I
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 388
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 128
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-am-ComponentAliasResolver(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    const-string v0, "ComponentAliasResolver"

    const-string v1, "USE_EXPERIMENTAL_COMPONENT_ALIAS changed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method synthetic lambda$update$1$com-android-server-am-ComponentAliasResolver(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 189
    if-eqz p1, :cond_13

    .line 190
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    .line 191
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 190
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    goto :goto_18

    .line 193
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 195
    :goto_18
    return-void
.end method

.method public onSystemReady(ZLjava/lang/String;)V
    .registers 8
    .param p1, "enabledByDeviceConfig"    # Z
    .param p2, "overrides"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    iput-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 164
    const-wide/32 v2, 0xbb29c26

    iget-object v4, p0, Lcom/android/server/am/ComponentAliasResolver;->mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 166
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    .line 167
    const-string v0, "ComponentAliasResolver"

    const-string v1, "Compat listener set."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    .line 169
    return-void

    .line 166
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 427
    .local p1, "aliasSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_6f

    .line 430
    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    if-nez v3, :cond_16

    .line 431
    new-instance v3, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_6c

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    return-object v3

    .line 434
    :cond_16
    :try_start_16
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 435
    .local v3, "alias":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 437
    .local v4, "target":Landroid/content/ComponentName;
    if-eqz v4, :cond_62

    .line 439
    const/4 v5, 0x0

    .line 440
    .local v5, "stacktrace":Ljava/lang/Exception;
    const-string v6, "ComponentAliasResolver"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 441
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "STACKTRACE"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 443
    :cond_38
    const-string v6, "ComponentAliasResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alias resolved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 444
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 443
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v5    # "stacktrace":Ljava/lang/Exception;
    :cond_62
    new-instance v5, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {v5, v3, v4}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_16 .. :try_end_68} :catchall_6c

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    return-object v5

    .line 448
    .end local v3    # "alias":Landroid/content/ComponentName;
    .end local v4    # "target":Landroid/content/ComponentName;
    :catchall_6c
    move-exception v3

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/ComponentAliasResolver;
    .end local p1    # "aliasSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/ComponentName;>;"
    :try_start_6e
    throw v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 450
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/ComponentAliasResolver;
    .restart local p1    # "aliasSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/ComponentName;>;"
    :catchall_6f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v2
.end method

.method public resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;IIIZ)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "packageFlags"    # I
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "forSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 488
    move-object/from16 v0, p2

    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v1

    .line 490
    .local v1, "resolution":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<Landroid/content/ComponentName;>;"
    invoke-virtual {v1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 491
    .local v3, "target":Landroid/content/ComponentName;
    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 492
    new-instance v5, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {v5, v0, v4}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 497
    :cond_1c
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 505
    .local v5, "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v14, p1

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v15, v6

    .line 506
    .local v15, "i":Landroid/content/Intent;
    invoke-virtual {v15, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {v1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    move/from16 v13, p4

    int-to-long v9, v13

    move-object v6, v5

    move-object v7, v15

    move-object/from16 v8, p3

    move/from16 v11, p6

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v6

    .line 511
    .local v6, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_5f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_52

    goto :goto_5f

    .line 516
    :cond_52
    new-instance v4, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v0, v7}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 513
    :cond_5f
    :goto_5f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alias target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ComponentAliasResolver"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-object v4
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "packageFlags"    # I
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v6, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Ljava/lang/String;III)V

    invoke-virtual {p0, v6}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v0

    .line 473
    .local v0, "result":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 475
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    .line 477
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    :cond_2c
    return-object v0
.end method

.method public update(ZLjava/lang/String;)V
    .registers 9
    .param p1, "enabledByDeviceConfig"    # Z
    .param p2, "overrides"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-nez v1, :cond_9

    .line 177
    monitor-exit v0

    return-void

    .line 179
    :cond_9
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    if-nez p1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v3, 0xbb29c26

    const-string v5, "android"

    .line 181
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_1f
    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    move v1, v2

    .line 183
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    if-eq v1, v2, :cond_52

    .line 184
    const-string v2, "ComponentAliasResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_33

    const-string v4, "Enabling"

    goto :goto_35

    :cond_33
    const-string v4, "Disabling"

    :goto_35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " component aliases..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ComponentAliasResolver;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_52
    iput-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    .line 198
    iput-boolean p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    .line 199
    iput-object p2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    .line 201
    if-eqz v1, :cond_5e

    .line 202
    invoke-direct {p0}, Lcom/android/server/am/ComponentAliasResolver;->refreshLocked()V

    goto :goto_63

    .line 204
    :cond_5e
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 206
    .end local v1    # "enabled":Z
    :goto_63
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v1
.end method
