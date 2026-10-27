.class public Lcom/android/server/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageParser2$Callback;
    }
.end annotation


# static fields
.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field protected mCacher:Lcom/android/server/pm/parsing/PackageCacher;

.field private mSharedAppInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/parsing/result/ParseTypeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V
    .registers 15
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "onlyCoreApps"    # Z
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "cacheDir"    # Ljava/io/File;
    .param p5, "callback"    # Lcom/android/server/pm/parsing/PackageParser2$Callback;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;-><init>()V

    .line 98
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    .line 118
    if-nez p3, :cond_19

    .line 119
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object p3, v0

    .line 120
    invoke-virtual {p3}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 123
    :cond_19
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/permission/PermissionManager;

    .line 125
    .local v6, "permissionManager":Landroid/permission/PermissionManager;
    nop

    .line 126
    invoke-virtual {v6}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v7

    .line 128
    .local v7, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    if-nez p4, :cond_2f

    const/4 v0, 0x0

    goto :goto_34

    :cond_2f
    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher;

    invoke-direct {v0, p4}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;)V

    :goto_34
    iput-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    .line 130
    new-instance v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    move-object v0, v8

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, v7

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    iput-object v8, p0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    .line 133
    new-instance v0, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p5}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    .line 141
    .local v0, "enforcementCallback":Landroid/content/pm/parsing/result/ParseInput$Callback;
    new-instance v1, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    .line 142
    return-void
.end method

.method public static forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
    .registers 8

    .line 66
    nop

    .line 67
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 68
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    new-instance v7, Lcom/android/server/pm/parsing/PackageParser2;

    new-instance v6, Lcom/android/server/pm/parsing/PackageParser2$1;

    invoke-direct {v6, v0}, Lcom/android/server/pm/parsing/PackageParser2$1;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2$Callback;)V

    return-object v7
.end method

.method static synthetic lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 99
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 100
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 101
    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2
    .param p0, "enforcementCallback"    # Landroid/content/pm/parsing/result/ParseInput$Callback;

    .line 141
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 205
    return-void
.end method

.method synthetic lambda$new$1$com-android-server-pm-parsing-PackageParser2(Lcom/android/server/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .registers 8
    .param p1, "callback"    # Lcom/android/server/pm/parsing/PackageParser2$Callback;
    .param p2, "changeId"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 136
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 137
    iput p5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 138
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method public parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZLjava/util/List;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZLjava/util/List;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 21
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IZ",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/android/server/pm/parsing/pkg/ParsedPackage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 159
    .local p4, "frameworkSplits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz p3, :cond_13

    iget-object v3, v0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz v3, :cond_13

    .line 160
    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/parsing/PackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    .line 161
    .local v3, "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    if-eqz v3, :cond_13

    .line 162
    return-object v3

    .line 166
    .end local v3    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :cond_13
    sget-boolean v3, Lcom/android/server/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    goto :goto_1f

    :cond_1e
    move-wide v6, v4

    .line 167
    .local v6, "parseTime":J
    :goto_1f
    iget-object v8, v0, Lcom/android/server/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v8}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v8

    .line 168
    .local v8, "input":Landroid/content/pm/parsing/result/ParseInput;
    iget-object v9, v0, Lcom/android/server/pm/parsing/PackageParser2;->parsingUtils:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    move-object/from16 v10, p4

    invoke-virtual {v9, v8, v1, v2, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 170
    .local v9, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v11

    if-nez v11, :cond_98

    .line 175
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 177
    .local v11, "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    if-eqz v3, :cond_4b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 178
    .local v4, "cacheTime":J
    :cond_4b
    iget-object v12, v0, Lcom/android/server/pm/parsing/PackageParser2;->mCacher:Lcom/android/server/pm/parsing/PackageCacher;

    if-eqz v12, :cond_52

    .line 179
    invoke-virtual {v12, v1, v2, v11}, Lcom/android/server/pm/parsing/PackageCacher;->cacheResult(Ljava/io/File;ILcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 181
    :cond_52
    if-eqz v3, :cond_97

    .line 182
    sub-long v6, v4, v6

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v4, v12, v4

    .line 184
    add-long v12, v6, v4

    const-wide/16 v14, 0x64

    cmp-long v3, v12, v14

    if-lez v3, :cond_97

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse times for \'"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "\': parse="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v12, "ms, update_cache="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " ms"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "PackageParsing"

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_97
    return-object v11

    .line 171
    .end local v4    # "cacheTime":J
    .end local v11    # "parsed":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :cond_98
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v11

    invoke-direct {v3, v4, v5, v11}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
