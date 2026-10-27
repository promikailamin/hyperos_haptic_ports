.class final Lcom/android/server/companion/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final COMPANION_SERVICE_INTENT:Landroid/content/Intent;

.field private static final PROPERTY_PRIMARY_TAG:Ljava/lang/String; = "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 68
    nop

    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 68
    const-string v1, "android.software.companion_device_setup"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 72
    .local v0, "requested":Z
    if-nez v0, :cond_10

    .line 77
    return-void

    .line 73
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must declare uses-feature android.software.companion_device_setup in manifest to use this API"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getCompanionServicesForUser(Landroid/content/Context;I)Ljava/util/Map;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Lcom/android/server/companion/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    .line 88
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "companionServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v2, "packageNameToServiceInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ComponentName;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 95
    .local v5, "service":Landroid/content/pm/ServiceInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 96
    const-string v7, "android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 97
    .local v6, "requiresPermission":Z
    if-nez v6, :cond_5a

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CompanionDeviceService "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 99
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must require android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v8, "CompanionDeviceManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_19

    .line 106
    :cond_5a
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v8, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 110
    .local v7, "services":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/ComponentName;>;"
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 112
    .local v8, "componentName":Landroid/content/ComponentName;
    invoke-static {v0, v8}, Lcom/android/server/companion/PackageUtils;->isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 114
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_78

    .line 116
    :cond_75
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 118
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "service":Landroid/content/pm/ServiceInfo;
    .end local v6    # "requiresPermission":Z
    .end local v7    # "services":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/ComponentName;>;"
    .end local v8    # "componentName":Landroid/content/ComponentName;
    :goto_78
    goto :goto_19

    .line 120
    :cond_79
    return-object v2
.end method

.method static getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-wide/16 v1, 0x5000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 62
    .local v1, "flags":Landroid/content/pm/PackageManager$PackageInfoFlags;
    new-instance v2, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2, v1, p1}, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    return-object v2
.end method

.method private static isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 126
    :try_start_0
    const-string v0, "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 127
    :catch_b
    move-exception v0

    .line 128
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$getCompanionServicesForUser$1(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "it"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getPackageInfo$0(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # Landroid/content/pm/PackageManager$PackageInfoFlags;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
