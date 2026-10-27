.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBootClassPathContainsATB:Z

.field private final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 42
    const-class v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->addUpdaterForAndroidTestBase(Ljava/util/List;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 69
    .local v1, "bootClassPathContainsATB":Z
    new-instance v2, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;

    .line 70
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;-><init>(Landroid/util/ArrayMap;)V

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 74
    .local v2, "updaterArray":[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    new-instance v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    sput-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    .line 76
    .end local v0    # "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    .end local v1    # "bootClassPathContainsATB":Z
    .end local v2    # "updaterArray":[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    return-void
.end method

.method private constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .registers 3
    .param p1, "bootClassPathContainsATB"    # Z
    .param p2, "packageUpdaters"    # [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 121
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 122
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 123
    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 124
    return-void
.end method

.method private static addUpdaterForAndroidTestBase(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;",
            ">;)Z"
        }
    .end annotation

    .line 88
    .local p0, "packageUpdaters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "hasClass":Z
    const-string v1, "android.content.pm.AndroidTestBaseUpdater"

    .line 91
    .local v1, "className":Ljava/lang/String;
    :try_start_3
    const-class v2, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 92
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    move v0, v3

    .line 93
    sget-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_2b} :catch_2d

    .line 96
    nop

    .end local v2    # "clazz":Ljava/lang/Class;
    goto :goto_4c

    .line 94
    :catch_2d
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_4c
    if-eqz v0, :cond_57

    .line 99
    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 101
    :cond_57
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_5f
    return v0
.end method

.method public static bootClassPathContainsATB()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 1

    .line 108
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 3
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "isUpdatedSystemApp"    # Z

    .line 135
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    .line 136
    return-void
.end method


# virtual methods
.method getPackageUpdaters()[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-object v0
.end method

.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 7
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 141
    .local v3, "packageUpdater":Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    .line 140
    .end local v3    # "packageUpdater":Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 143
    :cond_e
    return-void
.end method
