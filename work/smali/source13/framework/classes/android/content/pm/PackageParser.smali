.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;,
        Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;,
        Landroid/content/pm/PackageParser$SplitDependencyLoader;,
        Landroid/content/pm/PackageParser$SplitAssetLoader;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;,
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final greylist-max-o ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final blacklist APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field public static final greylist-max-o APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final greylist-max-o CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEBUG_BACKUP:Z = false

.field public static final greylist-max-o DEBUG_JAR:Z = false

.field public static final greylist-max-o DEBUG_PARSER:Z = false

.field private static final blacklist DEFAULT_MIN_SDK_VERSION:I = 0x1

.field public static final greylist-max-o DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final blacklist DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field public static final greylist-max-o LOG_PARSE_TIMINGS:Z

.field public static final greylist-max-o LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field public static final greylist-max-o LOG_UNSAFE_BROADCASTS:Z = false

.field public static final blacklist METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final greylist-max-o METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final blacklist METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final greylist-max-o MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final greylist-max-o MULTI_PACKAGE_APK_ENABLED:Z

.field public static final greylist NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final greylist-max-o PARSE_CHATTY:I = -0x80000000

.field public static final greylist-max-o PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final greylist-max-o PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final greylist-max-o PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final greylist-max-o PARSE_ENFORCE_CODE:I = 0x40

.field public static final greylist-max-o PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final greylist-max-o PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final greylist-max-o PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final greylist-max-o PARSE_MUST_BE_APK:I = 0x1

.field private static final greylist-max-o PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final greylist-max-o RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field public static final greylist-max-o RIGID_PARSER:Z = false

.field public static final greylist-max-o SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o SDK_CODENAMES:[Ljava/lang/String;

.field public static final greylist-max-o SDK_VERSION:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageParser"

.field public static final greylist-max-o TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final greylist-max-o TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final blacklist TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final greylist-max-o TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final greylist-max-o TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final greylist-max-o TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final greylist-max-o TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final greylist-max-o TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final greylist-max-o TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final greylist-max-o TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final greylist-max-o TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final greylist-max-o TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final greylist-max-o TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final greylist-max-o TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final greylist-max-o TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final greylist-max-o TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final greylist-max-o TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final blacklist TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final greylist-max-o TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final greylist-max-o TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final greylist-max-o TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final greylist-max-o TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final greylist-max-o TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final greylist-max-o TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final greylist-max-o TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final greylist-max-o TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final greylist-max-o TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final greylist-max-o TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final greylist-max-o TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static greylist-max-o sCompatibilityModeEnabled:Z

.field public static final greylist-max-o sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sUseRoundIcon:Z


# instance fields
.field public greylist-max-o mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mCacheDir:Ljava/io/File;

.field public greylist-max-r mCallback:Landroid/content/pm/PackageParser$Callback;

.field private greylist-max-o mMetrics:Landroid/util/DisplayMetrics;

.field private greylist-max-o mOnlyCoreApps:Z

.field public greylist-max-o mParseError:I

.field private greylist-max-o mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field public greylist-max-o mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smparsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 167
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 173
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 174
    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 234
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 236
    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 257
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v2

    new-instance v3, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v3, v0, v1

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 312
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 316
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 317
    sput-boolean v2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 927
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator-IA;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 578
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 579
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 580
    return-void
.end method

.method private greylist-max-o adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2555
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2556
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2557
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2558
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    goto :goto_6

    .line 2559
    :cond_22
    return-void
.end method

.method public static greylist-max-o buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .line 2895
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_3f

    .line 2899
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2900
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2901
    .local v0, "c":C
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_28

    .line 2902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2904
    :cond_28
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3e

    .line 2905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2906
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2907
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2908
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2910
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_3e
    return-object v1

    .line 2896
    .end local v0    # "c":C
    .end local v1    # "cls":Ljava/lang/String;
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 2897
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2915
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2916
    .local v0, "proc":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2917
    .local v2, "c":C
    const-string v3, ": "

    const-string v4, "Invalid "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, " in package "

    const-string v8, " name "

    if-eqz p0, :cond_94

    const/16 v9, 0x3a

    if-ne v2, v9, :cond_94

    .line 2918
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_4c

    .line 2919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": must be at least two characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2921
    return-object v6

    .line 2923
    :cond_4c
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2924
    .local v5, "subName":Ljava/lang/String;
    invoke-static {v5, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 2925
    .local v9, "nameError":Ljava/lang/String;
    if-eqz v9, :cond_82

    .line 2926
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2928
    return-object v6

    .line 2930
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2932
    .end local v5    # "subName":Ljava/lang/String;
    .end local v9    # "nameError":Ljava/lang/String;
    :cond_94
    invoke-static {v0, v5, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 2933
    .local v5, "nameError":Ljava/lang/String;
    if-eqz v5, :cond_cf

    const-string/jumbo v9, "system"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 2934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2936
    return-object v6

    .line 2938
    :cond_cf
    return-object v0
.end method

.method public static greylist-max-o buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .line 2944
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_13

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2945
    if-eqz p1, :cond_11

    move-object v0, p1

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    return-object v0

    .line 2947
    :cond_13
    if-eqz p4, :cond_33

    .line 2948
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_33

    .line 2949
    aget-object v1, p4, v0

    .line 2950
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_32

    .line 2948
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 2951
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_32
    :goto_32
    return-object p0

    .line 2955
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_33
    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_3c

    goto :goto_48

    .line 2958
    :cond_3c
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2956
    :cond_48
    :goto_48
    return-object p1
.end method

.method public static greylist-max-o buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2963
    if-nez p2, :cond_3

    .line 2964
    return-object p1

    .line 2966
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 2967
    const/4 v0, 0x0

    return-object v0

    .line 2969
    :cond_b
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "rawPropNames"    # Ljava/lang/String;
    .param p1, "rawPropValues"    # Ljava/lang/String;

    .line 2517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "="

    const-string v2, "PackageParser"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5d

    .line 2529
    :cond_13
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2530
    .local v5, "propNames":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, "propValues":[Ljava/lang/String;
    array-length v6, v5

    array-length v7, v0

    if-eq v6, v7, :cond_46

    .line 2533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling overlay - property :\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue lists to have the same size."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    return v4

    .line 2538
    :cond_46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    array-length v2, v5

    if-ge v1, v2, :cond_5c

    .line 2540
    aget-object v2, v5, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2541
    .local v2, "currValue":Ljava/lang/String;
    aget-object v6, v0, v1

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 2542
    return v4

    .line 2538
    .end local v2    # "currValue":Ljava/lang/String;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 2545
    .end local v1    # "i":I
    :cond_5c
    return v3

    .line 2518
    .end local v0    # "propValues":[Ljava/lang/String;
    .end local v5    # "propNames":[Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_6b

    .line 2526
    :cond_6a
    return v3

    .line 2520
    :cond_6b
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    return v4
.end method

.method private static blacklist checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 8
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 654
    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 655
    invoke-interface {p1}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v1, :cond_14

    .line 657
    return v2

    .line 662
    :cond_14
    int-to-long v3, p0

    invoke-static {p1, v3, v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    .line 663
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2d

    const v1, 0x402000

    and-int/2addr v1, p0

    if-nez v1, :cond_2c

    and-int/2addr v0, p0

    if-eqz v0, :cond_2d

    :cond_2c
    goto :goto_2e

    :cond_2d
    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x1

    .line 662
    :goto_2f
    return v2
.end method

.method private static greylist-max-r collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .registers 13
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1409
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "apkPath":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v1

    .line 1413
    .local v1, "minSignatureScheme":I
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1415
    const/4 v1, 0x2

    .line 1417
    :cond_15
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 1419
    .local v2, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    if-eqz p2, :cond_20

    .line 1421
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_24

    .line 1424
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_20
    invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 1426
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_24
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_78

    .line 1434
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    .line 1435
    .local v4, "verified":Landroid/content/pm/SigningDetails;
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v5, v6, :cond_4e

    .line 1436
    new-instance v5, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1437
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v7

    .line 1438
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v8

    .line 1439
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_5c

    .line 1441
    :cond_4e
    iget-object v5, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1442
    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 1441
    invoke-static {v5, v6}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1448
    :goto_5c
    return-void

    .line 1443
    :cond_5d
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v6, -0x68

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has mismatched certificates"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1427
    .end local v4    # "verified":Landroid/content/pm/SigningDetails;
    :cond_78
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v5

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    .line 1428
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static greylist collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1380
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1381
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1382
    .local v0, "childCount":I
    :goto_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_21

    .line 1383
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1384
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1382
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1386
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method private static greylist-max-o collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1390
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1392
    const-wide/32 v0, 0x40000

    const-string v2, "collectCertificates"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1394
    :try_start_c
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1396
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 1398
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 1397
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1402
    .end local v2    # "i":I
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1403
    nop

    .line 1404
    return-void

    .line 1402
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1403
    throw v2
.end method

.method public static greylist-max-o computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "outError"    # [Ljava/lang/String;

    .line 2678
    const/4 v0, -0x1

    const-string v1, ")"

    const/4 v2, 0x0

    if-nez p1, :cond_2d

    .line 2679
    if-gt p0, p2, :cond_9

    .line 2680
    return p0

    .line 2684
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requires newer sdk version #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current version is #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2686
    return v0

    .line 2691
    :cond_2d
    invoke-static {p3, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2692
    const/16 v0, 0x2710

    return v0

    .line 2696
    :cond_36
    array-length v3, p3

    const-string v4, "Requires development platform "

    if-lez v3, :cond_61

    .line 2697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (current platform is any of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2699
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7a

    .line 2701
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but this is a release platform."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v2

    .line 2704
    :goto_7a
    return v0
.end method

.method public static blacklist computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2614
    if-nez p1, :cond_3

    .line 2615
    return p0

    .line 2620
    :cond_3
    invoke-static {p2, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2621
    const/16 v0, 0x2710

    return v0

    .line 2625
    :cond_c
    array-length v0, p2

    const-string v1, "Requires development platform "

    const/4 v2, 0x0

    if-lez v0, :cond_3a

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (current platform is any of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2628
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    goto :goto_53

    .line 2630
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but this is a release platform."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 2633
    :goto_53
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z
    .registers 10
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 7950
    const/4 v0, 0x1

    if-eqz p4, :cond_4

    .line 7953
    return v0

    .line 7955
    :cond_4
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 7956
    nop

    .line 7957
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v1

    if-ne v1, v0, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    move v1, v2

    .line 7958
    .local v1, "enabled":Z
    :goto_15
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_1c

    .line 7959
    return v0

    .line 7962
    .end local v1    # "enabled":Z
    :cond_1c
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_27

    move v1, v0

    goto :goto_28

    :cond_27
    move v1, v2

    .line 7963
    .local v1, "suspended":Z
    :goto_28
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v3

    if-eq v3, v1, :cond_2f

    .line 7964
    return v0

    .line 7966
    :cond_2f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_73

    .line 7969
    :cond_3c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 7970
    return v0

    .line 7972
    :cond_43
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_50

    .line 7973
    return v0

    .line 7975
    :cond_50
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_5b

    if-nez p3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5b

    .line 7977
    :cond_5a
    return v0

    .line 7979
    :cond_5b
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_64

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_64

    .line 7981
    return v0

    .line 7983
    :cond_64
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_6d

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_6d

    .line 7985
    return v0

    .line 7987
    :cond_6d
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_72

    .line 7988
    return v0

    .line 7990
    :cond_72
    return v2

    .line 7967
    :cond_73
    :goto_73
    return v0
.end method

.method public static final blacklist generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8272
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8273
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 8274
    return-object v0

    .line 8278
    :cond_d
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object p0, v0

    .line 8279
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8280
    return-object p0
.end method

.method public static final greylist generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8255
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8256
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8257
    return-object v0

    .line 8259
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8260
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8261
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 8264
    :cond_23
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8265
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 8266
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8267
    return-object v0
.end method

.method private blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .registers 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 4256
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    .line 4258
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    iput-object p1, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4259
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 4261
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const v2, 0x1030055

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4262
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4263
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    sget-object v3, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4264
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4265
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v3, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4266
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v5, ":app_details"

    invoke-static {v3, v4, v5, p3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4268
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 4269
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4270
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4271
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4272
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3, v3}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4273
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4274
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4275
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, -0x1

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4276
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x4

    iput v4, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4277
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4278
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4279
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4280
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v3, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4281
    if-eqz p4, :cond_8e

    .line 4282
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4284
    :cond_8e
    return-object v0
.end method

.method public static blacklist generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8096
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8097
    :cond_4
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 8098
    return-object v0

    .line 8102
    :cond_b
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object p0, v0

    .line 8103
    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8104
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8105
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2a

    .line 8107
    :cond_22
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8109
    :goto_2a
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8110
    return-object p0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 7996
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8056
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8057
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_66

    .line 8060
    :cond_13
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2e

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_26

    .line 8062
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    .line 8071
    :cond_26
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8072
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 8076
    :cond_2e
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8077
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8078
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_40

    .line 8079
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 8081
    :cond_40
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_4c

    .line 8082
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8083
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 8085
    :cond_4c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 8086
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_62

    .line 8088
    :cond_5a
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8090
    :goto_62
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8091
    return-object v0

    .line 8058
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_66
    :goto_66
    return-object v0
.end method

.method public static final greylist generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .line 8528
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8529
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8530
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    .line 8532
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 8533
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 8534
    return-object v0
.end method

.method public static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 14
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I

    .line 706
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    .line 707
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 706
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 29
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "gids"    # [I
    .param p3, "flags"    # I
    .param p4, "firstInstallTime"    # J
    .param p6, "lastUpdateTime"    # J
    .param p9, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/apex/ApexInfo;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 713
    .local p8, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v4, v6}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_31f

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v6

    if-nez v6, :cond_1d

    const/4 v7, 0x0

    goto/16 :goto_320

    .line 716
    :cond_1d
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 717
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 718
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 719
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 720
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 721
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 722
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 723
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 724
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 725
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 726
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 727
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 728
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v8, v6, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 729
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v8, v6, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 730
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_68

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_6c

    .line 732
    :cond_68
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v8, v6, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 734
    :cond_6c
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 735
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 736
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 737
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 738
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 739
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 740
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v8, v6, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 741
    iget v8, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v8, v6, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 742
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 743
    move-wide/from16 v10, p4

    iput-wide v10, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 744
    move-wide/from16 v12, p6

    iput-wide v12, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 745
    and-int/lit16 v8, v2, 0x100

    if-eqz v8, :cond_a1

    .line 746
    move-object/from16 v8, p2

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_a3

    .line 745
    :cond_a1
    move-object/from16 v8, p2

    .line 748
    :goto_a3
    and-int/lit16 v14, v2, 0x4000

    if-eqz v14, :cond_f3

    .line 749
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v14, :cond_b2

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    goto :goto_b3

    :cond_b2
    const/4 v14, 0x0

    .line 750
    .local v14, "N":I
    :goto_b3
    if-lez v14, :cond_c0

    .line 751
    new-array v7, v14, [Landroid/content/pm/ConfigurationInfo;

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 752
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 754
    :cond_c0
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v7, :cond_cb

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_cc

    :cond_cb
    const/4 v7, 0x0

    .line 755
    .end local v14    # "N":I
    .local v7, "N":I
    :goto_cc
    if-lez v7, :cond_d9

    .line 756
    new-array v14, v7, [Landroid/content/pm/FeatureInfo;

    iput-object v14, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 757
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 759
    :cond_d9
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v14, :cond_e4

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    goto :goto_e5

    :cond_e4
    const/4 v14, 0x0

    :goto_e5
    move v7, v14

    .line 760
    if-lez v7, :cond_f3

    .line 761
    new-array v14, v7, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v14, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 762
    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v6, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 765
    .end local v7    # "N":I
    :cond_f3
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_145

    .line 766
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 767
    .restart local v7    # "N":I
    if-lez v7, :cond_143

    .line 768
    const/4 v14, 0x0

    .line 769
    .local v14, "num":I
    new-array v15, v7, [Landroid/content/pm/ActivityInfo;

    .line 770
    .local v15, "res":[Landroid/content/pm/ActivityInfo;
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_106
    if-ge v9, v7, :cond_138

    .line 771
    move/from16 v17, v7

    .end local v7    # "N":I
    .local v17, "N":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Activity;

    .line 772
    .local v7, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v8, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v10, v2

    invoke-static {v4, v8, v10, v11}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 773
    sget-object v8, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_126

    .line 774
    goto :goto_12f

    .line 776
    :cond_126
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "num":I
    .local v8, "num":I
    invoke-static {v7, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    aput-object v10, v15, v14

    move v14, v8

    .line 770
    .end local v7    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v8    # "num":I
    .restart local v14    # "num":I
    :cond_12f
    :goto_12f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p2

    move-wide/from16 v10, p4

    move/from16 v7, v17

    goto :goto_106

    .end local v17    # "N":I
    .local v7, "N":I
    :cond_138
    move/from16 v17, v7

    .line 779
    .end local v7    # "N":I
    .end local v9    # "i":I
    .restart local v17    # "N":I
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ActivityInfo;

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_145

    .line 767
    .end local v14    # "num":I
    .end local v15    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v17    # "N":I
    .restart local v7    # "N":I
    :cond_143
    move/from16 v17, v7

    .line 782
    .end local v7    # "N":I
    :cond_145
    :goto_145
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_17e

    .line 783
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 784
    .restart local v7    # "N":I
    if-lez v7, :cond_17e

    .line 785
    const/4 v8, 0x0

    .line 786
    .restart local v8    # "num":I
    new-array v9, v7, [Landroid/content/pm/ActivityInfo;

    .line 787
    .local v9, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_155
    if-ge v10, v7, :cond_176

    .line 788
    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    .line 789
    .local v11, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v12, v2

    invoke-static {v4, v14, v12, v13}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v12

    if-eqz v12, :cond_171

    .line 790
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "num":I
    .local v12, "num":I
    invoke-static {v11, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    aput-object v13, v9, v8

    move v8, v12

    .line 787
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v12    # "num":I
    .restart local v8    # "num":I
    :cond_171
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, p6

    goto :goto_155

    .line 793
    .end local v10    # "i":I
    :cond_176
    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/ActivityInfo;

    iput-object v10, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 796
    .end local v7    # "N":I
    .end local v8    # "num":I
    .end local v9    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_17e
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_1b5

    .line 797
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 798
    .restart local v7    # "N":I
    if-lez v7, :cond_1b5

    .line 799
    const/4 v8, 0x0

    .line 800
    .restart local v8    # "num":I
    new-array v9, v7, [Landroid/content/pm/ServiceInfo;

    .line 801
    .local v9, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_18e
    if-ge v10, v7, :cond_1ad

    .line 802
    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Service;

    .line 803
    .local v11, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v12, v11, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    int-to-long v13, v2

    invoke-static {v4, v12, v13, v14}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v12

    if-eqz v12, :cond_1aa

    .line 804
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "num":I
    .restart local v12    # "num":I
    invoke-static {v11, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v13

    aput-object v13, v9, v8

    move v8, v12

    .line 801
    .end local v11    # "s":Landroid/content/pm/PackageParser$Service;
    .end local v12    # "num":I
    .restart local v8    # "num":I
    :cond_1aa
    add-int/lit8 v10, v10, 0x1

    goto :goto_18e

    .line 807
    .end local v10    # "i":I
    :cond_1ad
    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/ServiceInfo;

    iput-object v10, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 810
    .end local v7    # "N":I
    .end local v8    # "num":I
    .end local v9    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_1b5
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_1ec

    .line 811
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 812
    .restart local v7    # "N":I
    if-lez v7, :cond_1ec

    .line 813
    const/4 v8, 0x0

    .line 814
    .restart local v8    # "num":I
    new-array v9, v7, [Landroid/content/pm/ProviderInfo;

    .line 815
    .local v9, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1c5
    if-ge v10, v7, :cond_1e4

    .line 816
    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    .line 817
    .local v11, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v12, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    int-to-long v13, v2

    invoke-static {v4, v12, v13, v14}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v12

    if-eqz v12, :cond_1e1

    .line 818
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "num":I
    .restart local v12    # "num":I
    invoke-static {v11, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v13

    aput-object v13, v9, v8

    move v8, v12

    .line 815
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v12    # "num":I
    .restart local v8    # "num":I
    :cond_1e1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c5

    .line 821
    .end local v10    # "i":I
    :cond_1e4
    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/ProviderInfo;

    iput-object v10, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 824
    .end local v7    # "N":I
    .end local v8    # "num":I
    .end local v9    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_1ec
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_212

    .line 825
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 826
    .restart local v7    # "N":I
    if-lez v7, :cond_212

    .line 827
    new-array v8, v7, [Landroid/content/pm/InstrumentationInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 828
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1fd
    if-ge v8, v7, :cond_212

    .line 829
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 830
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Instrumentation;

    .line 829
    invoke-static {v10, v2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v10

    aput-object v10, v9, v8

    .line 828
    add-int/lit8 v8, v8, 0x1

    goto :goto_1fd

    .line 834
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_212
    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_272

    .line 835
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 836
    .restart local v7    # "N":I
    if-lez v7, :cond_238

    .line 837
    new-array v8, v7, [Landroid/content/pm/PermissionInfo;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 838
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_223
    if-ge v8, v7, :cond_238

    .line 839
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v10, v2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    aput-object v10, v9, v8

    .line 838
    add-int/lit8 v8, v8, 0x1

    goto :goto_223

    .line 842
    .end local v8    # "i":I
    :cond_238
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 843
    if-lez v7, :cond_272

    .line 844
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 845
    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 846
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_249
    if-ge v8, v7, :cond_272

    .line 847
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 848
    .local v9, "perm":Ljava/lang/String;
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v9, v10, v8

    .line 850
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v10, v8

    const/4 v12, 0x1

    or-int/2addr v11, v12

    aput v11, v10, v8

    .line 851
    if-eqz v3, :cond_26f

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26f

    .line 852
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v11, v10, v8

    or-int/lit8 v11, v11, 0x2

    aput v11, v10, v8

    .line 846
    .end local v9    # "perm":Ljava/lang/String;
    :cond_26f
    add-int/lit8 v8, v8, 0x1

    goto :goto_249

    .line 858
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_272
    if-eqz v1, :cond_2bb

    .line 859
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 861
    .local v7, "apexFile":Ljava/io/File;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 862
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 863
    iget-boolean v8, v1, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v8, :cond_298

    .line 864
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    or-int/2addr v9, v10

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2a0

    .line 866
    :cond_298
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 868
    :goto_2a0
    iget-boolean v8, v1, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v8, :cond_2ae

    .line 869
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    or-int/2addr v9, v10

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2b8

    .line 871
    :cond_2ae
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const v10, -0x800001

    and-int/2addr v9, v10

    iput v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 873
    :goto_2b8
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 877
    .end local v7    # "apexFile":Ljava/io/File;
    :cond_2bb
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_2f3

    .line 878
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v7

    if-eqz v7, :cond_2d8

    .line 881
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/Signature;

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 882
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v7, v9

    goto :goto_2f3

    .line 883
    :cond_2d8
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v7

    if-eqz v7, :cond_2f3

    .line 885
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v7, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    .line 886
    .local v7, "numberOfSigs":I
    new-array v8, v7, [Landroid/content/pm/Signature;

    iput-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 887
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    invoke-static {v8, v10, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    .end local v7    # "numberOfSigs":I
    :cond_2f3
    :goto_2f3
    const/high16 v7, 0x8000000

    and-int/2addr v7, v2

    if-eqz v7, :cond_31e

    .line 893
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v8, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v7, v8, :cond_31b

    .line 895
    new-instance v7, Landroid/content/pm/SigningInfo;

    new-instance v8, Landroid/content/pm/SigningDetails;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v11, v11, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    invoke-direct {v7, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_31e

    .line 901
    :cond_31b
    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 904
    :cond_31e
    :goto_31e
    return-object v6

    .line 713
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_31f
    const/4 v7, 0x0

    .line 714
    :goto_320
    return-object v7
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;
    .registers 19
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 683
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 684
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 683
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 21
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/pkg/FrameworkPackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 692
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .line 8128
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8129
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8130
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    .line 8132
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 8133
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 8134
    return-object v0
.end method

.method public static final greylist generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .line 8116
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8117
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 8118
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    .line 8120
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 8121
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 8122
    return-object v0
.end method

.method public static final greylist generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8445
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8446
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8447
    return-object v0

    .line 8449
    :cond_f
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2d

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_23

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_2d

    .line 8452
    :cond_23
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8453
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 8456
    :cond_2d
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 8457
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 8458
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_3e

    .line 8459
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 8461
    :cond_3e
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8462
    return-object v1
.end method

.method public static final greylist generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p3, "userId"    # I

    .line 8347
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8348
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8349
    return-object v0

    .line 8351
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8352
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8353
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 8356
    :cond_23
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 8357
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 8358
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8359
    return-object v0
.end method

.method public static greylist-max-o getActivityConfigChanges(II)I
    .registers 3
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 4797
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method public static blacklist getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;
    .registers 2
    .param p0, "userState"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 9326
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9327
    const-string v0, ":ephemeralapp:complete"

    return-object v0

    .line 9329
    :cond_9
    const-string v0, ":complete"

    return-object v0
.end method

.method private static greylist-max-o hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .registers 12
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 3992
    const/4 v0, 0x0

    if-eqz p0, :cond_53

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    goto :goto_53

    .line 3993
    :cond_8
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3994
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3995
    .local v2, "countActivities":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_f
    if-ge v3, v2, :cond_52

    .line 3996
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 3997
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3998
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_1c

    goto :goto_4f

    .line 3999
    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4000
    .local v6, "countFilters":I
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_21
    if-ge v7, v6, :cond_4f

    .line 4001
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4002
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_32

    goto :goto_4a

    .line 4003
    :cond_32
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_39

    goto :goto_4a

    .line 4004
    :cond_39
    const-string v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4d

    .line 4005
    const-string v9, "https"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto :goto_4d

    .line 4000
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4a
    :goto_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 4006
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    return v0

    .line 3995
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "countFilters":I
    .end local v7    # "m":I
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4010
    .end local v3    # "n":I
    :cond_52
    return v0

    .line 3992
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    .end local v2    # "countActivities":I
    :cond_53
    :goto_53
    return v0
.end method

.method public static final greylist-max-o isApkFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 639
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isApkPath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 643
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z
    .registers 3
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 669
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z
    .registers 10
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "flags"    # J

    .line 9194
    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v4

    .line 9195
    .local v0, "matchAnyUser":Z
    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, v4

    .line 9196
    .local v2, "matchUninstalled":Z
    :goto_19
    if-nez v0, :cond_2c

    .line 9197
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 9198
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 9196
    :goto_2d
    return v1
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9212
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZLandroid/content/pm/ComponentInfo;J)Z
    .registers 11
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "parsedComponent"    # Landroid/content/pm/ComponentInfo;
    .param p3, "flags"    # J

    .line 9218
    invoke-virtual {p2}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v2

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z
    .registers 13
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "isComponentEnabled"    # Z
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 9228
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 9229
    return v1

    .line 9234
    :cond_b
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_30

    :pswitch_13
    goto :goto_21

    .line 9239
    :pswitch_14
    const-wide/32 v5, 0x8000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-nez v0, :cond_1e

    .line 9240
    return v4

    .line 9237
    :pswitch_1d
    return v4

    .line 9244
    :cond_1e
    :pswitch_1e
    if-nez p1, :cond_21

    .line 9245
    return v4

    .line 9254
    :cond_21
    :goto_21
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9255
    return v1

    .line 9256
    :cond_28
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9257
    return v4

    .line 9260
    :cond_2f
    return p2

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private greylist-max-o isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/pm/PackageParser$IntentInfo;

    .line 5585
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5586
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5587
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5588
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 5585
    :goto_24
    return v0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 9146
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    invoke-static/range {v1 .. v8}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLandroid/content/pm/ComponentInfo;J)Z
    .registers 14
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "component"    # Landroid/content/pm/ComponentInfo;
    .param p4, "flags"    # J

    .line 9153
    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v3

    iget-boolean v4, p3, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v5, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 22
    .param p0, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "isComponentEnabled"    # Z
    .param p4, "isComponentDirectBootAware"    # Z
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "flags"    # J

    .line 9169
    move-wide/from16 v6, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_10

    move v0, v10

    goto :goto_11

    :cond_10
    move v0, v11

    :goto_11
    move v12, v0

    .line 9170
    .local v12, "matchUninstalled":Z
    move-object v13, p0

    invoke-static {p0, v6, v7}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_1d

    if-nez v12, :cond_22

    .line 9171
    :cond_1d
    invoke-static {v11, v6, v7}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9174
    :cond_22
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_36

    .line 9175
    invoke-static {v11, v6, v7}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9178
    :cond_36
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_45

    .line 9179
    if-nez p1, :cond_45

    .line 9180
    invoke-static {v11, v6, v7}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 9184
    :cond_45
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_51

    if-nez p4, :cond_51

    move v0, v10

    goto :goto_52

    :cond_51
    move v0, v11

    .line 9186
    .local v0, "matchesUnaware":Z
    :goto_52
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v6

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5e

    if-eqz p4, :cond_5e

    move v1, v10

    goto :goto_5f

    :cond_5e
    move v1, v11

    .line 9188
    .local v1, "matchesAware":Z
    :goto_5f
    if-nez v0, :cond_65

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_64
    move v10, v11

    :cond_65
    :goto_65
    invoke-static {v10, v6, v7}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 4
    .param p0, "a1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "a2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3965
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 4
    .param p0, "r1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "r2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3968
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .registers 4
    .param p0, "s1"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "s2"    # Landroid/content/pm/PackageParser$Service;

    .line 3971
    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static blacklist matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "codeNames"    # [Ljava/lang/String;
    .param p1, "targetCode"    # Ljava/lang/String;

    .line 2571
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2572
    .local v0, "targetCodeIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2573
    move-object v1, p1

    .local v1, "targetCodeName":Ljava/lang/String;
    goto :goto_10

    .line 2575
    .end local v1    # "targetCodeName":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2577
    .restart local v1    # "targetCodeName":Ljava/lang/String;
    :goto_10
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static greylist-max-o newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .registers 20

    .line 1451
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .local v0, "assetManager":Landroid/content/res/AssetManager;
    move-object v1, v0

    .line 1452
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 1454
    return-object v0
.end method

.method private greylist-max-o parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .registers 39
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4291
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4293
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_35

    .line 4294
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x2c

    const/16 v15, 0x17

    const/16 v16, 0x1e

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x7

    const/16 v19, 0x11

    const/16 v20, 0x5

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p5

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4307
    :cond_35
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_3c

    const-string v8, "<receiver>"

    goto :goto_3e

    :cond_3c
    const-string v8, "<activity>"

    :goto_3e
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4308
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4309
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4311
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v0

    .line 4312
    .local v9, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_61

    .line 4313
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4314
    return-object v11

    .line 4317
    :cond_61
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 4318
    .local v12, "setExported":Z
    if-eqz v12, :cond_70

    .line 4319
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4322
    :cond_70
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4324
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x1a

    iget-object v14, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4327
    const/16 v0, 0x1b

    const/16 v13, 0x400

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 4330
    .local v14, "parentName":Ljava/lang/String;
    const-string v0, "Activity "

    const-string v15, "PackageParser"

    if-eqz v14, :cond_cf

    .line 4331
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v14, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4332
    .local v13, "parentClassName":Ljava/lang/String;
    aget-object v17, v3, v10

    if-nez v17, :cond_a8

    .line 4333
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v13, v10, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const/4 v11, 0x0

    goto :goto_d0

    .line 4335
    :cond_a8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " specified invalid parentActivityName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v10, v3, v11

    goto :goto_d0

    .line 4330
    .end local v13    # "parentClassName":Ljava/lang/String;
    :cond_cf
    move v11, v10

    .line 4342
    :goto_d0
    const/4 v10, 0x4

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 4343
    .local v13, "str":Ljava/lang/String;
    if-nez v13, :cond_e0

    .line 4344
    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v10, v11, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_f4

    .line 4346
    :cond_e0
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f1

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_f2

    :cond_f1
    const/4 v11, 0x0

    :goto_f2
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4349
    :goto_f4
    const/16 v10, 0x8

    const/16 v11, 0x400

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 4352
    iget-object v11, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v10, v2, v13, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4355
    const/16 v2, 0x30

    .line 4356
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4357
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, " at "

    if-nez v2, :cond_152

    .line 4358
    invoke-static {v11, v10, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 4359
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_14e

    .line 4360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " specified invalid splitName "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_152

    .line 4363
    :cond_14e
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v11, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4367
    .end local v2    # "error":Ljava/lang/String;
    :cond_152
    :goto_152
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4368
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_167

    .line 4370
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v2, v10

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4373
    :cond_167
    const/16 v0, 0xa

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v21, 0x2

    if-eqz v0, :cond_17a

    .line 4374
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4377
    :cond_17a
    const/16 v0, 0xb

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 4378
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v19, 0x4

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4381
    :cond_18d
    const/16 v0, 0x15

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 4382
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4385
    :cond_19e
    const/16 v0, 0x12

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 4386
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v20, 0x8

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4389
    :cond_1b1
    const/16 v0, 0xc

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v2, 0x10

    if-eqz v0, :cond_1c3

    .line 4390
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v10, v2

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4393
    :cond_1c3
    const/16 v0, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v10, 0x20

    if-eqz v0, :cond_1d5

    .line 4394
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v2, v10

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4397
    :cond_1d5
    const/16 v0, 0x13

    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_1e0

    const/4 v2, 0x1

    goto :goto_1e1

    :cond_1e0
    const/4 v2, 0x0

    :goto_1e1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 4399
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4402
    :cond_1ef
    const/16 v0, 0x16

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 4403
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4406
    :cond_200
    const/16 v0, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_211

    const/16 v0, 0x27

    .line 4407
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 4408
    :cond_211
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v10, 0x400

    or-int/2addr v2, v10

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4411
    :cond_21a
    const/16 v0, 0x18

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 4412
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4415
    :cond_22b
    const/16 v0, 0x3f

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 4416
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v10, 0x20000000

    or-int/2addr v2, v10

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4419
    :cond_23d
    if-nez p7, :cond_3d9

    .line 4420
    const/16 v2, 0x19

    move/from16 v10, p8

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_251

    .line 4422
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4425
    :cond_251
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0xe

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4427
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x21

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4430
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x22

    .line 4432
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v4

    .line 4430
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4433
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4434
    const/16 v2, 0x10

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v5, 0x2f

    .line 4435
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 4433
    invoke-static {v2, v5}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4436
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4439
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4443
    const/16 v0, 0x1f

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 4444
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4447
    :cond_2b0
    const/16 v0, 0x23

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c1

    .line 4448
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4451
    :cond_2c1
    const/16 v0, 0x24

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 4452
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4455
    :cond_2d2
    const/16 v0, 0x25

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 4456
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4459
    :cond_2e3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0xf

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4463
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v7, v0, v1, v6}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4465
    const/16 v0, 0x29

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 4467
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x400000

    or-int/2addr v2, v5

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4470
    :cond_305
    const/16 v0, 0x3e

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_317

    .line 4471
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000

    or-int/2addr v2, v5

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4474
    :cond_317
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_32e

    .line 4475
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_32e

    .line 4477
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4481
    :cond_32e
    const/16 v0, 0x35

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_344

    .line 4482
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_344

    .line 4484
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4488
    :cond_344
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x26

    .line 4489
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4491
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4495
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2b

    .line 4496
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4498
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2e

    .line 4499
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4501
    invoke-static {}, Landroid/content/pm/PackageParserStub;->get()Landroid/content/pm/PackageParserStub;

    move-result-object v0

    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/pm/PackageParserStub;->isWcgWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_387

    .line 4502
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x31

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    const/4 v4, 0x0

    goto :goto_392

    .line 4506
    :cond_387
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x31

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4510
    :goto_392
    const/16 v0, 0x38

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3a3

    .line 4512
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x2000000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4515
    :cond_3a3
    const/16 v0, 0x33

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3b5

    .line 4516
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4519
    :cond_3b5
    const/16 v0, 0x34

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3c7

    .line 4520
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4523
    :cond_3c7
    const/16 v0, 0x36

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_402

    .line 4524
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    goto :goto_402

    .line 4527
    :cond_3d9
    move/from16 v10, p8

    move-object/from16 v24, v4

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4528
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4530
    const/16 v0, 0x1c

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3f7

    .line 4531
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4534
    :cond_3f7
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x2a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4539
    :cond_402
    :goto_402
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v0, :cond_410

    .line 4540
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4545
    :cond_410
    const/16 v0, 0x2d

    .line 4546
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 4547
    .local v16, "visibleToEphemeral":Z
    const/high16 v22, 0x100000

    if-eqz v16, :cond_426

    .line 4548
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v22

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4549
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4552
    :cond_426
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4554
    if-eqz p7, :cond_445

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_445

    .line 4558
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v2, :cond_442

    .line 4559
    const-string v0, "Heavy-weight applications can not have receivers in main process"

    const/16 v17, 0x0

    aput-object v0, v3, v17

    goto :goto_447

    .line 4558
    :cond_442
    const/16 v17, 0x0

    goto :goto_447

    .line 4554
    :cond_445
    const/16 v17, 0x0

    .line 4563
    :goto_447
    aget-object v0, v3, v17

    if-eqz v0, :cond_44d

    .line 4564
    const/4 v0, 0x0

    return-object v0

    .line 4567
    :cond_44d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 4569
    .local v5, "outerDepth":I
    :goto_451
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v4, v0

    const/4 v2, 0x1

    .local v4, "type":I
    if-eq v0, v2, :cond_708

    const/4 v0, 0x3

    if-ne v4, v0, :cond_475

    .line 4571
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v5, :cond_463

    goto :goto_475

    :cond_463
    move-object/from16 v2, p3

    move-object/from16 v27, v1

    move-object v8, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move-object v10, v6

    move-object/from16 v26, v11

    const/16 v20, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_718

    .line 4572
    :cond_475
    :goto_475
    if-eq v4, v0, :cond_6e9

    const/4 v2, 0x4

    if-ne v4, v2, :cond_47b

    .line 4573
    goto :goto_451

    .line 4576
    :cond_47b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent-filter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, " "

    if-eqz v0, :cond_53d

    .line 4577
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4578
    .local v0, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v23, 0x1

    const/16 v25, 0x1

    move-object/from16 v26, v0

    .end local v0    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v26, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v0, p0

    move-object/from16 v27, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v27, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v1, p2

    move-object/from16 v28, v2

    const/16 v19, 0x4

    const/16 v20, 0x1

    move-object/from16 v2, p3

    move-object v8, v3

    move/from16 v3, v23

    move/from16 v23, v4

    move-object/from16 v29, v24

    .end local v4    # "type":I
    .local v23, "type":I
    move/from16 v4, v25

    move/from16 v24, v5

    .end local v5    # "outerDepth":I
    .local v24, "outerDepth":I
    move-object/from16 v5, v26

    move-object v10, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4ba

    .line 4580
    const/4 v0, 0x0

    return-object v0

    .line 4582
    :cond_4ba
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_4e9

    .line 4583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in intent filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4585
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4583
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v26

    goto :goto_4fc

    .line 4587
    :cond_4e9
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4588
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v1, v26

    .end local v26    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4591
    :goto_4fc
    if-eqz v16, :cond_501

    .line 4592
    move/from16 v0, v20

    goto :goto_50e

    .line 4593
    :cond_501
    if-nez p7, :cond_50c

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_50c

    .line 4594
    move/from16 v0, v21

    goto :goto_50e

    .line 4595
    :cond_50c
    move/from16 v0, v17

    :goto_50e
    nop

    .line 4596
    .local v0, "visibility":I
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4597
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_520

    .line 4598
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v3, v3, v22

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4600
    :cond_520
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_52f

    .line 4601
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4615
    .end local v0    # "visibility":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_52f
    move-object v3, v8

    move-object v6, v10

    move/from16 v5, v24

    move-object/from16 v1, v27

    move-object/from16 v24, v29

    move/from16 v8, p4

    move/from16 v10, p8

    goto/16 :goto_451

    .end local v23    # "type":I
    .end local v24    # "outerDepth":I
    .end local v27    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "type":I
    .restart local v5    # "outerDepth":I
    :cond_53d
    move-object/from16 v27, v1

    move-object v8, v3

    move/from16 v23, v4

    move-object v10, v6

    move-object/from16 v29, v24

    const/16 v19, 0x4

    const/16 v20, 0x1

    move-object v6, v2

    move/from16 v24, v5

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "type":I
    .end local v5    # "outerDepth":I
    .restart local v23    # "type":I
    .restart local v24    # "outerDepth":I
    .restart local v27    # "sa":Landroid/content/res/TypedArray;
    if-nez p7, :cond_5fa

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5fa

    .line 4616
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v5, v0

    .line 4617
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v25, v5

    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v25, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v26, v11

    move-object v11, v6

    .end local v11    # "splitName":Ljava/lang/String;
    .local v26, "splitName":Ljava/lang/String;
    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_578

    .line 4619
    const/4 v0, 0x0

    return-object v0

    .line 4621
    :cond_578
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_5a5

    .line 4622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in preferred at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4624
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4622
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v25

    goto :goto_5b7

    .line 4626
    :cond_5a5
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_5b0

    .line 4627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4629
    :cond_5b0
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move-object/from16 v1, v25

    .end local v25    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4632
    :goto_5b7
    if-eqz v16, :cond_5bc

    .line 4633
    move/from16 v11, v20

    goto :goto_5c9

    .line 4634
    :cond_5bc
    if-nez p7, :cond_5c7

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_5c7

    .line 4635
    move/from16 v11, v21

    goto :goto_5c9

    .line 4636
    :cond_5c7
    move/from16 v11, v17

    :goto_5c9
    move v0, v11

    .line 4637
    .restart local v0    # "visibility":I
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4638
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_5db

    .line 4639
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v3, v3, v22

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4641
    :cond_5db
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_5ea

    .line 4642
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4644
    .end local v0    # "visibility":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_5ea
    move-object v3, v8

    move-object v6, v10

    move/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v1, v27

    move-object/from16 v24, v29

    move/from16 v8, p4

    move/from16 v10, p8

    goto/16 :goto_451

    .line 4615
    .end local v26    # "splitName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_5fa
    move-object/from16 v26, v11

    move-object v11, v6

    .line 4644
    .end local v11    # "splitName":Ljava/lang/String;
    .restart local v26    # "splitName":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62b

    .line 4645
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v7, v1, v2, v0, v8}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_61a

    .line 4647
    const/4 v0, 0x0

    return-object v0

    .line 4645
    :cond_61a
    const/4 v0, 0x0

    move-object v3, v8

    move-object v6, v10

    move/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v1, v27

    move-object/from16 v24, v29

    move/from16 v8, p4

    move/from16 v10, p8

    goto/16 :goto_451

    .line 4649
    :cond_62b
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    if-nez p7, :cond_651

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_651

    .line 4650
    invoke-direct {v7, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    move-object v3, v8

    move-object v6, v10

    move/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v1, v27

    move-object/from16 v24, v29

    move/from16 v8, p4

    move/from16 v10, p8

    goto/16 :goto_451

    .line 4653
    :cond_651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    if-eqz p7, :cond_6a4

    .line 4655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4657
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4655
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d6

    .line 4659
    :cond_6a4
    move-object/from16 v4, v29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4661
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4659
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    :goto_6d6
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4664
    move-object v3, v8

    move-object v6, v10

    move/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v1, v27

    move/from16 v8, p4

    move/from16 v10, p8

    move-object/from16 v24, v4

    goto/16 :goto_451

    .line 4572
    .end local v23    # "type":I
    .end local v24    # "outerDepth":I
    .end local v26    # "splitName":Ljava/lang/String;
    .end local v27    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "type":I
    .local v5, "outerDepth":I
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_6e9
    move-object/from16 v2, p3

    move-object/from16 v27, v1

    move-object v8, v3

    move/from16 v23, v4

    move-object v10, v6

    move-object/from16 v26, v11

    move-object/from16 v4, v24

    const/4 v0, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x1

    move-object/from16 v1, p2

    move/from16 v24, v5

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "type":I
    .end local v5    # "outerDepth":I
    .end local v11    # "splitName":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "outerDepth":I
    .restart local v26    # "splitName":Ljava/lang/String;
    .restart local v27    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v1, v27

    move/from16 v8, p4

    move/from16 v10, p8

    move-object/from16 v24, v4

    goto/16 :goto_451

    .line 4569
    .end local v23    # "type":I
    .end local v24    # "outerDepth":I
    .end local v26    # "splitName":Ljava/lang/String;
    .end local v27    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_708
    move-object/from16 v27, v1

    move/from16 v20, v2

    move-object v8, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move-object v10, v6

    move-object/from16 v26, v11

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 4676
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "type":I
    .end local v5    # "outerDepth":I
    .end local v11    # "splitName":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "outerDepth":I
    .restart local v26    # "splitName":Ljava/lang/String;
    .restart local v27    # "sa":Landroid/content/res/TypedArray;
    :goto_718
    invoke-direct {v7, v9}, Landroid/content/pm/PackageParser;->resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V

    .line 4678
    if-nez v12, :cond_72e

    .line 4679
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_72a

    move/from16 v3, v20

    goto :goto_72c

    :cond_72a
    move/from16 v3, v17

    :goto_72c
    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4682
    :cond_72e
    return-object v9
.end method

.method private greylist-max-o parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .registers 40
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4876
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4879
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/16 v15, 0x400

    invoke-virtual {v1, v0, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4882
    .local v0, "targetActivity":Ljava/lang/String;
    const/16 v21, 0x0

    const/4 v14, 0x0

    if-nez v0, :cond_26

    .line 4883
    const-string v8, "<activity-alias> does not specify android:targetActivity"

    aput-object v8, v3, v14

    .line 4884
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4885
    return-object v21

    .line 4888
    :cond_26
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v0, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4890
    if-nez v0, :cond_34

    .line 4891
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4892
    return-object v21

    .line 4895
    :cond_34
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_74

    .line 4896
    new-instance v13, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xb

    const/16 v18, 0x8

    const/16 v19, 0xa

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x4

    move-object v8, v13

    move-object/from16 v9, p1

    move-object/from16 v24, v10

    move-object/from16 v10, p5

    move-object/from16 v25, v13

    move/from16 v13, v16

    move v4, v14

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v24

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v8, v25

    iput-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4907
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v9, "<activity-alias>"

    iput-object v9, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_75

    .line 4895
    :cond_74
    move v4, v14

    .line 4910
    :goto_75
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4911
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v9, p4

    iput v9, v8, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4913
    const/4 v8, 0x0

    .line 4915
    .local v8, "target":Landroid/content/pm/PackageParser$Activity;
    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4916
    .local v10, "NA":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_87
    if-ge v11, v10, :cond_a0

    .line 4917
    iget-object v12, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Activity;

    .line 4918
    .local v12, "t":Landroid/content/pm/PackageParser$Activity;
    iget-object v13, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 4919
    move-object v8, v12

    .line 4920
    goto :goto_a0

    .line 4916
    .end local v12    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_9d
    add-int/lit8 v11, v11, 0x1

    goto :goto_87

    .line 4924
    .end local v11    # "i":I
    :cond_a0
    :goto_a0
    if-nez v8, :cond_c1

    .line 4925
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<activity-alias> target activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found in manifest"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    .line 4927
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4928
    return-object v21

    .line 4931
    :cond_c1
    new-instance v11, Landroid/content/pm/ActivityInfo;

    invoke-direct {v11}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 4932
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    iput-object v0, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4933
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4934
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->flags:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4935
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 4936
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->icon:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4937
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->logo:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4938
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->banner:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4939
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4940
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4941
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4942
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4943
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4944
    iget v12, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v12, :cond_114

    .line 4945
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4947
    :cond_114
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4948
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4949
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->theme:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4950
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4951
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4952
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4953
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4954
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4955
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v12, v11, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4956
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 4957
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 4958
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v12, v12, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v12, v11, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4959
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4961
    iget-object v12, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v12, v12, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v12, v11, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4963
    new-instance v12, Landroid/content/pm/PackageParser$Activity;

    iget-object v13, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v12, v13, v11}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 4964
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    aget-object v13, v3, v4

    if-eqz v13, :cond_17d

    .line 4965
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4966
    return-object v21

    .line 4969
    :cond_17d
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    .line 4971
    .local v14, "setExported":Z
    if-eqz v14, :cond_18c

    .line 4972
    iget-object v15, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v15, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4977
    :cond_18c
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 4979
    .local v15, "str":Ljava/lang/String;
    if-eqz v15, :cond_1aa

    .line 4980
    iget-object v13, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1a6

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    goto :goto_1a8

    :cond_1a6
    move-object/from16 v4, v21

    :goto_1a8
    iput-object v4, v13, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4983
    :cond_1aa
    const/16 v4, 0x9

    const/16 v13, 0x400

    invoke-virtual {v1, v4, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 4986
    .local v13, "parentName":Ljava/lang/String;
    const-string v4, "PackageParser"

    if-eqz v13, :cond_1f5

    .line 4987
    move-object/from16 v18, v0

    .end local v0    # "targetActivity":Ljava/lang/String;
    .local v18, "targetActivity":Ljava/lang/String;
    iget-object v0, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v13, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4988
    .local v0, "parentClassName":Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v19, v3, v17

    if-nez v19, :cond_1cb

    .line 4989
    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1f7

    .line 4991
    :cond_1cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    .end local v0    # "parentClassName":Ljava/lang/String;
    .local v19, "parentClassName":Ljava/lang/String;
    const-string v0, "Activity alias "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " specified invalid parentActivityName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    const/4 v0, 0x0

    aput-object v21, v3, v0

    goto :goto_1f7

    .line 4986
    .end local v18    # "targetActivity":Ljava/lang/String;
    .end local v19    # "parentClassName":Ljava/lang/String;
    .local v0, "targetActivity":Ljava/lang/String;
    :cond_1f5
    move-object/from16 v18, v0

    .line 4998
    .end local v0    # "targetActivity":Ljava/lang/String;
    .restart local v18    # "targetActivity":Ljava/lang/String;
    :goto_1f7
    iget-object v0, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v19, 0x100000

    and-int v0, v0, v19

    const/4 v2, 0x1

    if-eqz v0, :cond_204

    move v0, v2

    goto :goto_205

    :cond_204
    const/4 v0, 0x0

    :goto_205
    move/from16 v20, v0

    .line 5001
    .local v20, "visibleToEphemeral":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5003
    const/16 v17, 0x0

    aget-object v0, v3, v17

    if-eqz v0, :cond_211

    .line 5004
    return-object v21

    .line 5007
    :cond_211
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5009
    .local v0, "outerDepth":I
    :goto_215
    move-object/from16 v22, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v22, "sa":Landroid/content/res/TypedArray;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move/from16 v23, v1

    .local v23, "type":I
    if-eq v1, v2, :cond_3a6

    move-object/from16 v16, v4

    move/from16 v1, v23

    const/4 v4, 0x3

    .end local v23    # "type":I
    .local v1, "type":I
    if-ne v1, v4, :cond_23b

    .line 5011
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_22d

    goto :goto_23b

    :cond_22d
    move-object/from16 v4, p3

    move/from16 v27, v0

    move/from16 v28, v1

    move-object/from16 v30, v8

    const/16 v29, 0x1

    move-object v8, v3

    move-object v3, v5

    goto/16 :goto_3b2

    .line 5012
    :cond_23b
    :goto_23b
    if-eq v1, v4, :cond_38a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_246

    .line 5013
    move-object/from16 v4, v16

    move-object/from16 v1, v22

    const/4 v2, 0x1

    goto :goto_215

    .line 5016
    :cond_246
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "intent-filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    if-eqz v2, :cond_309

    .line 5017
    new-instance v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v2, v12}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 5018
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v27, v0

    .end local v0    # "outerDepth":I
    .local v27, "outerDepth":I
    move-object/from16 v0, p0

    move/from16 v28, v1

    .end local v1    # "type":I
    .local v28, "type":I
    move-object/from16 v1, p2

    move-object/from16 v23, v2

    const/16 v29, 0x1

    .end local v2    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v23, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v2, p3

    move-object/from16 v30, v8

    move-object v8, v3

    .end local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    .local v30, "target":Landroid/content/pm/PackageParser$Activity;
    move/from16 v3, v25

    move-object/from16 v31, v4

    move-object/from16 v32, v16

    const/16 v16, 0x3

    move/from16 v4, v26

    move-object/from16 v5, v23

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_283

    .line 5020
    return-object v21

    .line 5022
    :cond_283
    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_2b4

    .line 5023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No actions in intent filter at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5025
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5023
    move-object/from16 v2, v32

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v23

    goto :goto_2c9

    .line 5027
    :cond_2b4
    move-object/from16 v2, v32

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v12, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 5028
    iget-object v0, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v1, v23

    .end local v23    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5031
    :goto_2c9
    if-eqz v20, :cond_2ce

    .line 5032
    move/from16 v0, v29

    goto :goto_2d8

    .line 5033
    :cond_2ce
    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 5034
    const/4 v0, 0x2

    goto :goto_2d8

    .line 5035
    :cond_2d6
    move/from16 v0, v17

    :goto_2d8
    nop

    .line 5036
    .local v0, "visibility":I
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5037
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 5038
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v4, v4, v19

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5040
    :cond_2ea
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2f9

    .line 5041
    iget-object v3, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 5043
    .end local v0    # "visibility":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2f9
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object v4, v2

    move-object v3, v8

    move-object/from16 v1, v22

    move/from16 v0, v27

    move/from16 v2, v29

    move-object/from16 v8, v30

    goto/16 :goto_215

    .end local v27    # "outerDepth":I
    .end local v28    # "type":I
    .end local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    .local v0, "outerDepth":I
    .local v1, "type":I
    .restart local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_309
    move/from16 v27, v0

    move/from16 v28, v1

    move-object v1, v4

    move-object/from16 v30, v8

    move-object/from16 v2, v16

    const/16 v16, 0x3

    const/16 v29, 0x1

    move-object v8, v3

    .end local v0    # "outerDepth":I
    .end local v1    # "type":I
    .end local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v27    # "outerDepth":I
    .restart local v28    # "type":I
    .restart local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 5044
    iget-object v0, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v7, v3, v4, v0, v8}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v12, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_333

    .line 5046
    return-object v21

    .line 5044
    :cond_333
    move-object/from16 v6, p1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v8

    move-object/from16 v1, v22

    move/from16 v0, v27

    move/from16 v2, v29

    move-object/from16 v8, v30

    goto/16 :goto_215

    .line 5050
    :cond_342
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5052
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5050
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5054
    move-object/from16 v6, p1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v8

    move-object/from16 v1, v22

    move/from16 v0, v27

    move/from16 v2, v29

    move-object/from16 v8, v30

    goto/16 :goto_215

    .line 5012
    .end local v27    # "outerDepth":I
    .end local v28    # "type":I
    .end local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "type":I
    .restart local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_38a
    move/from16 v27, v0

    move/from16 v28, v1

    move-object/from16 v30, v8

    move-object/from16 v2, v16

    const/16 v29, 0x1

    move-object v8, v3

    move/from16 v16, v4

    move-object v3, v5

    move-object/from16 v4, p3

    .end local v0    # "outerDepth":I
    .end local v1    # "type":I
    .end local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v27    # "outerDepth":I
    .restart local v28    # "type":I
    .restart local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v6, p1

    move-object v4, v2

    move-object v3, v8

    move-object/from16 v1, v22

    move/from16 v2, v29

    move-object/from16 v8, v30

    goto/16 :goto_215

    .line 5009
    .end local v27    # "outerDepth":I
    .end local v28    # "type":I
    .end local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v0    # "outerDepth":I
    .restart local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    .local v23, "type":I
    :cond_3a6
    move-object/from16 v4, p3

    move/from16 v27, v0

    move/from16 v29, v2

    move-object/from16 v30, v8

    move/from16 v28, v23

    move-object v8, v3

    move-object v3, v5

    .line 5062
    .end local v0    # "outerDepth":I
    .end local v8    # "target":Landroid/content/pm/PackageParser$Activity;
    .end local v23    # "type":I
    .restart local v27    # "outerDepth":I
    .restart local v28    # "type":I
    .restart local v30    # "target":Landroid/content/pm/PackageParser$Activity;
    :goto_3b2
    if-nez v14, :cond_3c5

    .line 5063
    iget-object v0, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v12, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3c1

    move/from16 v1, v29

    goto :goto_3c3

    :cond_3c1
    move/from16 v1, v17

    :goto_3c3
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 5066
    :cond_3c5
    return-object v12
.end method

.method private greylist-max-o parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2793
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2795
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2797
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_78

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    .line 2798
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_78

    .line 2799
    :cond_17
    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1d

    .line 2800
    goto :goto_6

    .line 2803
    :cond_1d
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2804
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2805
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2807
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2809
    .local v6, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2811
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    .line 2814
    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2815
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2816
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2817
    const/4 v5, 0x0

    return-object v5

    .line 2822
    :cond_5e
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2823
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 2825
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    goto :goto_77

    .line 2826
    :cond_74
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2828
    .end local v2    # "nodeName":Ljava/lang/String;
    :goto_77
    goto :goto_6

    .line 2830
    :cond_78
    return-object v0
.end method

.method private greylist-max-o parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5593
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5595
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_78

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5597
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_78

    .line 5598
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5599
    goto :goto_4

    .line 5602
    :cond_1b
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 5603
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 5605
    const/4 v1, 0x0

    return v1

    .line 5609
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5610
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5611
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5609
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5613
    goto :goto_4

    .line 5620
    :cond_78
    return v3
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 3
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1467
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "debugPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1481
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .registers 61
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1618
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1620
    .local v1, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 1621
    .local v2, "installLocation":I
    const/4 v3, 0x0

    .line 1622
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 1623
    .local v4, "versionCodeMajor":I
    const/4 v5, 0x0

    .line 1624
    .local v5, "targetSdkVersion":I
    const/4 v6, 0x1

    .line 1625
    .local v6, "minSdkVersion":I
    const/4 v7, 0x0

    .line 1626
    .local v7, "revisionCode":I
    const/4 v8, 0x0

    .line 1627
    .local v8, "coreApp":Z
    const/4 v9, 0x0

    .line 1628
    .local v9, "debuggable":Z
    const/16 v38, 0x0

    .line 1629
    .local v38, "profilableByShell":Z
    const/4 v10, 0x0

    .line 1630
    .local v10, "multiArch":Z
    const/4 v11, 0x0

    .line 1631
    .local v11, "use32bitAbi":Z
    const/4 v12, 0x1

    .line 1632
    .local v12, "extractNativeLibs":Z
    const/4 v13, 0x0

    .line 1633
    .local v13, "isolatedSplits":Z
    const/4 v14, 0x0

    .line 1634
    .local v14, "isFeatureSplit":Z
    const/4 v15, 0x0

    .line 1635
    .local v15, "isSplitRequired":Z
    const/16 v16, 0x0

    .line 1636
    .local v16, "useEmbeddedDex":Z
    const/16 v17, 0x0

    .line 1637
    .local v17, "configForSplit":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1638
    .local v18, "usesSplitName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1639
    .local v19, "targetPackage":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1640
    .local v20, "overlayIsStatic":Z
    const/16 v21, 0x0

    .line 1641
    .local v21, "overlayPriority":I
    const/16 v22, 0x0

    .line 1643
    .local v22, "rollbackDataPolicy":I
    const/16 v23, 0x0

    .line 1644
    .local v23, "requiredSystemPropertyName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1646
    .local v24, "requiredSystemPropertyValue":Ljava/lang/String;
    const/16 v25, 0x0

    move/from16 v39, v13

    move/from16 v40, v14

    move/from16 v41, v15

    move-object/from16 v42, v17

    move/from16 v13, v25

    .end local v14    # "isFeatureSplit":Z
    .end local v15    # "isSplitRequired":Z
    .end local v17    # "configForSplit":Ljava/lang/String;
    .local v13, "i":I
    .local v39, "isolatedSplits":Z
    .local v40, "isFeatureSplit":Z
    .local v41, "isSplitRequired":Z
    .local v42, "configForSplit":Ljava/lang/String;
    :goto_34
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v14

    if-ge v13, v14, :cond_d0

    .line 1647
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 1648
    .local v14, "attr":Ljava/lang/String;
    const-string v15, "installLocation"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4d

    .line 1649
    const/4 v15, -0x1

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    goto/16 :goto_cc

    .line 1651
    :cond_4d
    const-string/jumbo v15, "versionCode"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 1652
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    goto/16 :goto_cc

    .line 1653
    :cond_5d
    const/4 v15, 0x0

    const-string/jumbo v15, "versionCodeMajor"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6d

    .line 1654
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    goto :goto_cc

    .line 1655
    :cond_6d
    const/4 v15, 0x0

    const-string/jumbo v15, "revisionCode"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 1656
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    goto :goto_cc

    .line 1657
    :cond_7d
    const/4 v15, 0x0

    const-string v15, "coreApp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 1658
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    goto :goto_cc

    .line 1659
    :cond_8c
    const/4 v15, 0x0

    const-string v15, "isolatedSplits"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9d

    .line 1660
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    move/from16 v39, v15

    .end local v39    # "isolatedSplits":Z
    .local v15, "isolatedSplits":Z
    goto :goto_cc

    .line 1661
    .end local v15    # "isolatedSplits":Z
    .restart local v39    # "isolatedSplits":Z
    :cond_9d
    const-string v15, "configForSplit"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ac

    .line 1662
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v42, v15

    .end local v42    # "configForSplit":Ljava/lang/String;
    .local v15, "configForSplit":Ljava/lang/String;
    goto :goto_cc

    .line 1663
    .end local v15    # "configForSplit":Ljava/lang/String;
    .restart local v42    # "configForSplit":Ljava/lang/String;
    :cond_ac
    const-string v15, "isFeatureSplit"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_bc

    .line 1664
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    move/from16 v40, v15

    .end local v40    # "isFeatureSplit":Z
    .local v15, "isFeatureSplit":Z
    goto :goto_cc

    .line 1665
    .end local v15    # "isFeatureSplit":Z
    .restart local v40    # "isFeatureSplit":Z
    :cond_bc
    const/4 v15, 0x0

    const-string v15, "isSplitRequired"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cc

    .line 1666
    const/4 v15, 0x0

    invoke-interface {v0, v13, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    move/from16 v41, v15

    .line 1646
    .end local v14    # "attr":Ljava/lang/String;
    :cond_cc
    :goto_cc
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_34

    .line 1672
    .end local v13    # "i":I
    :cond_d0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v15, v13, 0x1

    .line 1674
    .local v15, "searchDepth":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v43, v10

    move/from16 v44, v11

    move/from16 v45, v12

    move/from16 v46, v16

    move-object/from16 v47, v18

    move-object/from16 v10, v19

    move/from16 v48, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    .line 1675
    .end local v16    # "useEmbeddedDex":Z
    .end local v18    # "usesSplitName":Ljava/lang/String;
    .end local v19    # "targetPackage":Ljava/lang/String;
    .end local v22    # "rollbackDataPolicy":I
    .end local v23    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v24    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v10, "targetPackage":Ljava/lang/String;
    .local v11, "requiredSystemPropertyName":Ljava/lang/String;
    .local v12, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v13, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v43, "multiArch":Z
    .local v44, "use32bitAbi":Z
    .local v45, "extractNativeLibs":Z
    .local v46, "useEmbeddedDex":Z
    .local v47, "usesSplitName":Ljava/lang/String;
    .local v48, "rollbackDataPolicy":I
    :goto_ee
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move/from16 v49, v14

    move/from16 v50, v5

    .end local v5    # "targetSdkVersion":I
    .local v49, "type":I
    .local v50, "targetSdkVersion":I
    const-string v5, "PackageParser"

    move/from16 v51, v6

    const/4 v6, 0x1

    .end local v6    # "minSdkVersion":I
    .local v51, "minSdkVersion":I
    if-eq v14, v6, :cond_2a8

    const/4 v6, 0x3

    move/from16 v14, v49

    .end local v49    # "type":I
    .local v14, "type":I
    if-ne v14, v6, :cond_10d

    .line 1676
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-lt v6, v15, :cond_109

    goto :goto_10d

    :cond_109
    move/from16 v18, v14

    goto/16 :goto_2aa

    .line 1677
    :cond_10d
    :goto_10d
    const/4 v6, 0x3

    if-eq v14, v6, :cond_29e

    const/4 v6, 0x4

    if-ne v14, v6, :cond_116

    .line 1678
    const/4 v6, 0x1

    goto/16 :goto_2a1

    .line 1681
    :cond_116
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-eq v6, v15, :cond_11f

    .line 1682
    const/4 v6, 0x1

    goto/16 :goto_2a1

    .line 1685
    :cond_11f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v18, v14

    .end local v14    # "type":I
    .local v18, "type":I
    const-string/jumbo v14, "package-verifier"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 1686
    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v5

    .line 1687
    .local v5, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v5, :cond_137

    .line 1688
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    .end local v5    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_137
    const/4 v6, 0x1

    goto/16 :goto_2a1

    :cond_13a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v14, "application"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 1691
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_147
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_1ac

    .line 1692
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1693
    .local v6, "attr":Ljava/lang/String;
    const-string v14, "debuggable"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15f

    .line 1694
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_160

    .line 1693
    :cond_15f
    const/4 v14, 0x0

    .line 1696
    :goto_160
    const-string/jumbo v14, "multiArch"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16f

    .line 1697
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v43

    goto :goto_170

    .line 1696
    :cond_16f
    const/4 v14, 0x0

    .line 1699
    :goto_170
    const-string/jumbo v14, "use32bitAbi"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17e

    .line 1700
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v44

    .line 1702
    :cond_17e
    const-string v14, "extractNativeLibs"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18b

    .line 1703
    const/4 v14, 0x1

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v45

    .line 1705
    :cond_18b
    const-string/jumbo v14, "useEmbeddedDex"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19a

    .line 1706
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v46

    goto :goto_19b

    .line 1705
    :cond_19a
    const/4 v14, 0x0

    .line 1708
    :goto_19b
    const-string/jumbo v14, "rollbackDataPolicy"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a9

    .line 1709
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v48

    .line 1691
    .end local v6    # "attr":Ljava/lang/String;
    :cond_1a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_147

    :cond_1ac
    move/from16 v5, v50

    move/from16 v6, v51

    const/4 v14, 0x1

    .end local v5    # "i":I
    goto/16 :goto_ee

    .line 1712
    :cond_1b3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "overlay"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 1713
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1c1
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_215

    .line 1714
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1715
    .restart local v6    # "attr":Ljava/lang/String;
    const-string/jumbo v14, "requiredSystemPropertyName"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d9

    .line 1716
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_212

    .line 1717
    :cond_1d9
    const-string/jumbo v14, "requiredSystemPropertyValue"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e7

    .line 1718
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_212

    .line 1719
    :cond_1e7
    const-string/jumbo v14, "targetPackage"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f5

    .line 1720
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_212

    .line 1721
    :cond_1f5
    const-string v14, "isStatic"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_203

    .line 1722
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_212

    .line 1723
    :cond_203
    const/4 v14, 0x0

    const-string/jumbo v14, "priority"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_212

    .line 1724
    const/4 v14, 0x0

    invoke-interface {v0, v5, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v21

    .line 1713
    .end local v6    # "attr":Ljava/lang/String;
    :cond_212
    :goto_212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c1

    :cond_215
    move/from16 v5, v50

    move/from16 v6, v51

    const/4 v14, 0x1

    .end local v5    # "i":I
    goto/16 :goto_ee

    .line 1727
    :cond_21c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "uses-split"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24f

    .line 1728
    if-eqz v47, :cond_233

    .line 1729
    const-string v6, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v6, 0x1

    goto/16 :goto_2a1

    .line 1733
    :cond_233
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v6, "name"

    invoke-interface {v0, v5, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1734
    if-eqz v47, :cond_245

    move/from16 v5, v50

    move/from16 v6, v51

    const/4 v14, 0x1

    goto/16 :goto_ee

    .line 1735
    :cond_245
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v6, -0x6c

    const-string v14, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v5, v6, v14}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1739
    :cond_24f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uses-sdk"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29c

    .line 1740
    const/4 v5, 0x0

    move/from16 v6, v51

    .end local v51    # "minSdkVersion":I
    .restart local v5    # "i":I
    .local v6, "minSdkVersion":I
    :goto_25f
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v14

    if-ge v5, v14, :cond_292

    .line 1741
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 1742
    .local v14, "attr":Ljava/lang/String;
    move/from16 v19, v6

    .end local v6    # "minSdkVersion":I
    .local v19, "minSdkVersion":I
    const-string/jumbo v6, "targetSdkVersion"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27a

    .line 1743
    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v50

    goto :goto_27b

    .line 1742
    :cond_27a
    const/4 v6, 0x0

    .line 1746
    :goto_27b
    const-string/jumbo v6, "minSdkVersion"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28a

    .line 1747
    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v16

    .end local v19    # "minSdkVersion":I
    .local v16, "minSdkVersion":I
    goto :goto_28d

    .line 1746
    .end local v16    # "minSdkVersion":I
    .restart local v19    # "minSdkVersion":I
    :cond_28a
    const/4 v6, 0x1

    move/from16 v16, v19

    .line 1740
    .end local v14    # "attr":Ljava/lang/String;
    .end local v19    # "minSdkVersion":I
    .restart local v16    # "minSdkVersion":I
    :goto_28d
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v16

    goto :goto_25f

    .end local v16    # "minSdkVersion":I
    .restart local v6    # "minSdkVersion":I
    :cond_292
    move/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "minSdkVersion":I
    .restart local v19    # "minSdkVersion":I
    move v14, v6

    move/from16 v6, v19

    move/from16 v5, v50

    .end local v5    # "i":I
    goto/16 :goto_ee

    .line 1739
    .end local v19    # "minSdkVersion":I
    .restart local v51    # "minSdkVersion":I
    :cond_29c
    const/4 v6, 0x1

    goto :goto_2a1

    .line 1677
    .end local v18    # "type":I
    .local v14, "type":I
    :cond_29e
    move/from16 v18, v14

    const/4 v6, 0x1

    .line 1675
    .end local v14    # "type":I
    :goto_2a1
    move v14, v6

    move/from16 v5, v50

    move/from16 v6, v51

    goto/16 :goto_ee

    .restart local v49    # "type":I
    :cond_2a8
    move/from16 v18, v49

    .line 1754
    .end local v49    # "type":I
    .restart local v18    # "type":I
    :goto_2aa
    invoke-static {v11, v12}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f1

    .line 1756
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping target and overlay pair "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " and "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v14, p0

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, ": overlay ignored due to required system property: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " with value: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/4 v10, 0x0

    .line 1760
    const/16 v20, 0x0

    .line 1761
    const/16 v21, 0x0

    move-object v0, v10

    move/from16 v5, v20

    move/from16 v6, v21

    goto :goto_2f8

    .line 1754
    :cond_2f1
    move-object/from16 v14, p0

    move-object v0, v10

    move/from16 v5, v20

    move/from16 v6, v21

    .line 1764
    .end local v10    # "targetPackage":Ljava/lang/String;
    .end local v20    # "overlayIsStatic":Z
    .end local v21    # "overlayPriority":I
    .local v0, "targetPackage":Ljava/lang/String;
    .local v5, "overlayIsStatic":Z
    .local v6, "overlayPriority":I
    :goto_2f8
    new-instance v49, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v10, v49

    move-object/from16 v16, v11

    .end local v11    # "requiredSystemPropertyName":Ljava/lang/String;
    .local v16, "requiredSystemPropertyName":Ljava/lang/String;
    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v52, v12

    .end local v12    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v52, "requiredSystemPropertyValue":Ljava/lang/String;
    move-object v12, v11

    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v53, v13

    .end local v13    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v53, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    move-object v13, v11

    move-object/from16 v54, v16

    .end local v16    # "requiredSystemPropertyName":Ljava/lang/String;
    .local v54, "requiredSystemPropertyName":Ljava/lang/String;
    move-object/from16 v11, p0

    move/from16 v55, v18

    .end local v18    # "type":I
    .local v55, "type":I
    move/from16 v14, v40

    move/from16 v56, v15

    .end local v15    # "searchDepth":I
    .local v56, "searchDepth":I
    move-object/from16 v15, v42

    move-object/from16 v16, v47

    move/from16 v17, v41

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v7

    move/from16 v21, v2

    move-object/from16 v22, v53

    move-object/from16 v23, p3

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v38

    move/from16 v27, v43

    move/from16 v28, v44

    move/from16 v29, v46

    move/from16 v30, v45

    move/from16 v31, v39

    move-object/from16 v32, v0

    move/from16 v33, v5

    move/from16 v34, v6

    move/from16 v35, v51

    move/from16 v36, v50

    move/from16 v37, v48

    invoke-direct/range {v10 .. v37}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V

    return-object v49
.end method

.method private static greylist-max-o parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 13
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1486
    if-eqz p1, :cond_4

    move-object v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "apkPath":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x0

    .line 1489
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 1492
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Failed to parse "

    if-eqz p1, :cond_15

    .line 1493
    :try_start_10
    invoke-static {p1, p2, v4, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v6

    goto :goto_19

    .line 1494
    :cond_15
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v6
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_19} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_19} :catch_61
    .catchall {:try_start_10 .. :try_end_19} :catchall_5f

    :goto_19
    move-object v2, v6

    .line 1498
    nop

    .line 1500
    :try_start_1b
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v2, v6}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v1, v6

    .line 1503
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_4d

    .line 1505
    new-instance v6, Landroid/content/pm/PackageParser$Package;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 1506
    .local v3, "tempPkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_34

    const/4 v4, 0x1

    .line 1507
    .local v4, "skipVerify":Z
    :cond_34
    const-string v6, "collectCertificates"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_3c} :catch_61
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_3c} :catch_61
    .catchall {:try_start_1b .. :try_end_3c} :catchall_5f

    .line 1509
    :try_start_3c
    invoke-static {v3, p0, v4}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1511
    :try_start_3f
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    nop

    .line 1513
    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v3, v6

    .line 1514
    .end local v4    # "skipVerify":Z
    .local v3, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_4f

    .line 1511
    .local v3, "tempPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "skipVerify":Z
    :catchall_47
    move-exception v6

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1512
    nop

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v6

    .line 1515
    .end local v3    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "skipVerify":Z
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :cond_4d
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1518
    .local v3, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_4f
    move-object v4, v1

    .line 1519
    .local v4, "attrs":Landroid/util/AttributeSet;
    invoke-static {v0, v1, v4, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5
    :try_end_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_54} :catch_61
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_54} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_54} :catch_61
    .catchall {:try_start_3f .. :try_end_54} :catchall_5f

    .line 1526
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1527
    if-eqz v2, :cond_5e

    .line 1529
    :try_start_59
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 1531
    goto :goto_5e

    .line 1530
    :catchall_5d
    move-exception v6

    .line 1519
    :cond_5e
    :goto_5e
    return-object v5

    .line 1526
    .end local v3    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    :catchall_5f
    move-exception v3

    goto :goto_ac

    .line 1521
    :catch_61
    move-exception v3

    goto :goto_7d

    .line 1495
    :catch_63
    move-exception v3

    .line 1496
    .local v3, "e":Ljava/io/IOException;
    :try_start_64
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v6, -0x64

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_7d} :catch_61
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7d} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_7d} :catch_61
    .catchall {:try_start_64 .. :try_end_7d} :catchall_5f

    .line 1522
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v3, "e":Ljava/lang/Exception;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_7d
    :try_start_7d
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1523
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v6, -0x66

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local p0    # "apkFile":Ljava/io/File;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "debugPathName":Ljava/lang/String;
    .end local p3    # "flags":I
    throw v4
    :try_end_ac
    .catchall {:try_start_7d .. :try_end_ac} :catchall_5f

    .line 1526
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local p0    # "apkFile":Ljava/io/File;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "debugPathName":Ljava/lang/String;
    .restart local p3    # "flags":I
    :goto_ac
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1527
    if-eqz v2, :cond_b6

    .line 1529
    :try_start_b1
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    .line 1531
    goto :goto_b6

    .line 1530
    :catchall_b5
    move-exception v4

    .line 1534
    :cond_b6
    :goto_b6
    throw v3
.end method

.method private greylist-max-o parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .registers 15
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1205
    .local v6, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1206
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1207
    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1208
    .local v2, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_22

    .line 1206
    .end local v2    # "end":I
    :cond_21
    move-object v7, v0

    .line 1211
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v7, "volumeUuid":Ljava/lang/String;
    :goto_22
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1212
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1216
    const/4 v1, 0x0

    .line 1218
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2c
    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    .line 1219
    .local v8, "cookie":I
    if-eqz v8, :cond_99

    .line 1223
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_39
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2c .. :try_end_39} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_39} :catch_b6
    .catchall {:try_start_2c .. :try_end_39} :catchall_b4

    .line 1226
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_39
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/content/res/ThemeManagerStub;->createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1229
    .local v2, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 1230
    .local v9, "outError":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, v6

    move v4, p3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1231
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_60

    .line 1236
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1239
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_5b
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_39 .. :try_end_5b} :catch_96
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5b} :catch_93
    .catchall {:try_start_39 .. :try_end_5b} :catchall_90

    .line 1241
    nop

    .line 1249
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    return-object v0

    .line 1232
    :cond_60
    :try_start_60
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v4, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " (at "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "): "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "apkPath":Ljava/lang/String;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    .end local p3    # "flags":I
    throw v1
    :try_end_90
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_60 .. :try_end_90} :catch_96
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_90} :catch_93
    .catchall {:try_start_60 .. :try_end_90} :catchall_90

    .line 1249
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v8    # "cookie":I
    .end local v9    # "outError":[Ljava/lang/String;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .restart local p3    # "flags":I
    :catchall_90
    move-exception v0

    move-object v1, v3

    goto :goto_d5

    .line 1245
    :catch_93
    move-exception v0

    move-object v1, v3

    goto :goto_b7

    .line 1243
    :catch_96
    move-exception v0

    move-object v1, v3

    goto :goto_d3

    .line 1220
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "cookie":I
    :cond_99
    :try_start_99
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "apkPath":Ljava/lang/String;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    .end local p3    # "flags":I
    throw v0
    :try_end_b4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_99 .. :try_end_b4} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b4} :catch_b6
    .catchall {:try_start_99 .. :try_end_b4} :catchall_b4

    .line 1249
    .end local v8    # "cookie":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .restart local p3    # "flags":I
    :catchall_b4
    move-exception v0

    goto :goto_d5

    .line 1245
    :catch_b6
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/lang/Exception;
    :goto_b7
    :try_start_b7
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "apkPath":Ljava/lang/String;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    .end local p3    # "flags":I
    throw v2

    .line 1243
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .restart local p3    # "flags":I
    :catch_d2
    move-exception v0

    .line 1244
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_d3
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "apkPath":Ljava/lang/String;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "assets":Landroid/content/res/AssetManager;
    .end local p3    # "flags":I
    throw v0
    :try_end_d5
    .catchall {:try_start_b7 .. :try_end_d5} :catchall_b4

    .line 1249
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "apkPath":Ljava/lang/String;
    .restart local v7    # "volumeUuid":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "assets":Landroid/content/res/AssetManager;
    .restart local p3    # "flags":I
    :goto_d5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1250
    throw v0
.end method

.method private greylist-max-p parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 21
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 1863
    const/16 v1, -0x6a

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v9, v9}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1864
    .local v0, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    .line 1865
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    .line 1867
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_33

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v4

    .line 1869
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_32
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_32} :catch_c7

    .line 1870
    return-object v2

    .line 1875
    .end local v0    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33
    nop

    .line 1877
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v12, p2

    invoke-virtual {v12, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1882
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1884
    const/16 v1, 0xb

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 1886
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1887
    const/4 v1, 0x5

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1889
    const/4 v1, 0x2

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1891
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 1892
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1895
    :cond_73
    const-string v1, "coreApp"

    invoke-interface {v9, v2, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1897
    const/4 v1, 0x6

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1899
    .local v14, "isolatedSplits":Z
    if-eqz v14, :cond_8c

    .line 1900
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1903
    :cond_8c
    const/16 v1, 0x9

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 1905
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1906
    const/16 v1, 0xa

    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1908
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v1, :cond_ae

    .line 1909
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1911
    :cond_ae
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1913
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1915
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1872
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "isolatedSplits":Z
    :catch_c7
    move-exception v0

    move-object/from16 v12, p2

    .line 1873
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1874
    return-object v2
.end method

.method private greylist-max-o parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 20
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1790
    move-object v7, p0

    move-object v8, p1

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    move-object/from16 v9, p3

    invoke-interface {v9, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1791
    .local v10, "childPackageName":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1792
    const/16 v0, -0x6a

    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1793
    return v12

    .line 1797
    :cond_19
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x6c

    const-string v2, "PackageParser"

    if-eqz v0, :cond_42

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "message":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    aput-object v0, p5, v12

    .line 1802
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1803
    return v12

    .line 1807
    .end local v0    # "message":Ljava/lang/String;
    :cond_42
    invoke-virtual {p1, v10}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate child package:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    .restart local v0    # "message":Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    aput-object v0, p5, v12

    .line 1811
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1812
    return v12

    .line 1816
    .end local v0    # "message":Ljava/lang/String;
    :cond_63
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1819
    .local v13, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1820
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1821
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1822
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1823
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1825
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1826
    .end local v13    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "childPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_98

    .line 1828
    return v12

    .line 1832
    :cond_98
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_a3

    .line 1833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1835
    :cond_a3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1838
    return v11
.end method

.method private greylist-max-o parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 42
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    const/4 v0, 0x0

    iput-object v0, v7, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1943
    const/4 v1, 0x0

    .line 1945
    .local v1, "foundApp":Z
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v10, v11, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1948
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 1950
    .local v3, "maxSdkVersion":I
    const/16 v4, 0xd

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 1953
    .end local v3    # "maxSdkVersion":I
    .local v14, "maxSdkVersion":I
    const/4 v15, 0x3

    const/4 v6, 0x1

    if-eqz v14, :cond_26

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v14, v3, :cond_72

    .line 1954
    :cond_26
    invoke-virtual {v2, v13, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 1956
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_72

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_72

    .line 1957
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1958
    .local v4, "nameError":Ljava/lang/String;
    if-eqz v4, :cond_66

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 1959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v13

    .line 1961
    const/16 v5, -0x6b

    iput v5, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1962
    return-object v0

    .line 1964
    :cond_66
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1965
    invoke-virtual {v2, v15, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v8, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1970
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "nameError":Ljava/lang/String;
    :cond_72
    const/4 v3, -0x1

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v8, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1973
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v8, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1975
    const/4 v5, 0x7

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 1978
    .local v4, "targetSandboxVersion":I
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1981
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_98

    .line 1982
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x40000

    or-int v5, v5, v18

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1986
    :cond_98
    const/4 v3, 0x1

    .line 1987
    .local v3, "supportsSmallScreens":I
    const/4 v5, 0x1

    .line 1988
    .local v5, "supportsNormalScreens":I
    const/16 v18, 0x1

    .line 1989
    .local v18, "supportsLargeScreens":I
    const/16 v19, 0x1

    .line 1990
    .local v19, "supportsXLargeScreens":I
    const/16 v20, 0x1

    .line 1991
    .local v20, "resizeable":I
    const/16 v21, 0x1

    .line 1993
    .local v21, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v33, v18

    move/from16 v18, v1

    move/from16 v1, v19

    move-object/from16 v19, v2

    move/from16 v2, v33

    move/from16 v34, v5

    move v5, v3

    move/from16 v3, v34

    .line 1994
    .end local v20    # "resizeable":I
    .end local v21    # "anyDensity":I
    .local v1, "supportsXLargeScreens":I
    .local v2, "supportsLargeScreens":I
    .local v3, "supportsNormalScreens":I
    .local v5, "supportsSmallScreens":I
    .local v13, "outerDepth":I
    .local v18, "foundApp":Z
    .local v19, "sa":Landroid/content/res/TypedArray;
    .local v23, "resizeable":I
    .local v24, "anyDensity":I
    :goto_b9
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v21, v0

    .local v21, "type":I
    const-string v6, "PackageParser"

    const/4 v15, 0x1

    if-eq v0, v15, :cond_80b

    move/from16 v15, v21

    const/4 v0, 0x3

    .end local v21    # "type":I
    .local v15, "type":I
    if-ne v15, v0, :cond_e5

    .line 1995
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_d0

    goto :goto_e5

    :cond_d0
    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v27, v4

    move/from16 v21, v13

    move/from16 v26, v14

    move/from16 v28, v15

    move/from16 v17, v23

    move/from16 v23, v24

    move v15, v5

    goto/16 :goto_81e

    .line 1996
    :cond_e5
    :goto_e5
    const/4 v0, 0x3

    if-eq v15, v0, :cond_7dc

    move/from16 v21, v13

    const/4 v13, 0x4

    .end local v13    # "outerDepth":I
    .local v21, "outerDepth":I
    if-ne v15, v13, :cond_101

    .line 1997
    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v27, v4

    move v15, v5

    move/from16 v26, v14

    move/from16 v17, v23

    move/from16 v23, v24

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7f2

    .line 2000
    :cond_101
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2002
    .local v0, "tagName":Ljava/lang/String;
    const-string v13, " "

    move/from16 v26, v1

    .end local v1    # "supportsXLargeScreens":I
    .local v26, "supportsXLargeScreens":I
    const-string v1, " at "

    if-eqz v9, :cond_15a

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15a

    .line 2003
    move/from16 v27, v2

    .end local v2    # "supportsLargeScreens":I
    .local v27, "supportsLargeScreens":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v3

    .end local v3    # "supportsNormalScreens":I
    .local v28, "supportsNormalScreens":I
    const-string v3, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2005
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2007
    move v15, v5

    move/from16 v17, v23

    move/from16 v23, v24

    move/from16 v16, v26

    move/from16 v29, v27

    move/from16 v25, v28

    const/4 v1, 0x0

    const/16 v24, 0x3

    move/from16 v27, v4

    move/from16 v26, v14

    goto/16 :goto_7f2

    .line 2002
    .end local v27    # "supportsLargeScreens":I
    .end local v28    # "supportsNormalScreens":I
    .restart local v2    # "supportsLargeScreens":I
    .restart local v3    # "supportsNormalScreens":I
    :cond_15a
    move/from16 v27, v2

    move/from16 v28, v3

    .line 2010
    .end local v2    # "supportsLargeScreens":I
    .end local v3    # "supportsNormalScreens":I
    .restart local v27    # "supportsLargeScreens":I
    .restart local v28    # "supportsNormalScreens":I
    const-string v2, "application"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 2011
    if-eqz v18, :cond_184

    .line 2017
    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2019
    move v15, v5

    move/from16 v17, v23

    move/from16 v23, v24

    move/from16 v16, v26

    move/from16 v29, v27

    move/from16 v25, v28

    const/4 v1, 0x0

    const/16 v24, 0x3

    move/from16 v27, v4

    move/from16 v26, v14

    goto/16 :goto_7f2

    .line 2023
    :cond_184
    const/4 v13, 0x1

    .line 2024
    .end local v18    # "foundApp":Z
    .local v13, "foundApp":Z
    move/from16 v6, v26

    .end local v26    # "supportsXLargeScreens":I
    .local v6, "supportsXLargeScreens":I
    move-object/from16 v1, p0

    move/from16 v3, v27

    .end local v27    # "supportsLargeScreens":I
    .local v3, "supportsLargeScreens":I
    move-object/from16 v2, p1

    move/from16 v26, v14

    move/from16 v9, v28

    move v14, v3

    .end local v3    # "supportsLargeScreens":I
    .end local v28    # "supportsNormalScreens":I
    .local v9, "supportsNormalScreens":I
    .local v14, "supportsLargeScreens":I
    .local v26, "maxSdkVersion":I
    move-object/from16 v3, p3

    move/from16 v27, v4

    .end local v4    # "targetSandboxVersion":I
    .local v27, "targetSandboxVersion":I
    move-object/from16 v4, p4

    move/from16 v17, v14

    move/from16 v28, v15

    const/4 v14, 0x7

    move v15, v5

    .end local v5    # "supportsSmallScreens":I
    .end local v14    # "supportsLargeScreens":I
    .local v15, "supportsSmallScreens":I
    .local v17, "supportsLargeScreens":I
    .local v28, "type":I
    move/from16 v5, p5

    move/from16 v29, v6

    const/4 v14, 0x1

    .end local v6    # "supportsXLargeScreens":I
    .local v29, "supportsXLargeScreens":I
    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 2025
    const/4 v1, 0x0

    return-object v1

    .line 2024
    :cond_1ad
    move v3, v9

    move/from16 v18, v13

    move v5, v15

    move/from16 v2, v17

    move/from16 v15, v24

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7c8

    .line 2027
    .end local v9    # "supportsNormalScreens":I
    .end local v13    # "foundApp":Z
    .end local v17    # "supportsLargeScreens":I
    .end local v29    # "supportsXLargeScreens":I
    .restart local v4    # "targetSandboxVersion":I
    .restart local v5    # "supportsSmallScreens":I
    .local v14, "maxSdkVersion":I
    .local v15, "type":I
    .restart local v18    # "foundApp":Z
    .local v26, "supportsXLargeScreens":I
    .local v27, "supportsLargeScreens":I
    .local v28, "supportsNormalScreens":I
    :cond_1ba
    move/from16 v29, v26

    move/from16 v17, v27

    move/from16 v9, v28

    move/from16 v27, v4

    move/from16 v26, v14

    move/from16 v28, v15

    const/4 v14, 0x1

    move v15, v5

    .end local v4    # "targetSandboxVersion":I
    .end local v5    # "supportsSmallScreens":I
    .end local v14    # "maxSdkVersion":I
    .restart local v9    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v17    # "supportsLargeScreens":I
    .local v26, "maxSdkVersion":I
    .local v27, "targetSandboxVersion":I
    .local v28, "type":I
    .restart local v29    # "supportsXLargeScreens":I
    const-string/jumbo v2, "overlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v2, :cond_287

    .line 2028
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2030
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2032
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 2034
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2036
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v8, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2039
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v8, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2042
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2045
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2048
    .local v3, "propValue":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2050
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v5, -0x6c

    if-nez v4, :cond_215

    .line 2051
    const-string v4, "<overlay> does not specify a target package"

    const/4 v6, 0x0

    aput-object v4, v12, v6

    .line 2052
    iput v5, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2053
    const/4 v4, 0x0

    return-object v4

    .line 2056
    :cond_215
    iget v4, v8, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v4, :cond_27d

    iget v4, v8, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v13, 0x270f

    if-le v4, v13, :cond_220

    goto :goto_27d

    .line 2064
    :cond_220
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_264

    .line 2065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping target and overlay pair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": overlay ignored due to required system property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const/16 v4, -0x7d

    iput v4, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2069
    const/4 v4, 0x0

    return-object v4

    .line 2072
    :cond_264
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2075
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2077
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    move-object/from16 v19, v1

    move v3, v9

    move v5, v15

    move/from16 v2, v17

    move/from16 v15, v24

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7c8

    .line 2057
    .restart local v2    # "propName":Ljava/lang/String;
    .restart local v3    # "propValue":Ljava/lang/String;
    :cond_27d
    :goto_27d
    const-string v4, "<overlay> priority must be between 0 and 9999"

    const/4 v6, 0x0

    aput-object v4, v12, v6

    .line 2058
    iput v5, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2060
    const/16 v20, 0x0

    return-object v20

    .line 2077
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_287
    const/16 v20, 0x0

    const-string v2, "key-sets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 2078
    invoke-direct {v7, v8, v10, v11, v12}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_298

    .line 2079
    return-object v20

    .line 2078
    :cond_298
    move/from16 v25, v9

    move/from16 v16, v29

    const/4 v1, 0x0

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    .line 2081
    :cond_2a7
    const-string/jumbo v2, "permission-group"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d4

    .line 2082
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c4

    .line 2083
    const/4 v2, 0x0

    return-object v2

    .line 2082
    :cond_2c4
    const/4 v2, 0x0

    move-object v1, v2

    move/from16 v25, v9

    move/from16 v16, v29

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    .line 2085
    :cond_2d4
    const/4 v2, 0x0

    const-string/jumbo v4, "permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f4

    .line 2086
    invoke-direct {v7, v8, v10, v11, v12}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e5

    .line 2087
    return-object v2

    .line 2086
    :cond_2e5
    move-object v1, v2

    move/from16 v25, v9

    move/from16 v16, v29

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    .line 2089
    :cond_2f4
    const-string/jumbo v4, "permission-tree"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_313

    .line 2090
    invoke-direct {v7, v8, v10, v11, v12}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_304

    .line 2091
    return-object v2

    .line 2090
    :cond_304
    move-object v1, v2

    move/from16 v25, v9

    move/from16 v16, v29

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    .line 2093
    :cond_313
    const-string/jumbo v4, "uses-permission"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_332

    .line 2094
    invoke-direct {v7, v8, v10, v11}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-nez v1, :cond_323

    .line 2095
    return-object v2

    .line 2094
    :cond_323
    move/from16 v25, v9

    move/from16 v16, v29

    const/4 v1, 0x0

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    .line 2097
    :cond_332
    const-string/jumbo v2, "uses-permission-sdk-m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a8

    .line 2098
    const-string/jumbo v2, "uses-permission-sdk-23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_352

    move/from16 v25, v9

    move/from16 v16, v29

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7b4

    .line 2102
    :cond_352
    const-string/jumbo v2, "uses-configuration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ac

    .line 2103
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2104
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v10, v11, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2106
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2109
    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2112
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_37e

    .line 2115
    iget v4, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v4, v14

    iput v4, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2117
    :cond_37e
    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v1, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2120
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_391

    .line 2123
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2125
    :cond_391
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2126
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v8, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2128
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2130
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v19, v2

    move v3, v9

    move v5, v15

    move/from16 v2, v17

    move/from16 v15, v24

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7c8

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_3ac
    const-string/jumbo v2, "uses-feature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e8

    .line 2131
    invoke-direct {v7, v10, v11}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v1

    .line 2132
    .local v1, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2134
    iget-object v2, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_3d6

    .line 2135
    new-instance v2, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v2}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2136
    .local v2, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v3, v1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v3, v2, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2137
    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v8, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2140
    .end local v2    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_3d6
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2142
    .end local v1    # "fi":Landroid/content/pm/FeatureInfo;
    move/from16 v25, v9

    move/from16 v16, v29

    const/4 v1, 0x0

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    goto/16 :goto_7bd

    :cond_3e8
    const-string v4, "feature-group"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ba

    .line 2143
    new-instance v3, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2144
    .local v3, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v4, 0x0

    .line 2145
    .local v4, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 2146
    .local v5, "innerDepth":I
    :goto_3fa
    move/from16 v31, v9

    .end local v9    # "supportsNormalScreens":I
    .local v31, "supportsNormalScreens":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move/from16 v30, v9

    .end local v28    # "type":I
    .local v30, "type":I
    if-eq v9, v14, :cond_48c

    move/from16 v9, v30

    const/4 v14, 0x3

    .end local v30    # "type":I
    .local v9, "type":I
    if-ne v9, v14, :cond_414

    .line 2147
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v5, :cond_410

    goto :goto_414

    :cond_410
    move/from16 v30, v5

    goto/16 :goto_490

    .line 2148
    :cond_414
    :goto_414
    const/4 v14, 0x3

    if-eq v9, v14, :cond_47d

    const/4 v14, 0x4

    if-ne v9, v14, :cond_41f

    .line 2149
    move-object/from16 v32, v2

    move/from16 v30, v5

    goto :goto_481

    .line 2152
    :cond_41f
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2153
    .local v14, "innerTagName":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_43f

    .line 2154
    move-object/from16 v32, v2

    invoke-direct {v7, v10, v11}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 2157
    .local v2, "featureInfo":Landroid/content/pm/FeatureInfo;
    move/from16 v30, v5

    .end local v5    # "innerDepth":I
    .local v30, "innerDepth":I
    iget v5, v2, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v28, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2158
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2159
    .end local v4    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v2, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    move-object v4, v2

    goto :goto_46f

    .line 2160
    .end local v2    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v30    # "innerDepth":I
    .restart local v4    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .restart local v5    # "innerDepth":I
    :cond_43f
    move-object/from16 v32, v2

    move/from16 v30, v5

    .end local v5    # "innerDepth":I
    .restart local v30    # "innerDepth":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <feature-group>: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2162
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2160
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_46f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2165
    .end local v14    # "innerTagName":Ljava/lang/String;
    move/from16 v28, v9

    move/from16 v5, v30

    move/from16 v9, v31

    move-object/from16 v2, v32

    const/4 v14, 0x1

    goto/16 :goto_3fa

    .line 2148
    .end local v30    # "innerDepth":I
    .restart local v5    # "innerDepth":I
    :cond_47d
    move-object/from16 v32, v2

    move/from16 v30, v5

    .line 2146
    .end local v5    # "innerDepth":I
    .restart local v30    # "innerDepth":I
    :goto_481
    move/from16 v28, v9

    move/from16 v5, v30

    move/from16 v9, v31

    move-object/from16 v2, v32

    const/4 v14, 0x1

    goto/16 :goto_3fa

    .end local v9    # "type":I
    .restart local v5    # "innerDepth":I
    .local v30, "type":I
    :cond_48c
    move/from16 v9, v30

    move/from16 v30, v5

    .line 2167
    .end local v5    # "innerDepth":I
    .restart local v9    # "type":I
    .local v30, "innerDepth":I
    :goto_490
    if-eqz v4, :cond_4a4

    .line 2168
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, v3, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2169
    iget-object v1, v3, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, v3, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2171
    :cond_4a4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2173
    .end local v3    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v4    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v30    # "innerDepth":I
    move/from16 v28, v9

    move v5, v15

    move/from16 v2, v17

    move/from16 v15, v24

    move/from16 v3, v31

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7c8

    .end local v31    # "supportsNormalScreens":I
    .local v9, "supportsNormalScreens":I
    .restart local v28    # "type":I
    :cond_4ba
    move/from16 v31, v9

    .end local v9    # "supportsNormalScreens":I
    .restart local v31    # "supportsNormalScreens":I
    const-string/jumbo v2, "uses-sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_541

    .line 2174
    sget v1, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v1, :cond_532

    .line 2175
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v10, v11, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2178
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    .line 2179
    .local v3, "minVers":I
    const/4 v4, 0x0

    .line 2180
    .local v4, "minCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2181
    .local v5, "targetVers":I
    const/4 v6, 0x0

    .line 2183
    .local v6, "targetCode":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 2185
    .local v13, "val":Landroid/util/TypedValue;
    if-eqz v13, :cond_4ec

    .line 2186
    iget v9, v13, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v9, v14, :cond_4ea

    iget-object v9, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v9, :cond_4ea

    .line 2187
    iget-object v9, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4ec

    .line 2190
    :cond_4ea
    iget v3, v13, Landroid/util/TypedValue;->data:I

    .line 2194
    :cond_4ec
    :goto_4ec
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 2196
    if-eqz v13, :cond_509

    .line 2197
    iget v9, v13, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v9, v14, :cond_506

    iget-object v9, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v9, :cond_506

    .line 2198
    iget-object v9, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2199
    if-nez v4, :cond_50b

    .line 2200
    move-object v4, v6

    goto :goto_50b

    .line 2204
    :cond_506
    iget v5, v13, Landroid/util/TypedValue;->data:I

    goto :goto_50b

    .line 2207
    :cond_509
    move v5, v3

    .line 2208
    move-object v6, v4

    .line 2211
    :cond_50b
    :goto_50b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2213
    sget-object v9, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v3, v4, v1, v9, v12}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2215
    .local v1, "minSdkVersion":I
    const/16 v14, -0xc

    if-gez v1, :cond_51d

    .line 2216
    iput v14, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2217
    const/16 v19, 0x0

    return-object v19

    .line 2220
    :cond_51d
    const/16 v19, 0x0

    invoke-static {v5, v6, v9, v12}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2222
    .local v9, "targetSdkVersion":I
    if-gez v9, :cond_528

    .line 2223
    iput v14, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2224
    return-object v19

    .line 2227
    :cond_528
    iget-object v14, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v1, v14, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2228
    iget-object v14, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v9, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v19, v2

    .line 2231
    .end local v1    # "minSdkVersion":I
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v3    # "minVers":I
    .end local v4    # "minCode":Ljava/lang/String;
    .end local v5    # "targetVers":I
    .end local v6    # "targetCode":Ljava/lang/String;
    .end local v9    # "targetSdkVersion":I
    .end local v13    # "val":Landroid/util/TypedValue;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_532
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v5, v15

    move/from16 v2, v17

    move/from16 v15, v24

    move/from16 v3, v31

    const/4 v1, 0x0

    const/16 v24, 0x3

    goto/16 :goto_7c8

    .line 2233
    :cond_541
    const-string/jumbo v2, "supports-screens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a9

    .line 2234
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2237
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2240
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2243
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2249
    const/4 v14, 0x1

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 2252
    .end local v15    # "supportsSmallScreens":I
    .local v2, "supportsSmallScreens":I
    move/from16 v4, v31

    .end local v31    # "supportsNormalScreens":I
    .local v4, "supportsNormalScreens":I
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 2255
    .end local v4    # "supportsNormalScreens":I
    .local v3, "supportsNormalScreens":I
    move/from16 v5, v17

    const/4 v4, 0x3

    .end local v17    # "supportsLargeScreens":I
    .local v5, "supportsLargeScreens":I
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 2258
    move/from16 v6, v29

    const/4 v13, 0x5

    .end local v29    # "supportsXLargeScreens":I
    .local v6, "supportsXLargeScreens":I
    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 2261
    move/from16 v13, v23

    const/4 v15, 0x4

    .end local v23    # "resizeable":I
    .local v13, "resizeable":I
    invoke-virtual {v1, v15, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 2264
    move/from16 v15, v24

    const/4 v4, 0x0

    .end local v24    # "anyDensity":I
    .local v15, "anyDensity":I
    invoke-virtual {v1, v4, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 2268
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2270
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v19, v1

    move/from16 v29, v6

    move/from16 v23, v13

    const/4 v1, 0x0

    const/16 v24, 0x3

    move/from16 v33, v5

    move v5, v2

    move/from16 v2, v33

    goto/16 :goto_7c8

    .line 2272
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "supportsSmallScreens":I
    .end local v3    # "supportsNormalScreens":I
    .end local v5    # "supportsLargeScreens":I
    .end local v6    # "supportsXLargeScreens":I
    .end local v13    # "resizeable":I
    .local v15, "supportsSmallScreens":I
    .restart local v17    # "supportsLargeScreens":I
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v23    # "resizeable":I
    .restart local v24    # "anyDensity":I
    .restart local v29    # "supportsXLargeScreens":I
    .restart local v31    # "supportsNormalScreens":I
    :cond_5a9
    move/from16 v5, v17

    move/from16 v17, v23

    move/from16 v23, v24

    move/from16 v16, v29

    move/from16 v4, v31

    const/4 v9, 0x7

    const/4 v14, 0x1

    const/16 v24, 0x3

    .end local v24    # "anyDensity":I
    .end local v29    # "supportsXLargeScreens":I
    .end local v31    # "supportsNormalScreens":I
    .restart local v4    # "supportsNormalScreens":I
    .restart local v5    # "supportsLargeScreens":I
    .local v16, "supportsXLargeScreens":I
    .local v17, "resizeable":I
    .local v23, "anyDensity":I
    const-string/jumbo v2, "protected-broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5fd

    .line 2273
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2278
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 2281
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2283
    if-eqz v3, :cond_5ec

    .line 2284
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v2, :cond_5db

    .line 2285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2287
    :cond_5db
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5ec

    .line 2288
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2292
    :cond_5ec
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2294
    .end local v3    # "name":Ljava/lang/String;
    move-object/from16 v19, v1

    move v3, v4

    move v2, v5

    move v5, v15

    move/from16 v29, v16

    move/from16 v15, v23

    const/4 v1, 0x0

    move/from16 v23, v17

    goto/16 :goto_7c8

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_5fd
    const-string v2, "instrumentation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_614

    .line 2295
    invoke-direct {v7, v8, v10, v11, v12}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v1

    if-nez v1, :cond_60d

    .line 2296
    const/4 v1, 0x0

    return-object v1

    .line 2295
    :cond_60d
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7bd

    .line 2298
    :cond_614
    const-string/jumbo v2, "original-package"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_658

    .line 2299
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2302
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 2304
    .local v3, "orig":Ljava/lang/String;
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_644

    .line 2305
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v2, :cond_63f

    .line 2306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2307
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2309
    :cond_63f
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    :cond_644
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2314
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2316
    .end local v3    # "orig":Ljava/lang/String;
    move-object/from16 v19, v1

    move v3, v4

    move v2, v5

    move v5, v15

    move/from16 v29, v16

    move/from16 v15, v23

    const/4 v1, 0x0

    move/from16 v23, v17

    goto/16 :goto_7c8

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_658
    const-string v2, "adopt-permissions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_691

    .line 2317
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2320
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 2323
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2325
    if-eqz v3, :cond_680

    .line 2326
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v2, :cond_67b

    .line 2327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2329
    :cond_67b
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    :cond_680
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2334
    .end local v3    # "name":Ljava/lang/String;
    move-object/from16 v19, v1

    move v3, v4

    move v2, v5

    move v5, v15

    move/from16 v29, v16

    move/from16 v15, v23

    const/4 v1, 0x0

    move/from16 v23, v17

    goto/16 :goto_7c8

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_691
    const-string/jumbo v2, "uses-gl-texture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a4

    .line 2336
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2337
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7f2

    .line 2339
    :cond_6a4
    const-string v2, "compatible-screens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b6

    .line 2341
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2342
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7f2

    .line 2343
    :cond_6b6
    const-string/jumbo v2, "supports-input"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c9

    .line 2344
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2345
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7f2

    .line 2347
    :cond_6c9
    const-string v2, "eat-comment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6db

    .line 2349
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2350
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7f2

    .line 2352
    :cond_6db
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70d

    .line 2353
    sget-boolean v1, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v1, :cond_6f2

    .line 2354
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2355
    move/from16 v25, v4

    move/from16 v29, v5

    const/4 v1, 0x0

    goto/16 :goto_7f2

    .line 2357
    :cond_6f2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v25, v4

    .end local v4    # "supportsNormalScreens":I
    .local v25, "supportsNormalScreens":I
    move-object/from16 v4, p4

    move/from16 v29, v5

    .end local v5    # "supportsLargeScreens":I
    .local v29, "supportsLargeScreens":I
    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70a

    .line 2359
    const/4 v1, 0x0

    return-object v1

    .line 2357
    :cond_70a
    const/4 v1, 0x0

    goto/16 :goto_7bd

    .line 2362
    .end local v25    # "supportsNormalScreens":I
    .end local v29    # "supportsLargeScreens":I
    .restart local v4    # "supportsNormalScreens":I
    .restart local v5    # "supportsLargeScreens":I
    :cond_70d
    move/from16 v25, v4

    move/from16 v29, v5

    .end local v4    # "supportsNormalScreens":I
    .end local v5    # "supportsLargeScreens":I
    .restart local v25    # "supportsNormalScreens":I
    .restart local v29    # "supportsLargeScreens":I
    const-string/jumbo v2, "restrict-update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_773

    .line 2363
    and-int/lit8 v1, p5, 0x10

    if-eqz v1, :cond_763

    .line 2364
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v10, v11, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2366
    .end local v19    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 2368
    .local v3, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2370
    const/4 v2, 0x0

    iput-object v2, v8, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2371
    if-eqz v3, :cond_761

    .line 2372
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2373
    .local v2, "hashLength":I
    div-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    .line 2374
    .local v4, "hashBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_73a
    if-ge v5, v2, :cond_75f

    .line 2375
    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v9, 0x10

    invoke-static {v13, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    const/16 v19, 0x4

    shl-int/lit8 v13, v13, 0x4

    add-int/lit8 v14, v5, 0x1

    .line 2376
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    add-int/2addr v13, v9

    int-to-byte v9, v13

    aput-byte v9, v4, v6

    .line 2374
    add-int/lit8 v5, v5, 0x2

    const/4 v9, 0x7

    const/4 v14, 0x1

    goto :goto_73a

    .line 2378
    .end local v5    # "i":I
    :cond_75f
    iput-object v4, v8, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2382
    .end local v2    # "hashLength":I
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "hashBytes":[B
    :cond_761
    move-object/from16 v19, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "sa":Landroid/content/res/TypedArray;
    :cond_763
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v5, v15

    move/from16 v15, v23

    move/from16 v3, v25

    move/from16 v2, v29

    const/4 v1, 0x0

    move/from16 v29, v16

    move/from16 v23, v17

    goto :goto_7c8

    .line 2391
    :cond_773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <manifest>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2393
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2391
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2395
    const/4 v1, 0x0

    goto :goto_7f2

    .line 2097
    .end local v16    # "supportsXLargeScreens":I
    .end local v25    # "supportsNormalScreens":I
    .local v9, "supportsNormalScreens":I
    .local v17, "supportsLargeScreens":I
    .local v23, "resizeable":I
    .restart local v24    # "anyDensity":I
    .local v29, "supportsXLargeScreens":I
    :cond_7a8
    move/from16 v25, v9

    move/from16 v16, v29

    move/from16 v29, v17

    move/from16 v17, v23

    move/from16 v23, v24

    const/16 v24, 0x3

    .line 2099
    .end local v9    # "supportsNormalScreens":I
    .end local v24    # "anyDensity":I
    .restart local v16    # "supportsXLargeScreens":I
    .local v17, "resizeable":I
    .local v23, "anyDensity":I
    .restart local v25    # "supportsNormalScreens":I
    .local v29, "supportsLargeScreens":I
    :goto_7b4
    invoke-direct {v7, v8, v10, v11}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-nez v1, :cond_7bc

    .line 2100
    const/4 v1, 0x0

    return-object v1

    .line 2099
    :cond_7bc
    const/4 v1, 0x0

    .line 2397
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v16    # "supportsXLargeScreens":I
    .end local v25    # "supportsNormalScreens":I
    .restart local v9    # "supportsNormalScreens":I
    .local v17, "supportsLargeScreens":I
    .local v23, "resizeable":I
    .restart local v24    # "anyDensity":I
    .local v29, "supportsXLargeScreens":I
    :goto_7bd
    move v5, v15

    move/from16 v15, v23

    move/from16 v3, v25

    move/from16 v2, v29

    move/from16 v29, v16

    move/from16 v23, v17

    .end local v9    # "supportsNormalScreens":I
    .end local v17    # "supportsLargeScreens":I
    .end local v24    # "anyDensity":I
    .local v2, "supportsLargeScreens":I
    .local v3, "supportsNormalScreens":I
    .local v5, "supportsSmallScreens":I
    .local v15, "anyDensity":I
    :goto_7c8
    move-object/from16 v9, p2

    move-object v0, v1

    move/from16 v13, v21

    move/from16 v14, v26

    move/from16 v4, v27

    move/from16 v1, v29

    const/4 v6, 0x4

    move/from16 v33, v24

    move/from16 v24, v15

    move/from16 v15, v33

    goto/16 :goto_b9

    .line 1996
    .end local v21    # "outerDepth":I
    .end local v26    # "maxSdkVersion":I
    .end local v27    # "targetSandboxVersion":I
    .end local v28    # "type":I
    .end local v29    # "supportsXLargeScreens":I
    .local v1, "supportsXLargeScreens":I
    .local v4, "targetSandboxVersion":I
    .local v13, "outerDepth":I
    .local v14, "maxSdkVersion":I
    .local v15, "type":I
    .restart local v24    # "anyDensity":I
    :cond_7dc
    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v27, v4

    move/from16 v21, v13

    move/from16 v26, v14

    move/from16 v28, v15

    move/from16 v17, v23

    move/from16 v23, v24

    const/4 v1, 0x0

    move/from16 v24, v0

    move v15, v5

    .line 1994
    .end local v1    # "supportsXLargeScreens":I
    .end local v2    # "supportsLargeScreens":I
    .end local v3    # "supportsNormalScreens":I
    .end local v4    # "targetSandboxVersion":I
    .end local v5    # "supportsSmallScreens":I
    .end local v13    # "outerDepth":I
    .end local v14    # "maxSdkVersion":I
    .end local v24    # "anyDensity":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .local v17, "resizeable":I
    .restart local v21    # "outerDepth":I
    .local v23, "anyDensity":I
    .restart local v25    # "supportsNormalScreens":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v27    # "targetSandboxVersion":I
    .local v29, "supportsLargeScreens":I
    :goto_7f2
    move-object/from16 v9, p2

    move-object v0, v1

    move v5, v15

    move/from16 v1, v16

    move/from16 v13, v21

    move/from16 v15, v24

    move/from16 v3, v25

    move/from16 v14, v26

    move/from16 v4, v27

    move/from16 v2, v29

    const/4 v6, 0x4

    move/from16 v24, v23

    move/from16 v23, v17

    goto/16 :goto_b9

    .end local v15    # "supportsSmallScreens":I
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "resizeable":I
    .end local v25    # "supportsNormalScreens":I
    .end local v26    # "maxSdkVersion":I
    .end local v27    # "targetSandboxVersion":I
    .end local v29    # "supportsLargeScreens":I
    .restart local v1    # "supportsXLargeScreens":I
    .restart local v2    # "supportsLargeScreens":I
    .restart local v3    # "supportsNormalScreens":I
    .restart local v4    # "targetSandboxVersion":I
    .restart local v5    # "supportsSmallScreens":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "maxSdkVersion":I
    .local v21, "type":I
    .local v23, "resizeable":I
    .restart local v24    # "anyDensity":I
    :cond_80b
    move/from16 v16, v1

    move/from16 v29, v2

    move/from16 v25, v3

    move/from16 v27, v4

    move v15, v5

    move/from16 v26, v14

    move/from16 v28, v21

    move/from16 v17, v23

    move/from16 v23, v24

    move/from16 v21, v13

    .line 2399
    .end local v1    # "supportsXLargeScreens":I
    .end local v2    # "supportsLargeScreens":I
    .end local v3    # "supportsNormalScreens":I
    .end local v4    # "targetSandboxVersion":I
    .end local v5    # "supportsSmallScreens":I
    .end local v13    # "outerDepth":I
    .end local v14    # "maxSdkVersion":I
    .end local v24    # "anyDensity":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "resizeable":I
    .local v21, "outerDepth":I
    .local v23, "anyDensity":I
    .restart local v25    # "supportsNormalScreens":I
    .restart local v26    # "maxSdkVersion":I
    .restart local v27    # "targetSandboxVersion":I
    .restart local v28    # "type":I
    .restart local v29    # "supportsLargeScreens":I
    :goto_81e
    if-nez v18, :cond_831

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_831

    .line 2400
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v1, 0x0

    aput-object v0, v12, v1

    .line 2401
    const/16 v0, -0x6d

    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2404
    :cond_831
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v0

    .line 2405
    .local v1, "NP":I
    const/4 v0, 0x0

    .line 2406
    .local v0, "newPermsMsg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move/from16 v33, v2

    move-object v2, v0

    move/from16 v0, v33

    .local v0, "ip":I
    .local v2, "newPermsMsg":Ljava/lang/StringBuilder;
    :goto_83b
    if-ge v0, v1, :cond_884

    .line 2407
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v0

    .line 2409
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v4, v5, :cond_84a

    .line 2410
    goto :goto_884

    .line 2412
    :cond_84a
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_881

    .line 2413
    if-nez v2, :cond_869

    .line 2414
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 2415
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    const-string v4, ": compat added "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_86e

    .line 2418
    :cond_869
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2420
    :goto_86e
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_881
    add-int/lit8 v0, v0, 0x1

    goto :goto_83b

    .line 2425
    .end local v0    # "ip":I
    :cond_884
    :goto_884
    if-eqz v2, :cond_88d

    .line 2426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_88d
    :try_start_88d
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 2434
    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_895
    .catch Landroid/os/RemoteException; {:try_start_88d .. :try_end_895} :catch_896

    .line 2437
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    goto :goto_89c

    .line 2435
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :catch_896
    move-exception v0

    .line 2436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 2439
    .local v0, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :goto_89c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2440
    .local v3, "splitPermissionsSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2442
    .local v4, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_8a6
    if-ge v5, v3, :cond_8ca

    .line 2443
    nop

    .line 2444
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2445
    .local v6, "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    new-instance v9, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2446
    invoke-virtual {v6}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    .line 2447
    invoke-virtual {v6}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v14

    .line 2448
    move-object/from16 v20, v0

    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .local v20, "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-virtual {v6}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v0

    invoke-direct {v9, v13, v14, v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 2445
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2442
    .end local v6    # "splitPermissionParcelable":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    goto :goto_8a6

    .end local v20    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .restart local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    :cond_8ca
    move-object/from16 v20, v0

    .line 2452
    .end local v0    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v5    # "index":I
    .restart local v20    # "splitPermissionParcelables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2453
    .local v0, "listSize":I
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_8d1
    if-ge v5, v0, :cond_926

    .line 2454
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2455
    .local v6, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v6}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v13

    if-ge v9, v13, :cond_91f

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2456
    invoke-virtual {v6}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f2

    .line 2457
    move/from16 v22, v0

    goto :goto_921

    .line 2459
    :cond_8f2
    invoke-virtual {v6}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v9

    .line 2460
    .local v9, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "in":I
    :goto_8f7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_91c

    .line 2461
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2462
    .local v14, "perm":Ljava/lang/String;
    move/from16 v22, v0

    .end local v0    # "listSize":I
    .local v22, "listSize":I
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_917

    .line 2463
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    .end local v14    # "perm":Ljava/lang/String;
    :cond_917
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v22

    goto :goto_8f7

    .end local v22    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_91c
    move/from16 v22, v0

    .end local v0    # "listSize":I
    .restart local v22    # "listSize":I
    goto :goto_921

    .line 2455
    .end local v9    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "in":I
    .end local v22    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_91f
    move/from16 v22, v0

    .line 2453
    .end local v0    # "listSize":I
    .end local v6    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v22    # "listSize":I
    :goto_921
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v22

    goto :goto_8d1

    .end local v22    # "listSize":I
    .restart local v0    # "listSize":I
    :cond_926
    move/from16 v22, v0

    .line 2469
    .end local v0    # "listSize":I
    .end local v5    # "is":I
    .restart local v22    # "listSize":I
    if-ltz v15, :cond_933

    if-lez v15, :cond_93b

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_93b

    .line 2472
    :cond_933
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2474
    :cond_93b
    if-eqz v25, :cond_945

    .line 2475
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2477
    :cond_945
    if-ltz v29, :cond_950

    if-lez v29, :cond_958

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_958

    .line 2480
    :cond_950
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2482
    :cond_958
    if-ltz v16, :cond_964

    if-lez v16, :cond_96d

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x9

    if-lt v0, v5, :cond_96d

    .line 2485
    :cond_964
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2487
    :cond_96d
    if-ltz v17, :cond_978

    if-lez v17, :cond_980

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_980

    .line 2490
    :cond_978
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2492
    :cond_980
    if-ltz v23, :cond_98b

    if-lez v23, :cond_993

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_993

    .line 2495
    :cond_98b
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2501
    :cond_993
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_99e

    .line 2502
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2505
    :cond_99e
    return-object v8
.end method

.method private greylist parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 40
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3398
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p5

    iget-object v10, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3399
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3401
    .local v9, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3404
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 3406
    const/16 v0, 0x2a

    invoke-virtual {v8, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 3409
    const-string v3, "<application>"

    const/4 v5, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x2a

    const/16 v20, 0x16

    const/16 v21, 0x1e

    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v2, p5

    move-object v4, v8

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v16, v8

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .local v16, "sa":Landroid/content/res/TypedArray;
    move/from16 v8, v18

    move-object/from16 v23, v9

    .end local v9    # "pkgName":Ljava/lang/String;
    .local v23, "pkgName":Ljava/lang/String;
    move/from16 v9, v19

    move-object/from16 v24, v10

    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v24, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v10, v20

    move-object v13, v11

    move/from16 v11, v21

    invoke-static/range {v0 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v11, -0x6c

    if-nez v0, :cond_5d

    .line 3417
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3418
    iput v11, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3419
    const/4 v10, 0x0

    return v10

    .line 3422
    :cond_5d
    const/4 v10, 0x0

    move-object/from16 v9, v24

    .end local v24    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 3423
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3426
    :cond_68
    const/4 v8, 0x4

    const/16 v0, 0x400

    move-object/from16 v7, v16

    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 3429
    .local v6, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v6, :cond_7c

    .line 3430
    move-object/from16 v5, v23

    .end local v23    # "pkgName":Ljava/lang/String;
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v5, v6, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    goto :goto_7e

    .line 3429
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :cond_7c
    move-object/from16 v5, v23

    .line 3434
    .end local v23    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :goto_7e
    const/16 v1, 0x11

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3436
    .local v16, "allowBackup":Z
    const/high16 v1, 0x4000000

    const/16 v3, 0x10

    const/16 v11, 0x20

    if-eqz v16, :cond_f2

    .line 3437
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v19, 0x8000

    or-int v2, v2, v19

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3442
    invoke-virtual {v7, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3445
    .local v2, "backupAgent":Ljava/lang/String;
    if-eqz v2, :cond_db

    .line 3446
    invoke-static {v5, v2, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3452
    const/16 v3, 0x12

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 3455
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v20, 0x10000

    or-int v3, v3, v20

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3457
    :cond_b2
    const/16 v3, 0x15

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 3460
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v20, 0x20000

    or-int v3, v3, v20

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3462
    :cond_c2
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 3465
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v3, v1

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3467
    :cond_cd
    const/16 v3, 0x28

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 3470
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3474
    :cond_db
    const/16 v3, 0x23

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3476
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_f2

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v1, :cond_f2

    .line 3482
    iget v1, v3, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_ef

    const/4 v1, -0x1

    goto :goto_f0

    :cond_ef
    move v1, v10

    :goto_f0
    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 3489
    .end local v2    # "backupAgent":Ljava/lang/String;
    .end local v3    # "v":Landroid/util/TypedValue;
    :cond_f2
    invoke-virtual {v7, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3491
    const/16 v1, 0xd

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3494
    const/16 v1, 0x8

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 3498
    const/16 v2, 0x2d

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 3500
    .local v2, "requiredFeature":Ljava/lang/String;
    if-eqz v2, :cond_118

    iget-object v3, v15, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v3, v2}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 3501
    :cond_118
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v3, v1

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3505
    .end local v2    # "requiredFeature":Ljava/lang/String;
    :cond_11d
    const/16 v2, 0x1b

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 3508
    iput-boolean v4, v14, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3511
    :cond_127
    const/16 v2, 0x1c

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3513
    .local v3, "restrictedAccountType":Ljava/lang/String;
    if-eqz v3, :cond_137

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_137

    .line 3514
    iput-object v3, v14, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3517
    :cond_137
    const/16 v1, 0x1d

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3519
    .local v0, "requiredAccountType":Ljava/lang/String;
    if-eqz v0, :cond_147

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_147

    .line 3520
    iput-object v0, v14, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3523
    :cond_147
    const/16 v1, 0xa

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 3526
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_157

    .line 3523
    :cond_156
    const/4 v2, 0x2

    .line 3529
    :goto_157
    const/16 v1, 0x14

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 3532
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3535
    :cond_165
    const/16 v1, 0x17

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0xe

    if-lt v2, v11, :cond_171

    move v2, v4

    goto :goto_172

    :cond_171
    move v2, v10

    :goto_172
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3538
    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    const/high16 v2, 0x20000000

    if-eqz v1, :cond_183

    .line 3539
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3542
    :cond_183
    const/4 v1, 0x7

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 3545
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v1, v8

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3548
    :cond_18f
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 3551
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v11, 0x20

    or-int/2addr v1, v11

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3554
    :cond_19c
    const/4 v1, 0x5

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 3557
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3561
    :cond_1a9
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_1bb

    .line 3562
    const/16 v1, 0xf

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 3565
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3569
    :cond_1bb
    const/16 v1, 0x18

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_1cb

    .line 3572
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v26, 0x100000

    or-int v11, v11, v26

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3575
    :cond_1cb
    const/16 v11, 0x24

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v8, v2, :cond_1d7

    move v2, v4

    goto :goto_1d8

    :cond_1d7
    move v2, v10

    :goto_1d8
    invoke-virtual {v7, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/high16 v8, 0x8000000

    if-eqz v2, :cond_1e5

    .line 3578
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v8

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3581
    :cond_1e5
    const/16 v2, 0x1a

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/high16 v11, 0x400000

    if-eqz v2, :cond_1f4

    .line 3584
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v11

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3587
    :cond_1f4
    const/16 v2, 0x21

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/high16 v24, -0x80000000

    if-eqz v2, :cond_204

    .line 3590
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v2, v2, v24

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3593
    :cond_204
    const/16 v2, 0x22

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_214

    .line 3596
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v28, 0x10000000

    or-int v2, v2, v28

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3599
    :cond_214
    const/16 v2, 0x35

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/high16 v28, 0x2000000

    if-eqz v2, :cond_224

    .line 3602
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v28

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3605
    :cond_224
    const/16 v2, 0x26

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_234

    .line 3608
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v25, 0x20

    or-int/lit8 v2, v2, 0x20

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3610
    :cond_234
    const/16 v2, 0x27

    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_242

    .line 3613
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3616
    :cond_242
    const/16 v2, 0x25

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_261

    .line 3617
    const/16 v1, 0x25

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_25a

    .line 3618
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v2, 0x400

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_26d

    .line 3620
    :cond_25a
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_26d

    .line 3622
    :cond_261
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v1, :cond_26d

    .line 3623
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3626
    :cond_26d
    :goto_26d
    const/16 v1, 0x36

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_27c

    .line 3630
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3633
    :cond_27c
    const/16 v1, 0x37

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1d

    if-lt v2, v11, :cond_288

    move v2, v4

    goto :goto_289

    :cond_288
    move v2, v10

    :goto_289
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_294

    .line 3636
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v1, v8

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3639
    :cond_294
    const/16 v1, 0x38

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_2a0

    move v2, v4

    goto :goto_2a1

    :cond_2a0
    move v2, v10

    :goto_2a1
    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2ae

    .line 3642
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3645
    :cond_2ae
    const/16 v1, 0x3b

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2bc

    .line 3647
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v1, v1, v24

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3650
    :cond_2bc
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3651
    const/16 v1, 0x33

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 3653
    const/16 v1, 0x29

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3656
    const/16 v1, 0x2b

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3661
    const/4 v1, 0x6

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 3663
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_2f0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2f0

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    goto :goto_2f1

    :cond_2f0
    const/4 v8, 0x0

    :goto_2f1
    iput-object v8, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3665
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x8

    if-lt v8, v11, :cond_305

    .line 3666
    const/16 v8, 0xc

    const/16 v11, 0x400

    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_30c

    .line 3673
    :cond_305
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 3676
    .end local v1    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    :goto_30c
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v8, v11, v13}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3678
    const/16 v1, 0x30

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 3680
    .local v8, "factory":Ljava/lang/String;
    if-eqz v8, :cond_326

    .line 3681
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v8, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3684
    :cond_326
    const/16 v1, 0x31

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_336

    .line 3686
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v18, 0x400000

    or-int v1, v1, v18

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3689
    :cond_336
    const/16 v1, 0x32

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_346

    .line 3692
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v18, 0x1000000

    or-int v1, v1, v18

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3695
    :cond_346
    aget-object v1, v13, v10

    if-nez v1, :cond_3bc

    .line 3697
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_35d

    .line 3698
    const/16 v1, 0xb

    const/16 v2, 0x400

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .local v1, "pname":Ljava/lang/CharSequence;
    goto :goto_365

    .line 3705
    .end local v1    # "pname":Ljava/lang/CharSequence;
    :cond_35d
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 3708
    .local v20, "pname":Ljava/lang/CharSequence;
    :goto_365
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, v15, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v0    # "requiredAccountType":Ljava/lang/String;
    .local v22, "requiredAccountType":Ljava/lang/String;
    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, v20

    move-object/from16 v18, v3

    const/16 v19, 0x10

    .end local v3    # "restrictedAccountType":Ljava/lang/String;
    .local v18, "restrictedAccountType":Ljava/lang/String;
    move/from16 v3, p4

    const/4 v10, 0x1

    move-object/from16 v30, v5

    .end local v5    # "pkgName":Ljava/lang/String;
    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3711
    const/16 v0, 0x9

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3714
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_398

    .line 3716
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v0, v0, v28

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3719
    :cond_398
    const/16 v0, 0x2f

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3ba

    .line 3722
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    or-int/2addr v0, v5

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3726
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_3c6

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c6

    .line 3727
    const-string v0, "cantSaveState applications can not use custom processes"

    const/4 v1, 0x0

    aput-object v0, v13, v1

    goto :goto_3c6

    .line 3719
    :cond_3ba
    const/4 v5, 0x2

    goto :goto_3c6

    .line 3695
    .end local v18    # "restrictedAccountType":Ljava/lang/String;
    .end local v20    # "pname":Ljava/lang/CharSequence;
    .end local v22    # "requiredAccountType":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v0    # "requiredAccountType":Ljava/lang/String;
    .restart local v3    # "restrictedAccountType":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_3bc
    move-object/from16 v22, v0

    move-object/from16 v18, v3

    move v10, v4

    move-object/from16 v30, v5

    const/4 v5, 0x2

    const/16 v19, 0x10

    .line 3732
    .end local v0    # "requiredAccountType":Ljava/lang/String;
    .end local v3    # "restrictedAccountType":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v18    # "restrictedAccountType":Ljava/lang/String;
    .restart local v22    # "requiredAccountType":Ljava/lang/String;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_3c6
    :goto_3c6
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3735
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3737
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_3fb

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3738
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3fb

    .line 3739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 3742
    :cond_3fb
    const/16 v0, 0x34

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 3745
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3747
    const/4 v0, 0x0

    aget-object v1, v13, v0

    if-eqz v1, :cond_410

    .line 3748
    const/16 v1, -0x6c

    iput v1, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3749
    return v0

    .line 3752
    :cond_410
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3755
    .local v4, "innerDepth":I
    new-instance v0, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$CachedComponentArgs-IA;)V

    move-object/from16 v20, v6

    .end local v6    # "manageSpaceActivity":Ljava/lang/String;
    .local v20, "manageSpaceActivity":Ljava/lang/String;
    move-object v6, v0

    .line 3757
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    const/4 v0, 0x0

    .line 3758
    .local v0, "hasActivityOrder":Z
    const/4 v1, 0x0

    .line 3759
    .local v1, "hasReceiverOrder":Z
    const/4 v2, 0x0

    move/from16 v21, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v25, v7

    .line 3760
    .end local v0    # "hasActivityOrder":Z
    .end local v1    # "hasReceiverOrder":Z
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v21, "hasActivityOrder":Z
    .local v23, "hasReceiverOrder":Z
    .local v24, "hasServiceOrder":Z
    .local v25, "sa":Landroid/content/res/TypedArray;
    :goto_428
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    if-eq v0, v10, :cond_7b5

    const/4 v0, 0x3

    if-ne v7, v0, :cond_44b

    .line 3761
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_439

    goto :goto_44b

    :cond_439
    move/from16 v29, v4

    move/from16 v32, v7

    move-object/from16 v26, v8

    move-object v5, v9

    move-object/from16 v17, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v30

    move-object/from16 v7, p2

    goto/16 :goto_7c5

    .line 3762
    :cond_44b
    :goto_44b
    const/4 v0, 0x3

    if-eq v7, v0, :cond_790

    const/4 v3, 0x4

    if-ne v7, v3, :cond_466

    .line 3763
    move-object/from16 v7, p2

    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v26, v8

    move-object v5, v9

    move-object/from16 v17, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v30

    const/4 v1, 0x0

    const/16 v2, -0x6c

    goto/16 :goto_7a5

    .line 3766
    :cond_466
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3767
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    .line 3768
    const/16 v26, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p1

    move-object/from16 v31, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .local v31, "tagName":Ljava/lang/String;
    move-object/from16 v2, p2

    move/from16 v28, v3

    move-object/from16 v3, p3

    move/from16 v29, v4

    .end local v4    # "innerDepth":I
    .local v29, "innerDepth":I
    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v32, v7

    .end local v7    # "type":I
    .local v32, "type":I
    move/from16 v7, v26

    move-object/from16 v26, v8

    .end local v8    # "factory":Ljava/lang/String;
    .local v26, "factory":Ljava/lang/String;
    move/from16 v8, v27

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 3770
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_49e

    .line 3771
    const/16 v1, -0x6c

    iput v1, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3772
    const/4 v2, 0x0

    return v2

    .line 3775
    :cond_49e
    const/16 v1, -0x6c

    const/4 v2, 0x0

    iget v3, v0, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v3, :cond_4a7

    move v3, v10

    goto :goto_4a8

    :cond_4a7
    move v3, v2

    :goto_4a8
    or-int v3, v21, v3

    .line 3776
    .end local v21    # "hasActivityOrder":Z
    .local v3, "hasActivityOrder":Z
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3778
    .end local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v7, p2

    move/from16 v21, v3

    move-object v5, v9

    move-object/from16 v17, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v30

    move/from16 v33, v2

    move v2, v1

    move/from16 v1, v33

    goto/16 :goto_74a

    .end local v3    # "hasActivityOrder":Z
    .end local v26    # "factory":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v31    # "tagName":Ljava/lang/String;
    .end local v32    # "type":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v4    # "innerDepth":I
    .restart local v7    # "type":I
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v21    # "hasActivityOrder":Z
    :cond_4c2
    move-object/from16 v31, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v32, v7

    move-object/from16 v26, v8

    const/16 v1, -0x6c

    const/4 v2, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "factory":Ljava/lang/String;
    .restart local v26    # "factory":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v31    # "tagName":Ljava/lang/String;
    .restart local v32    # "type":I
    const-string/jumbo v0, "receiver"

    move-object/from16 v3, v31

    .end local v31    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_518

    .line 3779
    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v5, v9

    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v9, p2

    move v1, v2

    move v2, v10

    move-object/from16 v10, p3

    move-object/from16 v17, v11

    const/16 v2, -0x6c

    .end local v11    # "str":Ljava/lang/String;
    .local v17, "str":Ljava/lang/String;
    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    move v14, v0

    move-object v0, v15

    move v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3781
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_4fc

    .line 3782
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3783
    return v1

    .line 3786
    :cond_4fc
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_502

    const/4 v7, 0x1

    goto :goto_503

    :cond_502
    move v7, v1

    :goto_503
    or-int v7, v23, v7

    .line 3787
    .end local v23    # "hasReceiverOrder":Z
    .local v7, "hasReceiverOrder":Z
    move-object/from16 v14, p1

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3789
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v23, v7

    move-object/from16 v11, v30

    move-object/from16 v7, p2

    goto/16 :goto_74a

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "hasReceiverOrder":Z
    .end local v17    # "str":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "str":Ljava/lang/String;
    .restart local v23    # "hasReceiverOrder":Z
    :cond_518
    move-object v5, v9

    move-object/from16 v17, v11

    move-object v0, v15

    move/from16 v33, v2

    move v2, v1

    move/from16 v1, v33

    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "str":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v17    # "str":Ljava/lang/String;
    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55a

    .line 3790
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v4

    .line 3791
    .local v4, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v4, :cond_540

    .line 3792
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3793
    return v1

    .line 3796
    :cond_540
    iget v7, v4, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v7, :cond_546

    const/4 v7, 0x1

    goto :goto_547

    :cond_546
    move v7, v1

    :goto_547
    or-int v7, v24, v7

    .line 3797
    .end local v24    # "hasServiceOrder":Z
    .local v7, "hasServiceOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    .end local v4    # "s":Landroid/content/pm/PackageParser$Service;
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v24, v7

    move-object/from16 v11, v30

    move-object/from16 v7, p2

    goto/16 :goto_74a

    .end local v7    # "hasServiceOrder":Z
    .restart local v24    # "hasServiceOrder":Z
    :cond_55a
    const-string/jumbo v4, "provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_588

    .line 3800
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v4

    .line 3801
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v4, :cond_579

    .line 3802
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3803
    return v1

    .line 3806
    :cond_579
    iget-object v7, v14, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    .end local v4    # "p":Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v11, v30

    goto/16 :goto_74a

    :cond_588
    const-string v4, "activity-alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c0

    .line 3809
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3810
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_5a6

    .line 3811
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3812
    return v1

    .line 3815
    :cond_5a6
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_5ac

    const/4 v7, 0x1

    goto :goto_5ad

    :cond_5ac
    move v7, v1

    :goto_5ad
    or-int v7, v21, v7

    .line 3816
    .end local v21    # "hasActivityOrder":Z
    .local v7, "hasActivityOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3818
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v21, v7

    move-object/from16 v11, v30

    move-object/from16 v7, p2

    goto/16 :goto_74a

    .end local v7    # "hasActivityOrder":Z
    .restart local v21    # "hasActivityOrder":Z
    :cond_5c0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e4

    .line 3822
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct {v0, v7, v8, v4, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_5e0

    .line 3824
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3825
    return v1

    .line 3822
    :cond_5e0
    move-object/from16 v11, v30

    goto/16 :goto_74a

    .line 3827
    :cond_5e4
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const-string/jumbo v4, "static-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_699

    .line 3828
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3833
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3835
    .local v10, "lname":Ljava/lang/String;
    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 3837
    .local v13, "version":I
    const/4 v12, 0x2

    invoke-virtual {v4, v12, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3841
    .local v15, "versionMajor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3844
    if-eqz v10, :cond_66e

    if-gez v13, :cond_614

    move-object/from16 v31, v3

    move-object/from16 v11, v30

    goto :goto_672

    .line 3852
    :cond_614
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v11, :cond_625

    .line 3853
    const-string/jumbo v2, "sharedUserId not allowed in static shared library"

    aput-object v2, v9, v1

    .line 3854
    const/16 v2, -0x6b

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3855
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3856
    return v1

    .line 3859
    :cond_625
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v11, :cond_646

    .line 3860
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple static-shared libs for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v12, v30

    .end local v30    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v1

    .line 3861
    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3862
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3863
    return v1

    .line 3866
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_646
    move-object/from16 v11, v30

    .end local v30    # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3867
    if-ltz v13, :cond_65a

    .line 3868
    nop

    .line 3869
    move-object/from16 v31, v3

    .end local v3    # "tagName":Ljava/lang/String;
    .restart local v31    # "tagName":Ljava/lang/String;
    invoke-static {v15, v13}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_65f

    .line 3871
    .end local v31    # "tagName":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_65a
    move-object/from16 v31, v3

    .end local v3    # "tagName":Ljava/lang/String;
    .restart local v31    # "tagName":Ljava/lang/String;
    int-to-long v2, v13

    iput-wide v2, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3873
    :goto_65f
    iget v2, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3875
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3877
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    move-object/from16 v25, v4

    const/16 v2, -0x6c

    goto/16 :goto_74a

    .line 3844
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v31    # "tagName":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v10    # "lname":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v15    # "versionMajor":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_66e
    move-object/from16 v31, v3

    move-object/from16 v11, v30

    .line 3845
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    .restart local v31    # "tagName":Ljava/lang/String;
    :goto_672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad static-library declaration name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 3847
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3848
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3849
    return v1

    .line 3877
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "lname":Ljava/lang/String;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    .end local v31    # "tagName":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_699
    move-object/from16 v31, v3

    move-object/from16 v11, v30

    .end local v3    # "tagName":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    .restart local v31    # "tagName":Ljava/lang/String;
    const-string v3, "library"

    move-object/from16 v4, v31

    .end local v31    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d1

    .line 3878
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3883
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3886
    .restart local v10    # "lname":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3888
    if-eqz v10, :cond_6ca

    .line 3889
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3890
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6ca

    .line 3891
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3896
    :cond_6ca
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3898
    .end local v10    # "lname":Ljava/lang/String;
    move-object/from16 v25, v3

    goto/16 :goto_74a

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_6d1
    const-string/jumbo v3, "uses-static-library"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e1

    .line 3899
    invoke-direct {v0, v14, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74a

    .line 3900
    return v1

    .line 3903
    :cond_6e1
    const-string/jumbo v3, "uses-library"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71b

    .line 3904
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3909
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v3    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3911
    .restart local v10    # "lname":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v3, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 3915
    .local v13, "req":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3917
    if-eqz v10, :cond_715

    .line 3918
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3919
    if-eqz v13, :cond_70d

    .line 3920
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_715

    .line 3922
    :cond_70d
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3927
    :cond_715
    :goto_715
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3929
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "req":Z
    move-object/from16 v25, v3

    goto :goto_74a

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_71b
    const-string/jumbo v3, "uses-package"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_728

    .line 3932
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_74a

    .line 3933
    :cond_728
    const-string/jumbo v3, "profileable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75a

    .line 3934
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3936
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v3    # "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_745

    .line 3938
    iget v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v12, 0x800000

    or-int/2addr v10, v12

    iput v10, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3940
    :cond_745
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v25, v3

    .line 3954
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "tagName":Ljava/lang/String;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_74a
    :goto_74a
    move-object v15, v0

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v30, v11

    move-object/from16 v11, v17

    move-object/from16 v8, v26

    move/from16 v4, v29

    const/4 v10, 0x1

    move-object v9, v5

    const/4 v5, 0x2

    goto/16 :goto_428

    .line 3943
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_75a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <application>: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " at "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3945
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3943
    const-string v10, "PackageParser"

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3947
    goto :goto_7a5

    .line 3762
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "str":Ljava/lang/String;
    .end local v26    # "factory":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v32    # "type":I
    .local v4, "innerDepth":I
    .local v7, "type":I
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "str":Ljava/lang/String;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_790
    move/from16 v29, v4

    move/from16 v32, v7

    move-object/from16 v26, v8

    move-object v5, v9

    move-object/from16 v17, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v30

    const/4 v1, 0x0

    const/16 v2, -0x6c

    const/16 v28, 0x4

    move-object/from16 v7, p2

    .line 3760
    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "factory":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v17    # "str":Ljava/lang/String;
    .restart local v26    # "factory":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    :goto_7a5
    move-object v15, v0

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v30, v11

    move-object/from16 v11, v17

    move-object/from16 v8, v26

    move/from16 v4, v29

    const/4 v10, 0x1

    move-object v9, v5

    const/4 v5, 0x2

    goto/16 :goto_428

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "str":Ljava/lang/String;
    .end local v26    # "factory":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .restart local v4    # "innerDepth":I
    .restart local v7    # "type":I
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "str":Ljava/lang/String;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :cond_7b5
    move/from16 v29, v4

    move/from16 v32, v7

    move-object/from16 v26, v8

    move-object v5, v9

    move-object/from16 v17, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v30

    move-object/from16 v7, p2

    .line 3956
    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "factory":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v17    # "str":Ljava/lang/String;
    .restart local v26    # "factory":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v32    # "type":I
    :goto_7c5
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7db

    .line 3959
    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v2, p4

    invoke-direct {v0, v14, v2, v9, v1}, Landroid/content/pm/PackageParser;->generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v1

    .line 3961
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7dd

    .line 3956
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_7db
    move/from16 v2, p4

    .line 3964
    :goto_7dd
    if-eqz v21, :cond_7e9

    .line 3965
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3967
    :cond_7e9
    if-eqz v23, :cond_7f5

    .line 3968
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3970
    :cond_7f5
    if-eqz v24, :cond_801

    .line 3971
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3975
    :cond_801
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3976
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3977
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V

    .line 3979
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_819

    .line 3980
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_821

    .line 3982
    :cond_819
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3985
    :goto_821
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 13
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1116
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1117
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_e

    goto :goto_29

    .line 1118
    :cond_e
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1123
    :cond_29
    :goto_29
    const/4 v1, 0x0

    .line 1125
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v2, v0, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v2, :cond_4e

    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 1127
    :try_start_36
    invoke-static {v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v1, v2

    .line 1128
    new-instance v2, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;

    invoke-direct {v2, v0, v1, p2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_40
    .catch Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException; {:try_start_36 .. :try_end_40} :catch_41

    .line 1131
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    goto :goto_53

    .line 1129
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :catch_41
    move-exception v2

    .line 1130
    .local v2, "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1133
    .end local v2    # "e":Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;
    :cond_4e
    new-instance v2, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v2, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1137
    .local v2, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :goto_53
    :try_start_53
    invoke-interface {v2}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1138
    .local v3, "assets":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v4, "baseApk":Ljava/io/File;
    invoke-direct {p0, v4, v3, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1140
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_af

    .line 1145
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 1146
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v6, v6

    .line 1147
    .local v6, "num":I
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1148
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1149
    iget-object v7, v0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1150
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1151
    new-array v7, v6, [I

    iput-object v7, v5, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1152
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1153
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v7, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1154
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1156
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_94
    if-ge v7, v6, :cond_a0

    .line 1157
    invoke-interface {v2, v7}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    .line 1158
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v5, v7, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1156
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    .line 1162
    .end local v6    # "num":I
    .end local v7    # "i":I
    :cond_a0
    iget-object v6, v0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1163
    iget-boolean v6, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_aa
    .catchall {:try_start_53 .. :try_end_aa} :catchall_ca

    .line 1164
    nop

    .line 1166
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1164
    return-object v5

    .line 1141
    :cond_af
    :try_start_af
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "packageDir":Ljava/io/File;
    .end local p2    # "flags":I
    throw v6
    :try_end_ca
    .catchall {:try_start_af .. :try_end_ca} :catchall_ca

    .line 1166
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "baseApk":Ljava/io/File;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v2    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "packageDir":Ljava/io/File;
    .restart local p2    # "flags":I
    :catchall_ca
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1167
    throw v3
.end method

.method static greylist-max-o parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 28
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 979
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 980
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17b

    .line 985
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 986
    aget-object v2, v1, v3

    invoke-static {v2, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    return-object v2

    .line 989
    :cond_20
    const/4 v2, 0x0

    .line 990
    .local v2, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 992
    .local v4, "versionCode":I
    const-wide/32 v5, 0x40000

    const-string/jumbo v7, "parseApkLite"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 993
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 994
    .local v7, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    array-length v8, v1

    :goto_31
    const/16 v9, -0x65

    if-ge v3, v8, :cond_e0

    aget-object v10, v1, v3

    .line 995
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 996
    invoke-static {v10, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 1000
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v2, :cond_48

    .line 1001
    iget-object v2, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 1002
    iget v4, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_58

    .line 1004
    :cond_48
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "; expected "

    const-string v14, " in "

    if-eqz v12, :cond_b1

    .line 1009
    iget v12, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v4, v12, :cond_86

    .line 1017
    :goto_58
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v7, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_61

    goto :goto_dc

    .line 1018
    :cond_61
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Split name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " defined more than once; most recent was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1010
    :cond_86
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1005
    :cond_b1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 994
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_dc
    :goto_dc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 1024
    :cond_e0
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1026
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ApkLite;

    .line 1027
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-eqz v3, :cond_160

    .line 1033
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1035
    .local v5, "size":I
    const/4 v6, 0x0

    .line 1036
    .local v6, "splitNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1037
    .local v8, "isFeatureSplits":[Z
    const/4 v9, 0x0

    .line 1038
    .local v9, "usesSplitNames":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1039
    .local v10, "configForSplits":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1040
    .local v11, "splitCodePaths":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1041
    .local v12, "splitRevisionCodes":[I
    const/16 v20, 0x0

    .line 1042
    .local v20, "splitClassLoaderNames":[Ljava/lang/String;
    if-lez v5, :cond_13f

    .line 1043
    new-array v6, v5, [Ljava/lang/String;

    .line 1044
    new-array v8, v5, [Z

    .line 1045
    new-array v9, v5, [Ljava/lang/String;

    .line 1046
    new-array v10, v5, [Ljava/lang/String;

    .line 1047
    new-array v11, v5, [Ljava/lang/String;

    .line 1048
    new-array v12, v5, [I

    .line 1050
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    check-cast v6, [Ljava/lang/String;

    .line 1051
    sget-object v13, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v6, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1053
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_117
    if-ge v13, v5, :cond_138

    .line 1054
    aget-object v14, v6, v13

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    .line 1055
    .local v14, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v9, v13

    .line 1056
    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v8, v13

    .line 1057
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v10, v13

    .line 1058
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v11, v13

    .line 1059
    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v12, v13

    .line 1053
    .end local v14    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    add-int/lit8 v13, v13, 0x1

    goto :goto_117

    :cond_138
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    goto :goto_145

    .line 1042
    .end local v13    # "i":I
    :cond_13f
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    .line 1063
    .end local v10    # "configForSplits":[Ljava/lang/String;
    .end local v11    # "splitCodePaths":[Ljava/lang/String;
    .end local v12    # "splitRevisionCodes":[I
    .local v21, "configForSplits":[Ljava/lang/String;
    .local v22, "splitCodePaths":[Ljava/lang/String;
    .local v23, "splitRevisionCodes":[I
    :goto_145
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    .line 1064
    .local v24, "codePath":Ljava/lang/String;
    new-instance v25, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v12, v3, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    move-object/from16 v10, v25

    move-object/from16 v11, v24

    move-object v13, v3

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    invoke-direct/range {v10 .. v19}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v25

    .line 1028
    .end local v5    # "size":I
    .end local v6    # "splitNames":[Ljava/lang/String;
    .end local v8    # "isFeatureSplits":[Z
    .end local v9    # "usesSplitNames":[Ljava/lang/String;
    .end local v20    # "splitClassLoaderNames":[Ljava/lang/String;
    .end local v21    # "configForSplits":[Ljava/lang/String;
    .end local v22    # "splitCodePaths":[Ljava/lang/String;
    .end local v23    # "splitRevisionCodes":[I
    .end local v24    # "codePath":Ljava/lang/String;
    :cond_160
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing base APK in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 981
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v4    # "versionCode":I
    .end local v7    # "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    :cond_17b
    move-object/from16 v8, p0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x64

    const-string v4, "No packages found in split"

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3325
    move-object/from16 v6, p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3328
    .local v3, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_27

    .line 3329
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x7

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3336
    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 3339
    :cond_27
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v3, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3341
    new-instance v0, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v2, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v2}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    move-object v7, v0

    .line 3343
    .local v7, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-eqz v1, :cond_46

    .line 3344
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3345
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3346
    return-object v9

    .line 3352
    :cond_46
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 3354
    .local v1, "str":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_55

    :cond_54
    move-object v10, v9

    :goto_55
    iput-object v10, v2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3356
    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3358
    .end local v1    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_66

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_67

    :cond_66
    move-object v2, v9

    :goto_67
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3360
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3364
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3368
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3370
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v1, :cond_8b

    .line 3371
    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p4, v0

    .line 3372
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3373
    return-object v9

    .line 3376
    :cond_8b
    const-string v11, "<instrumentation>"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v12, v3

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    move-object v3, v11

    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 3378
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3379
    return-object v9

    .line 3382
    :cond_a1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3384
    return-object v7
.end method

.method private greylist-max-o parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .registers 25
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5788
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5791
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5793
    .local v6, "priority":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5795
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 5797
    .local v8, "order":I
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5799
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 5801
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_2f

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_2f

    .line 5802
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5805
    :cond_2f
    sget-boolean v10, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    const/4 v11, 0x7

    if-eqz v10, :cond_39

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_3a

    .line 5806
    :cond_39
    move v10, v5

    :goto_3a
    nop

    .line 5807
    .local v10, "roundIconVal":I
    const/4 v12, 0x1

    if-eqz v10, :cond_41

    .line 5808
    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_47

    .line 5810
    :cond_41
    invoke-virtual {v0, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5814
    :goto_47
    const/4 v13, 0x4

    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5817
    const/4 v14, 0x5

    invoke-virtual {v0, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5820
    const/4 v15, 0x6

    if-eqz p4, :cond_5f

    .line 5821
    invoke-virtual {v0, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5826
    :cond_5f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5828
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 5830
    .local v14, "outerDepth":I
    :goto_66
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "type":I
    if-eq v15, v12, :cond_1d3

    move/from16 v15, v16

    .end local v16    # "type":I
    .local v15, "type":I
    if-ne v15, v7, :cond_7d

    .line 5831
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v14, :cond_79

    goto :goto_7d

    :cond_79
    move-object/from16 v12, p0

    goto/16 :goto_1d7

    .line 5832
    :cond_7d
    :goto_7d
    if-eq v15, v7, :cond_1c8

    if-ne v15, v13, :cond_86

    .line 5833
    move-object/from16 v12, p0

    move v11, v7

    goto/16 :goto_1cb

    .line 5836
    :cond_86
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5837
    .local v4, "nodeName":Ljava/lang/String;
    const-string v13, "action"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v7, ""

    const-string v17, "No value supplied for <android:name>"

    const-string/jumbo v11, "name"

    const-string v12, "http://schemas.android.com/apk/res/android"

    if-eqz v13, :cond_b2

    .line 5838
    invoke-interface {v2, v12, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5840
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_af

    if-ne v11, v7, :cond_a4

    goto :goto_af

    .line 5844
    :cond_a4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5846
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5847
    .end local v11    # "value":Ljava/lang/String;
    const/4 v11, 0x3

    move-object/from16 v12, p0

    goto/16 :goto_1c0

    .line 5841
    .restart local v11    # "value":Ljava/lang/String;
    :cond_af
    :goto_af
    aput-object v17, p6, v5

    .line 5842
    return v5

    .line 5847
    .end local v11    # "value":Ljava/lang/String;
    :cond_b2
    const-string v13, "category"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d1

    .line 5848
    invoke-interface {v2, v12, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5850
    .restart local v11    # "value":Ljava/lang/String;
    if-eqz v11, :cond_ce

    if-ne v11, v7, :cond_c3

    goto :goto_ce

    .line 5854
    :cond_c3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5856
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5858
    .end local v11    # "value":Ljava/lang/String;
    const/4 v11, 0x3

    move-object/from16 v12, p0

    goto/16 :goto_1c0

    .line 5851
    .restart local v11    # "value":Ljava/lang/String;
    :cond_ce
    :goto_ce
    aput-object v17, p6, v5

    .line 5852
    return v5

    .line 5858
    .end local v11    # "value":Ljava/lang/String;
    :cond_d1
    const-string v7, "data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_184

    .line 5859
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 5862
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5864
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_f6

    .line 5866
    :try_start_e5
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_e8
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_e5 .. :try_end_e8} :catch_e9

    .line 5871
    goto :goto_f6

    .line 5867
    :catch_e9
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 5868
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, p6, v5

    .line 5869
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 5870
    return v5

    .line 5874
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_f6
    :goto_f6
    const/4 v0, 0x1

    invoke-virtual {v7, v0, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5876
    if-eqz v11, :cond_100

    .line 5877
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5880
    :cond_100
    const/4 v12, 0x7

    invoke-virtual {v7, v12, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5882
    .end local v11    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_10a

    .line 5883
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5886
    :cond_10a
    const/16 v11, 0x8

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5888
    if-eqz v0, :cond_116

    .line 5889
    const/4 v11, 0x1

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5892
    :cond_116
    const/16 v11, 0x9

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5894
    if-eqz v0, :cond_12b

    .line 5895
    if-nez p3, :cond_126

    .line 5896
    const-string/jumbo v11, "sspPattern not allowed here; ssp must be literal"

    aput-object v11, p6, v5

    .line 5897
    return v5

    .line 5899
    :cond_126
    const/4 v11, 0x2

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_12c

    .line 5894
    :cond_12b
    const/4 v11, 0x2

    .line 5902
    :goto_12c
    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 5904
    .local v13, "host":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5906
    .local v12, "port":Ljava/lang/String;
    if-eqz v13, :cond_13a

    .line 5907
    invoke-virtual {v3, v13, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5910
    :cond_13a
    const/4 v11, 0x4

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5912
    if-eqz v0, :cond_144

    .line 5913
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5916
    :cond_144
    const/4 v11, 0x5

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5918
    if-eqz v0, :cond_14f

    .line 5919
    const/4 v11, 0x1

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5922
    :cond_14f
    const/4 v11, 0x6

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5924
    if-eqz v0, :cond_163

    .line 5925
    if-nez p3, :cond_15e

    .line 5926
    const-string/jumbo v11, "pathPattern not allowed here; path must be literal"

    aput-object v11, p6, v5

    .line 5927
    return v5

    .line 5929
    :cond_15e
    const/4 v11, 0x2

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_164

    .line 5924
    :cond_163
    const/4 v11, 0x2

    .line 5932
    :goto_164
    const/16 v11, 0xd

    invoke-virtual {v7, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5934
    if-eqz v0, :cond_179

    .line 5935
    if-nez p3, :cond_174

    .line 5936
    const-string/jumbo v11, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v11, p6, v5

    .line 5937
    return v5

    .line 5939
    :cond_174
    const/4 v11, 0x3

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_17a

    .line 5934
    :cond_179
    const/4 v11, 0x3

    .line 5942
    :goto_17a
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 5943
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5944
    .end local v0    # "str":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    .end local v13    # "host":Ljava/lang/String;
    move-object/from16 v12, p0

    move-object v0, v7

    goto :goto_1c0

    .line 5945
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    :cond_184
    const/4 v11, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <intent-filter>: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5946
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " at "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v12, p0

    iget-object v13, v12, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5947
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5945
    const-string v13, "PackageParser"

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5953
    .end local v4    # "nodeName":Ljava/lang/String;
    :goto_1c0
    move v7, v11

    const/4 v4, 0x2

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v15, 0x6

    goto/16 :goto_66

    .line 5832
    :cond_1c8
    move-object/from16 v12, p0

    move v11, v7

    .line 5830
    .end local v15    # "type":I
    :goto_1cb
    move v7, v11

    const/4 v4, 0x2

    const/4 v11, 0x7

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v15, 0x6

    goto/16 :goto_66

    .restart local v16    # "type":I
    :cond_1d3
    move-object/from16 v12, p0

    move/from16 v15, v16

    .line 5955
    .end local v16    # "type":I
    .restart local v15    # "type":I
    :goto_1d7
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 5972
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2978
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 2979
    .local v4, "outerDepth":I
    const/4 v5, -0x1

    .line 2981
    .local v5, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 2982
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 2983
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2984
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 2985
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2986
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    const/4 v13, 0x1

    const-string v14, "PackageParser"

    if-eq v11, v13, :cond_213

    const/4 v11, 0x3

    if-ne v12, v11, :cond_3e

    .line 2987
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_36

    goto :goto_3e

    :cond_36
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v12

    goto/16 :goto_219

    .line 2988
    :cond_3e
    :goto_3e
    if-ne v12, v11, :cond_4f

    .line 2989
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_49

    .line 2990
    const/4 v6, 0x0

    .line 2991
    const/4 v5, -0x1

    goto :goto_22

    .line 2989
    :cond_49
    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_20d

    .line 2995
    :cond_4f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2996
    .local v11, "tagName":Ljava/lang/String;
    const-string v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "Improperly nested \'key-set\' tag at "

    if-eqz v13, :cond_9d

    .line 2997
    if-eqz v6, :cond_7c

    .line 2998
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2999
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p4, v14

    .line 3000
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3001
    return v14

    .line 3003
    :cond_7c
    const/4 v14, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3005
    .local v13, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3007
    .local v14, "keysetName":Ljava/lang/String;
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    move-object v6, v14

    .line 3009
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 3010
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3011
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "keysetName":Ljava/lang/String;
    move/from16 v17, v4

    move/from16 v19, v12

    goto/16 :goto_1d1

    :cond_9d
    const-string/jumbo v13, "public-key"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ab

    .line 3012
    if-nez v6, :cond_c5

    .line 3013
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3014
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, p4, v15

    .line 3015
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3016
    return v15

    .line 3018
    :cond_c5
    const/4 v15, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3020
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v17, v4

    .end local v4    # "outerDepth":I
    .local v17, "outerDepth":I
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3022
    .local v4, "publicKeyName":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 3024
    .local v15, "encodedKey":Ljava/lang/String;
    if-nez v15, :cond_10d

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_10d

    .line 3025
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v5

    .end local v5    # "currentKeySetDepth":I
    .local v18, "currentKeySetDepth":I
    const-string v5, "\'public-key\' "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " must define a public-key value on first use at "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3026
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, p4, v14

    .line 3027
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3028
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3029
    return v14

    .line 3024
    .end local v18    # "currentKeySetDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :cond_10d
    move/from16 v18, v5

    .line 3030
    .end local v5    # "currentKeySetDepth":I
    .restart local v18    # "currentKeySetDepth":I
    if-eqz v15, :cond_197

    .line 3031
    invoke-static {v15}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3032
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_150

    .line 3033
    move/from16 v19, v12

    .end local v12    # "type":I
    .local v19, "type":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    .end local v15    # "encodedKey":Ljava/lang/String;
    .local v16, "encodedKey":Ljava/lang/String;
    const-string v15, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3034
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " key-set "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3033
    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3037
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3038
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3039
    goto/16 :goto_20d

    .line 3041
    .end local v16    # "encodedKey":Ljava/lang/String;
    .end local v19    # "type":I
    .restart local v12    # "type":I
    .restart local v15    # "encodedKey":Ljava/lang/String;
    :cond_150
    move/from16 v19, v12

    move-object/from16 v16, v15

    .end local v12    # "type":I
    .end local v15    # "encodedKey":Ljava/lang/String;
    .restart local v16    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "type":I
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_193

    .line 3042
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/PublicKey;

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_167

    goto :goto_193

    .line 3047
    :cond_167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Value of \'public-key\' "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " conflicts with previously defined value at "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3049
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, p4, v14

    .line 3050
    const/16 v12, -0x6c

    iput v12, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3051
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3052
    return v14

    .line 3045
    :cond_193
    :goto_193
    invoke-virtual {v7, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19b

    .line 3030
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v16    # "encodedKey":Ljava/lang/String;
    .end local v19    # "type":I
    .restart local v12    # "type":I
    .restart local v15    # "encodedKey":Ljava/lang/String;
    :cond_197
    move/from16 v19, v12

    move-object/from16 v16, v15

    .line 3055
    .end local v12    # "type":I
    .end local v15    # "encodedKey":Ljava/lang/String;
    .restart local v16    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "type":I
    :goto_19b
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3056
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3057
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3058
    .end local v4    # "publicKeyName":Ljava/lang/String;
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "encodedKey":Ljava/lang/String;
    goto :goto_1cf

    .end local v17    # "outerDepth":I
    .end local v18    # "currentKeySetDepth":I
    .end local v19    # "type":I
    .local v4, "outerDepth":I
    .local v5, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_1ab
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v12

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "outerDepth":I
    .restart local v18    # "currentKeySetDepth":I
    .restart local v19    # "type":I
    const-string/jumbo v4, "upgrade-key-set"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 3059
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3061
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 3063
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3064
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3065
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3066
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "name":Ljava/lang/String;
    nop

    .line 3079
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_1cf
    move/from16 v5, v18

    .end local v18    # "currentKeySetDepth":I
    .local v5, "currentKeySetDepth":I
    :goto_1d1
    move/from16 v4, v17

    goto/16 :goto_22

    .line 3073
    .end local v5    # "currentKeySetDepth":I
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v18    # "currentKeySetDepth":I
    :cond_1d5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <key-sets>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3075
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3073
    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3077
    nop

    .line 2986
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v17    # "outerDepth":I
    .end local v18    # "currentKeySetDepth":I
    .end local v19    # "type":I
    .local v4, "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_20d
    move/from16 v4, v17

    move/from16 v5, v18

    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .restart local v17    # "outerDepth":I
    .restart local v18    # "currentKeySetDepth":I
    goto/16 :goto_22

    .end local v17    # "outerDepth":I
    .end local v18    # "currentKeySetDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_213
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v12

    .line 3080
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "outerDepth":I
    .restart local v18    # "currentKeySetDepth":I
    .restart local v19    # "type":I
    :goto_219
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3081
    .local v4, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    const-string v11, "Package"

    if-eqz v5, :cond_24a

    .line 3082
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, p4, v11

    .line 3084
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3085
    return v11

    .line 3087
    :cond_24a
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3088
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_259
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_30f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3089
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3090
    .local v13, "keySetName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    const-string v2, " AndroidManifext.xml \'key-set\' "

    if-nez v15, :cond_2a2

    .line 3091
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_259

    .line 3095
    :cond_2a2
    invoke-virtual {v10, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d1

    .line 3096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_259

    .line 3101
    :cond_2d1
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v13, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_309

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3103
    .local v3, "s":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/security/PublicKey;

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3104
    .end local v3    # "s":Ljava/lang/String;
    move-object/from16 v2, v21

    goto :goto_2e5

    .line 3105
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v13    # "keySetName":Ljava/lang/String;
    :cond_309
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_259

    .line 3106
    :cond_30f
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_31f

    .line 3107
    iput-object v8, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3114
    const/4 v2, 0x1

    return v2

    .line 3109
    :cond_31f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 3111
    const/16 v2, -0x6c

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3112
    return v3
.end method

.method private greylist-max-o parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .registers 27
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 4801
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4803
    .local v0, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 4804
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 4805
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 4806
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 4807
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 4809
    .local v8, "widthType":I
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v11, :cond_22

    .line 4810
    invoke-virtual {v0, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    goto :goto_28

    .line 4813
    :cond_22
    if-ne v8, v10, :cond_28

    .line 4814
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4818
    :cond_28
    :goto_28
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v15

    .line 4820
    .local v15, "heightType":I
    if-ne v15, v11, :cond_34

    .line 4821
    invoke-virtual {v0, v7, v13, v13, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    goto :goto_3a

    .line 4824
    :cond_34
    if-ne v15, v10, :cond_3a

    .line 4825
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 4829
    :cond_3a
    :goto_3a
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4832
    .local v7, "gravity":I
    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 4835
    .local v9, "minWidth":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 4838
    .local v10, "minHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4839
    move-object/from16 v11, p3

    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v13, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v13

    move/from16 v22, v15

    .end local v15    # "heightType":I
    .local v22, "heightType":I
    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4841
    return-void
.end method

.method private greylist-max-o parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5627
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5630
    .local v0, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_e

    .line 5631
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 5634
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5636
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 5637
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    .line 5638
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5639
    return-object v3

    .line 5642
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 5644
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5646
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_34

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_34

    .line 5648
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b8

    .line 5650
    :cond_34
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5653
    if-eqz v4, :cond_b3

    .line 5654
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4e

    .line 5655
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5656
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4a
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5657
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_b8

    :cond_4e
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_5d

    .line 5658
    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_59

    move v1, v5

    :cond_59
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b8

    .line 5659
    :cond_5d
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_6f

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_6f

    .line 5661
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b8

    .line 5662
    :cond_6f
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7c

    .line 5663
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b8

    .line 5666
    :cond_7c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5667
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5668
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5666
    const-string v3, "PackageParser"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 5675
    :cond_b3
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    .line 5676
    const/4 p3, 0x0

    .line 5680
    :goto_b8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5682
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5684
    return-object p3
.end method

.method private static greylist-max-o parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 16
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 969
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "parseApkLite"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 970
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    .line 971
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 972
    .local v13, "packagePath":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 973
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v5, v2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v0

    move-object v4, v13

    move-object v6, v2

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private static greylist-max-o parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .registers 28
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .line 4191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-nez v4, :cond_23

    .line 4192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 4193
    return v5

    .line 4196
    :cond_23
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 4197
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_43

    .line 4198
    if-eqz p5, :cond_6e

    .line 4199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 4200
    return v5

    .line 4203
    :cond_43
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4204
    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4205
    .local v8, "outInfoName":Ljava/lang/String;
    sget-object v9, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 4206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " invalid android:name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    .line 4207
    return v5

    .line 4209
    :cond_69
    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4210
    if-nez v8, :cond_6e

    .line 4211
    return v5

    .line 4215
    .end local v8    # "outInfoName":Ljava/lang/String;
    :cond_6e
    sget-boolean v8, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v8, :cond_79

    move/from16 v8, p9

    invoke-virtual {v4, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    goto :goto_7c

    :cond_79
    move/from16 v8, p9

    move v9, v5

    .line 4216
    .local v9, "roundIconVal":I
    :goto_7c
    const/4 v10, 0x0

    if-eqz v9, :cond_86

    .line 4217
    iput v9, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4218
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move/from16 v11, p8

    goto :goto_92

    .line 4220
    :cond_86
    move/from16 v11, p8

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4221
    .local v12, "iconVal":I
    if-eqz v12, :cond_92

    .line 4222
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4223
    iput-object v10, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4227
    .end local v12    # "iconVal":I
    :cond_92
    :goto_92
    move/from16 v10, p10

    invoke-virtual {v4, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 4228
    .local v12, "logoVal":I
    if-eqz v12, :cond_9c

    .line 4229
    iput v12, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4232
    :cond_9c
    move/from16 v13, p11

    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 4233
    .local v5, "bannerVal":I
    if-eqz v5, :cond_a6

    .line 4234
    iput v5, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4237
    :cond_a6
    move/from16 v14, p7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 4238
    .local v15, "v":Landroid/util/TypedValue;
    if-eqz v15, :cond_ba

    iget v2, v15, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_ba

    .line 4239
    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4242
    :cond_ba
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4244
    const/4 v2, 0x1

    return v2
.end method

.method public static greylist parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 3
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 961
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 963
    :cond_b
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .registers 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1576
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_c

    if-eq v1, v3, :cond_c

    goto :goto_0

    .line 1580
    :cond_c
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_9a

    .line 1584
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1589
    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1590
    .local v2, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_4f

    .line 1591
    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1592
    .local v3, "error":Ljava/lang/String;
    if-nez v3, :cond_36

    goto :goto_4f

    .line 1593
    :cond_36
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1598
    .end local v3    # "error":Ljava/lang/String;
    :cond_4f
    :goto_4f
    const-string/jumbo v3, "split"

    invoke-interface {p1, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "splitName":Ljava/lang/String;
    if-eqz v0, :cond_81

    .line 1600
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_60

    .line 1601
    const/4 v0, 0x0

    goto :goto_81

    .line 1603
    :cond_60
    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1604
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_68

    goto :goto_81

    .line 1605
    :cond_68
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid manifest split: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1611
    .end local v3    # "error":Ljava/lang/String;
    :cond_81
    :goto_81
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1612
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_8d

    :cond_8c
    move-object v4, v0

    .line 1611
    :goto_8d
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 1585
    .end local v0    # "splitName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_92
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1581
    :cond_9a
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 26
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3175
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3178
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .line 3179
    .local v0, "backgroundPermission":Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    const-string v15, "android"

    if-eqz v7, :cond_41

    .line 3181
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 3182
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_42

    .line 3186
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "PackageParser"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_41
    move-object v1, v0

    .end local v0    # "backgroundPermission":Ljava/lang/String;
    .local v1, "backgroundPermission":Ljava/lang/String;
    :goto_42
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 3192
    .local v0, "perm":Landroid/content/pm/PackageParser$Permission;
    iget-object v8, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x9

    const/16 v18, 0x6

    const/16 v19, 0x8

    const-string v10, "<permission>"

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move-object v11, v2

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v7

    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-nez v7, :cond_74

    .line 3200
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3201
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3202
    return v9

    .line 3207
    :cond_74
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3209
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v7, :cond_8f

    .line 3210
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3213
    :cond_8f
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x5

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v7, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3217
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v11, 0xc

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v7, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3220
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x3

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3224
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x7

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v7, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3228
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_f6

    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v11, v20

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c9

    goto :goto_f6

    .line 3233
    :cond_c9
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_106

    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_d9

    goto :goto_106

    .line 3235
    :cond_d9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3229
    :cond_f6
    :goto_f6
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v10, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v7, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3230
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v10, v7, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v10, v10, -0x9

    iput v10, v7, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3240
    :cond_106
    :goto_106
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3242
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_117

    .line 3243
    const-string v7, "<permission> does not specify protectionLevel"

    aput-object v7, p4, v9

    .line 3244
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3245
    return v9

    .line 3248
    :cond_117
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v10, v10, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v10}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v10

    iput v10, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3250
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v7

    if-eqz v7, :cond_14b

    .line 3251
    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_14b

    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v7, v7, 0x2000

    if-nez v7, :cond_14b

    iget-object v7, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v7, v7, 0xf

    const/4 v10, 0x2

    if-eq v7, v10, :cond_14b

    .line 3255
    const-string v7, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v7, p4, v9

    .line 3257
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3258
    return v9

    .line 3262
    :cond_14b
    const-string v7, "<permission>"

    move-object v10, v0

    .end local v0    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v10, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, p0

    move-object v11, v1

    .end local v1    # "backgroundPermission":Ljava/lang/String;
    .local v11, "backgroundPermission":Ljava/lang/String;
    move-object/from16 v1, p2

    move-object v12, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p3

    move-object v3, v7

    move-object v4, v10

    move-object v7, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_164

    .line 3263
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3264
    return v9

    .line 3267
    :cond_164
    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3269
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 31
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3123
    .local v2, "sa":Landroid/content/res/TypedArray;
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3125
    .local v0, "requestDetailResourceId":I
    const/16 v7, 0x9

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 3128
    .local v15, "backgroundRequestResourceId":I
    const/16 v7, 0xa

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 3132
    .local v14, "backgroundRequestDetailResourceId":I
    new-instance v7, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v7, v5, v0, v15, v14}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;III)V

    move-object v13, v7

    .line 3135
    .local v13, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v8, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v10, "<permission-group>"

    const/4 v12, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x8

    const/16 v20, 0x5

    const/16 v21, 0x7

    move-object/from16 v7, p1

    move-object/from16 v9, p5

    move-object v11, v2

    move-object/from16 v22, v13

    .end local v13    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v22, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    move/from16 v13, v16

    move/from16 v23, v14

    .end local v14    # "backgroundRequestDetailResourceId":I
    .local v23, "backgroundRequestDetailResourceId":I
    move/from16 v14, v17

    move/from16 v24, v15

    .end local v15    # "backgroundRequestResourceId":I
    .local v24, "backgroundRequestResourceId":I
    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v7

    const/16 v8, -0x6c

    if-nez v7, :cond_5d

    .line 3143
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3144
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3145
    return v1

    .line 3148
    :cond_5d
    move-object/from16 v7, v22

    .end local v22    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v7, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v9, v7, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v9, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3151
    iget-object v9, v7, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v10, 0xb

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v9, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3153
    iget-object v9, v7, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v10, 0x6

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3155
    iget-object v9, v7, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v10, 0x3

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3158
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3160
    const-string v9, "<permission-group>"

    move v10, v0

    .end local v0    # "requestDetailResourceId":I
    .local v10, "requestDetailResourceId":I
    move-object/from16 v0, p0

    move v11, v1

    move-object/from16 v1, p3

    move-object v12, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p4

    move-object v3, v9

    move-object v4, v7

    move-object v9, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 3162
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3163
    return v11

    .line 3166
    :cond_a0
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3168
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 25
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3275
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    move-object v4, v0

    .line 3277
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 3280
    .local v19, "sa":Landroid/content/res/TypedArray;
    iget-object v8, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v10, "<permission-tree>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/16 v17, 0x3

    const/16 v18, 0x4

    move-object/from16 v7, p1

    move-object/from16 v9, p4

    move-object/from16 v11, v19

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_3b

    .line 3288
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 3289
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3290
    return v8

    .line 3293
    :cond_3b
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 3295
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3296
    .local v0, "index":I
    if-lez v0, :cond_56

    .line 3297
    iget-object v9, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v9, v0

    goto :goto_57

    .line 3296
    :cond_56
    move v9, v0

    .line 3299
    .end local v0    # "index":I
    .local v9, "index":I
    :goto_57
    if-gez v9, :cond_75

    .line 3300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<permission-tree> name has less than three segments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v8

    .line 3302
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3303
    return v8

    .line 3306
    :cond_75
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3307
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3308
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3309
    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3311
    const-string v11, "<permission-tree>"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v11

    move-object v11, v4

    .end local v4    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v11, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v12, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 3313
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3314
    return v8

    .line 3317
    :cond_9a
    iget-object v0, v12, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3319
    return v10
.end method

.method private greylist-max-o parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .registers 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5073
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5076
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_39

    .line 5077
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x13

    const/16 v14, 0xf

    const/16 v15, 0x11

    iget-object v9, v6, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v17, 0x8

    const/16 v18, 0xe

    const/16 v19, 0x6

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v16, v9

    move-object/from16 v9, p5

    invoke-direct/range {v7 .. v19}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5088
    iget-object v0, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v7, "<provider>"

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 5091
    :cond_39
    iget-object v0, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5092
    iget-object v0, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5094
    new-instance v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v8, v4, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v9, Landroid/content/pm/ProviderInfo;

    invoke-direct {v9}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v0, v8, v9}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    move-object v8, v0

    .line 5095
    .local v8, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v0, 0x0

    aget-object v9, p5, v0

    const/4 v10, 0x0

    if-eqz v9, :cond_5a

    .line 5096
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5097
    return-object v10

    .line 5100
    :cond_5a
    const/4 v9, 0x0

    .line 5102
    .local v9, "providerExportedDefault":Z
    iget-object v11, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x11

    if-ge v11, v12, :cond_64

    .line 5106
    const/4 v9, 0x1

    .line 5109
    :cond_64
    iget-object v11, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v12, 0x7

    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v11, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 5113
    const/16 v11, 0xa

    invoke-virtual {v1, v11, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5116
    .local v11, "cpname":Ljava/lang/String;
    iget-object v12, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v13, 0xb

    invoke-virtual {v1, v13, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v12, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 5120
    const/4 v12, 0x3

    invoke-virtual {v1, v12, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5122
    .local v12, "permission":Ljava/lang/String;
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 5124
    .local v13, "str":Ljava/lang/String;
    if-nez v13, :cond_8a

    .line 5125
    move-object v13, v12

    .line 5127
    :cond_8a
    if-nez v13, :cond_95

    .line 5128
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_a9

    .line 5130
    :cond_95
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5131
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_a7

    :cond_a6
    move-object v15, v10

    :goto_a7
    iput-object v15, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 5133
    :goto_a9
    const/4 v14, 0x5

    invoke-virtual {v1, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 5135
    if-nez v13, :cond_b1

    .line 5136
    move-object v13, v12

    .line 5138
    :cond_b1
    if-nez v13, :cond_bc

    .line 5139
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_d0

    .line 5141
    :cond_bc
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5142
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_cd

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_ce

    :cond_cd
    move-object v15, v10

    :goto_ce
    iput-object v15, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 5145
    :goto_d0
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v15, 0xd

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v14, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5149
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v15, 0x16

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v14, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 5153
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v15, 0x9

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    iput-boolean v15, v14, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5157
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v15, 0xc

    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v14, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5161
    const/16 v14, 0x15

    .line 5162
    invoke-virtual {v1, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 5163
    .local v14, "splitName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_141

    .line 5164
    invoke-static {v14, v0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v15

    .line 5165
    .local v15, "error":Ljava/lang/String;
    if-eqz v15, :cond_13d

    .line 5166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provider "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " specified invalid splitName "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " at "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "PackageParser"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_141

    .line 5169
    :cond_13d
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v0, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 5173
    .end local v15    # "error":Ljava/lang/String;
    :cond_141
    :goto_141
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5175
    const/16 v0, 0x10

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 5178
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v10, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v15, 0x40000000    # 2.0f

    or-int/2addr v10, v15

    iput v10, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5181
    :cond_157
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v10, 0x12

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    .line 5184
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v0, :cond_170

    .line 5185
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5189
    :cond_170
    const/16 v0, 0x14

    .line 5190
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 5191
    .local v15, "visibleToEphemeral":Z
    if-eqz v15, :cond_186

    .line 5192
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v10, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v18, 0x100000

    or-int v10, v10, v18

    iput v10, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5193
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5196
    :cond_186
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5198
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a3

    .line 5202
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v10, :cond_1a0

    .line 5203
    const-string v0, "Heavy-weight applications can not have providers in main process"

    const/4 v10, 0x0

    aput-object v0, p5, v10

    .line 5204
    const/4 v0, 0x0

    return-object v0

    .line 5202
    :cond_1a0
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_1a5

    .line 5198
    :cond_1a3
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 5208
    :goto_1a5
    if-nez v11, :cond_1ac

    .line 5209
    const-string v16, "<provider> does not include authorities attribute"

    aput-object v16, p5, v10

    .line 5210
    return-object v0

    .line 5212
    :cond_1ac
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1b7

    .line 5213
    const-string v16, "<provider> has empty authorities attribute"

    aput-object v16, p5, v10

    .line 5214
    return-object v0

    .line 5216
    :cond_1b7
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5218
    move-object/from16 v0, p0

    move-object v10, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v10, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    move-object v4, v8

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d2

    .line 5220
    const/4 v0, 0x0

    return-object v0

    .line 5223
    :cond_1d2
    return-object v8
.end method

.method private greylist-max-o parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 28
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5229
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 5231
    .local v11, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_29e

    const/4 v0, 0x3

    if-ne v12, v0, :cond_1d

    .line 5233
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v11, :cond_29e

    .line 5234
    :cond_1d
    if-eq v12, v0, :cond_c

    const/4 v1, 0x4

    if-ne v12, v1, :cond_23

    .line 5235
    goto :goto_c

    .line 5238
    :cond_23
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_68

    .line 5239
    new-instance v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v15, v0

    .line 5240
    .local v15, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 5242
    return v14

    .line 5244
    :cond_48
    if-eqz p3, :cond_56

    .line 5245
    invoke-virtual {v15, v13}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5246
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5248
    :cond_56
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v0

    iget v1, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5249
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5251
    .end local v15    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    goto :goto_c

    :cond_68
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 5252
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p5

    invoke-direct {v7, v8, v9, v0, v2}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 5254
    return v14

    .line 5257
    :cond_82
    move-object/from16 v2, p5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "grant-uri-permission"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, " "

    const-string v6, " at "

    const-string v15, "PackageParser"

    if-eqz v3, :cond_130

    .line 5258
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5261
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 5263
    .local v1, "pa":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5265
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_a9

    .line 5266
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v3, v14}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v4

    .line 5269
    :cond_a9
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5271
    if-eqz v3, :cond_b5

    .line 5272
    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, v3, v13}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v4

    .line 5275
    :cond_b5
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5277
    if-eqz v3, :cond_c2

    .line 5278
    new-instance v14, Landroid/os/PatternMatcher;

    invoke-direct {v14, v3, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v14

    .line 5281
    :cond_c2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5283
    if-eqz v1, :cond_fb

    .line 5284
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_db

    .line 5285
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v5, v13, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5286
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    goto :goto_f2

    .line 5288
    :cond_db
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v4, v4

    .line 5289
    .local v4, "N":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    .line 5290
    .local v5, "newp":[Landroid/os/PatternMatcher;
    iget-object v6, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v14, 0x0

    invoke-static {v6, v14, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5291
    aput-object v1, v5, v4

    .line 5292
    iget-object v6, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5294
    .end local v4    # "N":I
    .end local v5    # "newp":[Landroid/os/PatternMatcher;
    :goto_f2
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v13, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5307
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5309
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    goto/16 :goto_c

    .line 5297
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "pa":Landroid/os/PatternMatcher;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_fb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <path-permission>: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5298
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5299
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5297
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5301
    goto/16 :goto_c

    .line 5309
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v3    # "str":Ljava/lang/String;
    :cond_130
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "path-permission"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_269

    .line 5310
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v8, v9, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 5313
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    .line 5315
    .local v4, "pa":Landroid/content/pm/PathPermission;
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 5317
    .local v18, "permission":Ljava/lang/String;
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 5319
    .local v17, "readPermission":Ljava/lang/String;
    if-nez v17, :cond_154

    .line 5320
    move-object/from16 v17, v18

    move-object/from16 v19, v17

    goto :goto_156

    .line 5319
    :cond_154
    move-object/from16 v19, v17

    .line 5322
    .end local v17    # "readPermission":Ljava/lang/String;
    .local v19, "readPermission":Ljava/lang/String;
    :goto_156
    const/4 v13, 0x2

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 5324
    .local v20, "writePermission":Ljava/lang/String;
    if-nez v20, :cond_15f

    .line 5325
    move-object/from16 v20, v18

    .line 5328
    :cond_15f
    const/4 v13, 0x0

    .line 5329
    .local v13, "havePerm":Z
    if-eqz v19, :cond_16a

    .line 5330
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    .line 5331
    const/4 v13, 0x1

    move-object/from16 v14, v19

    goto :goto_16c

    .line 5329
    :cond_16a
    move-object/from16 v14, v19

    .line 5333
    .end local v19    # "readPermission":Ljava/lang/String;
    .local v14, "readPermission":Ljava/lang/String;
    :goto_16c
    if-eqz v20, :cond_176

    .line 5334
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 5335
    const/4 v13, 0x1

    move-object/from16 v1, v20

    goto :goto_178

    .line 5333
    :cond_176
    move-object/from16 v1, v20

    .line 5338
    .end local v20    # "writePermission":Ljava/lang/String;
    .local v1, "writePermission":Ljava/lang/String;
    :goto_178
    if-nez v13, :cond_1af

    .line 5340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5341
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5342
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5340
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5344
    goto/16 :goto_c

    .line 5351
    :cond_1af
    move-object/from16 v17, v4

    const/4 v2, 0x0

    .end local v4    # "pa":Landroid/content/pm/PathPermission;
    .local v17, "pa":Landroid/content/pm/PathPermission;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5353
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_1be

    .line 5354
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v4, v2, v14, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .end local v17    # "pa":Landroid/content/pm/PathPermission;
    .local v0, "pa":Landroid/content/pm/PathPermission;
    goto :goto_1c0

    .line 5353
    .end local v0    # "pa":Landroid/content/pm/PathPermission;
    .restart local v17    # "pa":Landroid/content/pm/PathPermission;
    :cond_1be
    move-object/from16 v0, v17

    .line 5358
    .end local v17    # "pa":Landroid/content/pm/PathPermission;
    .restart local v0    # "pa":Landroid/content/pm/PathPermission;
    :goto_1c0
    move-object/from16 v21, v0

    const/4 v0, 0x4

    .end local v0    # "pa":Landroid/content/pm/PathPermission;
    .local v21, "pa":Landroid/content/pm/PathPermission;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5360
    .end local v4    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1d0

    .line 5361
    new-instance v2, Landroid/content/pm/PathPermission;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v14, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .end local v21    # "pa":Landroid/content/pm/PathPermission;
    .local v2, "pa":Landroid/content/pm/PathPermission;
    goto :goto_1d2

    .line 5360
    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .restart local v21    # "pa":Landroid/content/pm/PathPermission;
    :cond_1d0
    move-object/from16 v2, v21

    .line 5365
    .end local v21    # "pa":Landroid/content/pm/PathPermission;
    .restart local v2    # "pa":Landroid/content/pm/PathPermission;
    :goto_1d2
    const/4 v4, 0x5

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "path":Ljava/lang/String;
    .local v19, "path":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5367
    .end local v19    # "path":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    if-eqz v4, :cond_1e6

    .line 5368
    new-instance v0, Landroid/content/pm/PathPermission;

    move-object/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .local v19, "pa":Landroid/content/pm/PathPermission;
    invoke-direct {v0, v4, v2, v14, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .end local v19    # "pa":Landroid/content/pm/PathPermission;
    .restart local v2    # "pa":Landroid/content/pm/PathPermission;
    goto :goto_1e8

    .line 5367
    :cond_1e6
    move-object/from16 v19, v2

    .line 5372
    :goto_1e8
    const/4 v0, 0x7

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .local v16, "pa":Landroid/content/pm/PathPermission;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5374
    .end local v4    # "path":Ljava/lang/String;
    .restart local v0    # "path":Ljava/lang/String;
    if-eqz v0, :cond_1f9

    .line 5375
    new-instance v2, Landroid/content/pm/PathPermission;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4, v14, v1}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    .restart local v2    # "pa":Landroid/content/pm/PathPermission;
    goto :goto_1fb

    .line 5374
    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .restart local v16    # "pa":Landroid/content/pm/PathPermission;
    :cond_1f9
    move-object/from16 v2, v16

    .line 5379
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    .restart local v2    # "pa":Landroid/content/pm/PathPermission;
    :goto_1fb
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 5381
    if-eqz v2, :cond_232

    .line 5382
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_215

    .line 5383
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5384
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    goto :goto_22d

    .line 5386
    :cond_215
    iget-object v4, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v4, v4

    .line 5387
    .local v4, "N":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    .line 5388
    .local v5, "newp":[Landroid/content/pm/PathPermission;
    iget-object v6, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v15, 0x0

    invoke-static {v6, v15, v5, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5389
    aput-object v2, v5, v4

    .line 5390
    iget-object v6, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5391
    .end local v4    # "N":I
    .end local v5    # "newp":[Landroid/content/pm/PathPermission;
    nop

    .line 5403
    :goto_22d
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5405
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "havePerm":Z
    .end local v14    # "readPermission":Ljava/lang/String;
    .end local v18    # "permission":Ljava/lang/String;
    goto/16 :goto_c

    .line 5394
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v1    # "writePermission":Ljava/lang/String;
    .restart local v2    # "pa":Landroid/content/pm/PathPermission;
    .restart local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "havePerm":Z
    .restart local v14    # "readPermission":Ljava/lang/String;
    .restart local v18    # "permission":Ljava/lang/String;
    :cond_232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "path":Ljava/lang/String;
    .local v16, "path":Ljava/lang/String;
    const-string v0, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5395
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5396
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5394
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5397
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5398
    goto/16 :goto_c

    .line 5407
    .end local v1    # "writePermission":Ljava/lang/String;
    .end local v2    # "pa":Landroid/content/pm/PathPermission;
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "havePerm":Z
    .end local v14    # "readPermission":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v18    # "permission":Ljava/lang/String;
    :cond_269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <provider>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5408
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5409
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5407
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5411
    goto/16 :goto_c

    .line 5418
    :cond_29e
    const/4 v0, 0x1

    return v0
.end method

.method public static final greylist-max-o parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 5720
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5721
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    return-object v0

    .line 5726
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/PackageParser;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_15

    return-object v0

    .line 5727
    :catch_15
    move-exception v2

    .line 5728
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    return-object v0
.end method

.method public static final blacklist parsePublicKey([B)Ljava/security/PublicKey;
    .registers 6
    .param p0, "publicKey"    # [B

    .line 5734
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5735
    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    return-object v0

    .line 5741
    :cond_b
    :try_start_b
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_4e

    .line 5745
    .local v2, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 5749
    :try_start_11
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5750
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object v0

    .line 5753
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_1c
    move-exception v3

    goto :goto_25

    .line 5751
    :catch_1e
    move-exception v3

    .line 5752
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5755
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5759
    :goto_25
    :try_start_25
    const-string v3, "EC"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5760
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2f} :catch_32
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_25 .. :try_end_2f} :catch_30

    return-object v0

    .line 5763
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_30
    move-exception v3

    goto :goto_39

    .line 5761
    :catch_32
    move-exception v3

    .line 5762
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5769
    :goto_39
    :try_start_39
    const-string v3, "DSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 5770
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_43} :catch_46
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_39 .. :try_end_43} :catch_44

    return-object v0

    .line 5773
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :catch_44
    move-exception v1

    goto :goto_4d

    .line 5771
    :catch_46
    move-exception v3

    .line 5772
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5775
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5778
    :goto_4d
    return-object v0

    .line 5742
    .end local v2    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_4e
    move-exception v2

    .line 5743
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    return-object v0
.end method

.method private greylist-max-o parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .registers 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5425
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5428
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_3b

    .line 5429
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xf

    const/16 v15, 0x8

    const/16 v16, 0xc

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x4

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p5

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5440
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<service>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 5443
    :cond_3b
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5444
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5446
    new-instance v0, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ServiceInfo;

    invoke-direct {v10}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v0

    .line 5447
    .local v9, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_5c

    .line 5448
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5449
    return-object v11

    .line 5452
    :cond_5c
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 5454
    .local v12, "setExported":Z
    if-eqz v12, :cond_6b

    .line 5455
    iget-object v13, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5459
    :cond_6b
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 5461
    .local v14, "str":Ljava/lang/String;
    if-nez v14, :cond_7b

    .line 5462
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_8f

    .line 5464
    :cond_7b
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8c

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_8d

    :cond_8c
    move-object v15, v11

    :goto_8d
    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5467
    :goto_8f
    const/16 v0, 0x11

    .line 5468
    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 5469
    .local v15, "splitName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, " at "

    const-string v13, "PackageParser"

    if-nez v0, :cond_d8

    .line 5470
    invoke-static {v15, v10, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 5471
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_d4

    .line 5472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " specified invalid splitName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 5475
    :cond_d4
    iget-object v10, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v15, v10, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5479
    .end local v0    # "error":Ljava/lang/String;
    :cond_d8
    :goto_d8
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v10, 0x13

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 5483
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5484
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_f7

    .line 5487
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v11, v10

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5489
    :cond_f7
    const/16 v0, 0xa

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 5492
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5494
    :cond_108
    const/16 v0, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v11, 0x4

    if-eqz v0, :cond_119

    .line 5497
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5499
    :cond_119
    const/16 v0, 0x12

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 5502
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5504
    :cond_12a
    const/16 v0, 0xb

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 5507
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v20, 0x40000000    # 2.0f

    or-int v10, v10, v20

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5510
    :cond_13d
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 5513
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_156

    .line 5514
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5518
    :cond_156
    const/16 v0, 0x10

    .line 5519
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 5520
    .local v11, "visibleToEphemeral":Z
    const/high16 v10, 0x100000

    if-eqz v11, :cond_16b

    .line 5521
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v2, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v2, v10

    iput v2, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5522
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5525
    :cond_16b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5527
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_189

    .line 5531
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v2, :cond_186

    .line 5532
    const-string v0, "Heavy-weight applications can not have services in main process"

    const/16 v18, 0x0

    aput-object v0, v3, v18

    .line 5533
    const/4 v0, 0x0

    return-object v0

    .line 5531
    :cond_186
    const/16 v18, 0x0

    goto :goto_18b

    .line 5527
    :cond_189
    const/16 v18, 0x0

    .line 5537
    :goto_18b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 5539
    .local v2, "outerDepth":I
    :goto_18f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v21, v0

    const/4 v10, 0x1

    .local v21, "type":I
    if-eq v0, v10, :cond_2cf

    move/from16 v10, v21

    const/4 v0, 0x3

    .end local v21    # "type":I
    .local v10, "type":I
    if-ne v10, v0, :cond_1af

    .line 5541
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_1a4

    goto :goto_1af

    :cond_1a4
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v8, v3

    move-object v2, v5

    const/4 v1, 0x1

    move-object/from16 v3, p3

    goto/16 :goto_2da

    .line 5542
    :cond_1af
    :goto_1af
    const/4 v0, 0x3

    if-eq v10, v0, :cond_2b2

    move-object/from16 v16, v4

    const/4 v4, 0x4

    if-ne v10, v4, :cond_1bc

    .line 5543
    move-object/from16 v4, v16

    const/high16 v10, 0x100000

    goto :goto_18f

    .line 5546
    :cond_1bc
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "intent-filter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 5547
    new-instance v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    move-object v4, v0

    .line 5548
    .local v4, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v24, v1

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v1, p2

    move/from16 v25, v2

    .end local v2    # "outerDepth":I
    .local v25, "outerDepth":I
    move-object/from16 v2, p3

    move-object v8, v3

    move/from16 v3, v22

    move-object/from16 v26, v16

    const/16 v21, 0x4

    move-object/from16 v16, v4

    .end local v4    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .local v16, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move/from16 v4, v23

    move-object/from16 v5, v16

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 5550
    const/4 v0, 0x0

    return-object v0

    .line 5552
    :cond_1f5
    if-eqz v11, :cond_207

    .line 5553
    move-object/from16 v0, v16

    const/4 v1, 0x1

    .end local v16    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .local v0, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5554
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    goto :goto_20c

    .line 5552
    .end local v0    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .restart local v16    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_207
    move-object/from16 v0, v16

    const/4 v1, 0x1

    const/high16 v4, 0x100000

    .line 5556
    .end local v16    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .restart local v0    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :goto_20c
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v2

    iget v3, v9, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5557
    iget-object v2, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5558
    .end local v0    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move v10, v4

    move-object v3, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v4, v26

    move/from16 v8, p4

    goto/16 :goto_18f

    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    :cond_22d
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v8, v3

    move-object/from16 v26, v16

    const/4 v1, 0x1

    const/high16 v4, 0x100000

    const/16 v20, 0x3

    const/16 v21, 0x4

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    .line 5559
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v7, v2, v3, v0, v8}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_258

    .line 5561
    const/4 v0, 0x0

    return-object v0

    .line 5559
    :cond_258
    const/4 v0, 0x0

    move-object/from16 v6, p1

    move-object v5, v2

    move v10, v4

    move-object v3, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v4, v26

    move/from16 v8, p4

    goto/16 :goto_18f

    .line 5565
    :cond_268
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <service>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5566
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v6, v26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5567
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5565
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5569
    move-object v5, v2

    move v10, v4

    move-object v4, v6

    move-object v3, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v6, p1

    move/from16 v8, p4

    goto/16 :goto_18f

    .line 5542
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    :cond_2b2
    move/from16 v20, v0

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v8, v3

    move-object v6, v4

    move-object v2, v5

    const/4 v1, 0x1

    const/high16 v4, 0x100000

    const/16 v21, 0x4

    move-object/from16 v3, p3

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    move v10, v4

    move-object v4, v6

    move-object v3, v8

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v6, p1

    move/from16 v8, p4

    goto/16 :goto_18f

    .line 5539
    .end local v10    # "type":I
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v21    # "type":I
    :cond_2cf
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v8, v3

    move-object v2, v5

    move v1, v10

    move/from16 v10, v21

    move-object/from16 v3, p3

    .line 5577
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v21    # "type":I
    .restart local v10    # "type":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    :goto_2da
    if-nez v12, :cond_2eb

    .line 5578
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e7

    goto :goto_2e9

    :cond_2e7
    move/from16 v1, v18

    :goto_2e9
    iput-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5581
    :cond_2eb
    return-object v9
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1302
    move-object v0, p3

    .line 1305
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1307
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1311
    const/4 v2, 0x0

    .line 1313
    .local v2, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1314
    .local v3, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_7d

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1d

    .line 1315
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_7d

    .line 1316
    :cond_1d
    if-eq v5, v4, :cond_c

    const/4 v4, 0x4

    if-ne v5, v4, :cond_23

    .line 1317
    goto :goto_c

    .line 1320
    :cond_23
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "PackageParser"

    if-eqz v6, :cond_45

    .line 1322
    if-eqz v2, :cond_3c

    .line 1328
    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1330
    goto :goto_c

    .line 1334
    :cond_3c
    const/4 v2, 0x1

    .line 1335
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 1336
    return-object v1

    .line 1352
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_44
    goto :goto_c

    .line 1346
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <manifest>: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " at "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1348
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1346
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1350
    goto :goto_c

    .line 1354
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_7d
    if-nez v2, :cond_88

    .line 1355
    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    .line 1356
    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1359
    :cond_88
    return-object p1
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .registers 18
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1255
    move-object v8, p0

    move-object/from16 v9, p3

    move-object v10, p1

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v0, p2

    .line 1257
    .local v11, "apkPath":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1258
    iput-object v11, v8, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1263
    const/4 v1, 0x0

    .line 1266
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_e
    invoke-virtual {v9, v11}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v2

    move v12, v2

    .line 1267
    .local v12, "cookie":I
    if-eqz v12, :cond_7b

    .line 1272
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v9, v12, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_1b
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_e .. :try_end_1b} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_98
    .catchall {:try_start_e .. :try_end_1b} :catchall_96

    .line 1273
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1b
    new-instance v3, Landroid/content/res/Resources;

    iget-object v1, v8, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    invoke-direct {v3, v9, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1275
    .local v3, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    .line 1276
    .local v0, "outError":[Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_2f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1b .. :try_end_2f} :catch_78
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_75
    .catchall {:try_start_1b .. :try_end_2f} :catchall_72

    .line 1277
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_36

    .line 1288
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v12    # "cookie":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1289
    nop

    .line 1290
    return-void

    .line 1278
    .restart local v0    # "outError":[Ljava/lang/String;
    .restart local v12    # "cookie":I
    :cond_36
    :try_start_36
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    iget v5, v8, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1279
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v2
    :try_end_66
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_36 .. :try_end_66} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_66} :catch_6a
    .catchall {:try_start_36 .. :try_end_66} :catchall_66

    .line 1288
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v12    # "cookie":I
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_66
    move-exception v0

    move-object v10, v1

    move-object v1, v4

    goto :goto_b8

    .line 1284
    :catch_6a
    move-exception v0

    move-object v10, v1

    move-object v1, v4

    goto :goto_99

    .line 1282
    :catch_6e
    move-exception v0

    move-object v10, v1

    move-object v1, v4

    goto :goto_b5

    .line 1288
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_72
    move-exception v0

    move-object v1, v4

    goto :goto_b8

    .line 1284
    :catch_75
    move-exception v0

    move-object v1, v4

    goto :goto_99

    .line 1282
    :catch_78
    move-exception v0

    move-object v1, v4

    goto :goto_b5

    .line 1268
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "cookie":I
    :cond_7b
    :try_start_7b
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_96
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_7b .. :try_end_96} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_96} :catch_98
    .catchall {:try_start_7b .. :try_end_96} :catchall_96

    .line 1288
    .end local v12    # "cookie":I
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_96
    move-exception v0

    goto :goto_b8

    .line 1284
    :catch_98
    move-exception v0

    .line 1285
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Ljava/lang/Exception;
    .local v10, "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_99
    :try_start_99
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v2

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catch_b4
    move-exception v0

    .line 1283
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_b5
    nop

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "apkPath":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p2    # "splitIndex":I
    .end local p3    # "assets":Landroid/content/res/AssetManager;
    .end local p4    # "flags":I
    throw v0
    :try_end_b7
    .catchall {:try_start_99 .. :try_end_b7} :catchall_b7

    .line 1288
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v11    # "apkPath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p2    # "splitIndex":I
    .restart local p3    # "assets":Landroid/content/res/AssetManager;
    .restart local p4    # "flags":I
    :catchall_b7
    move-exception v0

    :goto_b8
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1289
    throw v0
.end method

.method private greylist-max-o parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .registers 30
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4024
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4027
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v9, 0x4

    if-eqz v1, :cond_20

    .line 4029
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v1, p5

    or-int/2addr v2, v9

    aput v2, v1, p5

    .line 4032
    :cond_20
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4034
    .local v8, "classLoaderName":Ljava/lang/String;
    const/16 v7, -0x6c

    const/4 v5, 0x0

    if-eqz v8, :cond_4a

    invoke-static {v8}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4a

    .line 4037
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v5

    .line 4038
    iput v7, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4039
    return v5

    .line 4035
    :cond_4a
    :goto_4a
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v8, v1, p5

    .line 4042
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move-object/from16 v16, v0

    .line 4044
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v4, "innerDepth":I
    .local v16, "sa":Landroid/content/res/TypedArray;
    :goto_56
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    .local v3, "type":I
    if-eq v0, v10, :cond_297

    const/4 v0, 0x3

    if-ne v3, v0, :cond_74

    .line 4045
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_67

    goto :goto_74

    :cond_67
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v7, v11

    move-object v4, v12

    move-object v5, v13

    move-object v1, v14

    move-object v0, v15

    goto/16 :goto_2a2

    .line 4046
    :cond_74
    :goto_74
    if-eq v3, v0, :cond_27b

    if-ne v3, v9, :cond_85

    .line 4047
    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v4, v12

    move-object v1, v14

    move-object v0, v15

    move v15, v5

    move v14, v7

    move-object v7, v11

    move-object v5, v13

    goto/16 :goto_288

    .line 4050
    :cond_85
    const/16 v17, 0x0

    .line 4054
    .local v17, "parsedComponent":Landroid/content/pm/ComponentInfo;
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$CachedComponentArgs-IA;)V

    .line 4055
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4056
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4057
    const/16 v18, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .local v20, "tagName":Ljava/lang/String;
    move-object/from16 v2, p2

    move/from16 v21, v3

    .end local v3    # "type":I
    .local v21, "type":I
    move-object/from16 v3, p3

    move/from16 v22, v4

    .end local v4    # "innerDepth":I
    .local v22, "innerDepth":I
    move/from16 v4, p4

    move v13, v5

    move-object/from16 v5, p6

    move v13, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "classLoaderName":Ljava/lang/String;
    .local v18, "classLoaderName":Ljava/lang/String;
    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 4059
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_c3

    .line 4060
    iput v13, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4061
    const/4 v1, 0x0

    return v1

    .line 4064
    :cond_c3
    const/4 v1, 0x0

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4065
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4067
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v0, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v5, p2

    move-object v3, v0

    move-object v7, v11

    move-object v4, v12

    move-object v0, v15

    move-object/from16 v2, v20

    move v15, v1

    move-object v1, v14

    move v14, v13

    goto/16 :goto_22a

    .end local v0    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v20    # "tagName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_d8
    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move v1, v5

    move v13, v7

    move-object/from16 v18, v8

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v20    # "tagName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    const-string/jumbo v0, "receiver"

    .end local v20    # "tagName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 4068
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v4, v9

    move-object/from16 v9, p2

    move v5, v10

    move-object/from16 v10, p3

    move-object v1, v11

    move/from16 v11, p4

    move-object v4, v12

    move-object/from16 v12, p6

    move-object/from16 v5, p2

    move-object v13, v6

    move-object v1, v14

    move v14, v0

    move-object v0, v15

    move v15, v3

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 4070
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_110

    .line 4071
    const/16 v14, -0x6c

    iput v14, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4072
    const/4 v15, 0x0

    return v15

    .line 4075
    :cond_110
    const/16 v14, -0x6c

    const/4 v15, 0x0

    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4076
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4078
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v7, p6

    goto/16 :goto_22a

    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_11e
    move-object/from16 v5, p2

    move-object v4, v12

    move-object v0, v15

    move v15, v1

    move-object v1, v14

    move v14, v13

    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 4079
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v3

    .line 4080
    .local v3, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v3, :cond_144

    .line 4081
    iput v14, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4082
    return v15

    .line 4085
    :cond_144
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4086
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4088
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v7, p6

    goto/16 :goto_22a

    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_14f
    const-string/jumbo v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_179

    .line 4089
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v3

    .line 4090
    .local v3, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v3, :cond_16e

    .line 4091
    iput v14, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4092
    return v15

    .line 4095
    :cond_16e
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4096
    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4098
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v7, p6

    goto/16 :goto_22a

    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_179
    const-string v3, "activity-alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 4099
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 4100
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_197

    .line 4101
    iput v14, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4102
    return v15

    .line 4105
    :cond_197
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4106
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4108
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    move-object/from16 v7, p6

    goto/16 :goto_22a

    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_1a2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 4112
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p6

    invoke-direct {v0, v5, v4, v3, v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_228

    .line 4114
    iput v14, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4115
    return v15

    .line 4118
    :cond_1be
    move-object/from16 v7, p6

    const-string/jumbo v3, "uses-static-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 4119
    invoke-direct {v0, v1, v5, v4, v7}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_228

    .line 4120
    return v15

    .line 4123
    :cond_1d0
    const-string/jumbo v3, "uses-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21c

    .line 4124
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4129
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 4131
    .local v8, "lname":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 4135
    .local v10, "req":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4137
    if-eqz v8, :cond_214

    .line 4138
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 4139
    if-eqz v10, :cond_204

    .line 4141
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4142
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_214

    .line 4146
    :cond_204
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_214

    .line 4147
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4153
    :cond_214
    :goto_214
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4155
    .end local v8    # "lname":Ljava/lang/String;
    .end local v10    # "req":Z
    move-object/from16 v16, v3

    move-object/from16 v3, v17

    goto :goto_22a

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    :cond_21c
    const-string/jumbo v3, "uses-package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_245

    .line 4158
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4174
    :cond_228
    move-object/from16 v3, v17

    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    :goto_22a
    if-eqz v3, :cond_236

    iget-object v8, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v8, :cond_236

    .line 4179
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v8, v8, p5

    iput-object v8, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4181
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    :cond_236
    move-object v12, v4

    move-object v13, v5

    move-object v11, v7

    move v7, v14

    move v5, v15

    move-object/from16 v8, v18

    move/from16 v4, v22

    const/4 v9, 0x4

    const/4 v10, 0x1

    move-object v15, v0

    move-object v14, v1

    goto/16 :goto_56

    .line 4162
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <application>: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4164
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4162
    const-string v8, "PackageParser"

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4166
    goto :goto_288

    .line 4046
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .local v3, "type":I
    .restart local v4    # "innerDepth":I
    .local v8, "classLoaderName":Ljava/lang/String;
    :cond_27b
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v4, v12

    move-object v1, v14

    move-object v0, v15

    move v15, v5

    move v14, v7

    move-object v7, v11

    move-object v5, v13

    .line 4044
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v22    # "innerDepth":I
    :goto_288
    move-object v12, v4

    move-object v13, v5

    move-object v11, v7

    move v7, v14

    move v5, v15

    move-object/from16 v8, v18

    move/from16 v4, v22

    const/4 v9, 0x4

    const/4 v10, 0x1

    move-object v15, v0

    move-object v14, v1

    goto/16 :goto_56

    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v22    # "innerDepth":I
    .restart local v3    # "type":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    :cond_297
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v7, v11

    move-object v4, v12

    move-object v5, v13

    move-object v1, v14

    move-object v0, v15

    .line 4183
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    :goto_2a2
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2708
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2709
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2713
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2715
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2717
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 2718
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2722
    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2724
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2726
    :cond_30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2727
    return-object v0
.end method

.method private greylist-max-o parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .registers 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2835
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2840
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2843
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2844
    .local v3, "maxSdkVersion":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2846
    .local v5, "val":Landroid/util/TypedValue;
    if-eqz v5, :cond_21

    .line 2847
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_21

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_21

    .line 2848
    iget v3, v5, Landroid/util/TypedValue;->data:I

    .line 2852
    :cond_21
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 2855
    .local v6, "requiredFeature":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2858
    .local v1, "requiredNotfeature":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2860
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2862
    if-nez v2, :cond_34

    .line 2863
    return v4

    .line 2866
    :cond_34
    if-eqz v3, :cond_3b

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_3b

    .line 2867
    return v4

    .line 2871
    :cond_3b
    if-eqz v6, :cond_48

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_48

    invoke-interface {v7, v6}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_48

    .line 2872
    return v4

    .line 2876
    :cond_48
    if-eqz v1, :cond_55

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_55

    .line 2877
    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 2878
    return v4

    .line 2881
    :cond_55
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2882
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_68

    .line 2883
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 2885
    :cond_68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2887
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2885
    const-string v9, "PackageParser"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :goto_9a
    return v4
.end method

.method private greylist-max-o parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2732
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2736
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2738
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2740
    .local v4, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2742
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2745
    const/16 v6, -0x6c

    if-eqz v2, :cond_95

    if-ltz v4, :cond_95

    if-nez v5, :cond_22

    goto :goto_95

    .line 2754
    :cond_22
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_49

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 2755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2756
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2757
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2758
    return v1

    .line 2761
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2764
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2767
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2768
    .local v6, "additionalCertSha256Digests":[Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_6a

    .line 2769
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2770
    if-nez v6, :cond_6d

    .line 2771
    return v1

    .line 2774
    :cond_6a
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2777
    :cond_6d
    array-length v7, v6

    add-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    .line 2778
    .local v7, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v7, v1

    .line 2779
    array-length v8, v6

    invoke-static {v6, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2782
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2783
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v4

    invoke-static {v1, v8, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2785
    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2788
    return v3

    .line 2746
    .end local v6    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v7    # "certSha256Digests":[Ljava/lang/String;
    :cond_95
    :goto_95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-static-library declaration name: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " certDigest"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2748
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2749
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2750
    return v1
.end method

.method private static greylist-max-o parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .registers 9
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 5688
    const/4 v0, 0x0

    .line 5689
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5691
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 5692
    .local v2, "attrCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_1e

    .line 5693
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 5694
    .local v4, "attrResId":I
    sparse-switch v4, :sswitch_data_54

    goto :goto_1b

    .line 5700
    :sswitch_11
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 5696
    :sswitch_16
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5697
    nop

    .line 5692
    .end local v4    # "attrResId":I
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5705
    .end local v3    # "i":I
    :cond_1e
    const/4 v3, 0x0

    const-string v4, "PackageParser"

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_4d

    .line 5710
    :cond_2a
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 5711
    .local v5, "publicKey":Ljava/security/PublicKey;
    if-nez v5, :cond_47

    .line 5712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    return-object v3

    .line 5716
    :cond_47
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v5}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    .line 5706
    .end local v5    # "publicKey":Ljava/security/PublicKey;
    :cond_4d
    :goto_4d
    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    return-object v3

    :sswitch_data_54
    .sparse-switch
        0x1010003 -> :sswitch_16
        0x10103a6 -> :sswitch_11
    .end sparse-switch
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 16
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 8661
    const v0, 0x11101ec

    if-eqz p0, :cond_c

    .line 8662
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8663
    return-void

    .line 8668
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    const-wide/16 v3, 0x0

    .line 8670
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 8668
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 8673
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 8674
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 8677
    .local v2, "systemResources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 8685
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 8686
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const/4 v14, 0x0

    .line 8677
    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 8689
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8690
    return-void

    .line 8671
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_44
    move-exception v0

    .line 8672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 12
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 9298
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9299
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 9300
    return-object v1

    .line 9303
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 9304
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_41

    .line 9305
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 9306
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 9307
    .local v6, "M":I
    if-ne v6, v2, :cond_1f

    .line 9308
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9309
    goto :goto_3e

    .line 9312
    :cond_1f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 9313
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v6, :cond_3b

    .line 9314
    const-class v9, Ljava/security/PublicKey;

    .line 9315
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-class v10, Ljava/security/PublicKey;

    invoke-virtual {p0, v9, v10}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 9316
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9313
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 9319
    .end local v8    # "j":I
    :cond_3b
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9304
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 9322
    .end local v4    # "i":I
    :cond_41
    return-object v3
.end method

.method public static blacklist reportIfDebug(ZJ)Z
    .registers 3
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 9207
    return p0
.end method

.method private blacklist resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V
    .registers 13
    .param p1, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .line 4851
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4852
    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3c

    .line 4856
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4858
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 4859
    return-void

    .line 4862
    :cond_1c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4864
    .local v1, "windowLayoutAffinity":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v2, :cond_37

    .line 4865
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4869
    :cond_37
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 4870
    return-void

    .line 4853
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private greylist-max-o setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .param p3, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4686
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0xc00

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 4690
    .local v0, "appExplicitDefault":Z
    :goto_d
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_45

    if-eqz v0, :cond_18

    goto :goto_45

    .line 4704
    :cond_18
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_23

    .line 4708
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4709
    return-void

    .line 4714
    :cond_23
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4715
    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4716
    :cond_2d
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4717
    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4718
    :cond_37
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4719
    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4721
    :cond_41
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4723
    :goto_44
    return-void

    .line 4693
    :cond_45
    :goto_45
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    .line 4695
    .local v1, "appResizeable":Z
    :goto_4f
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4697
    const/4 v2, 0x2

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5b

    .line 4699
    :cond_59
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4701
    :goto_5b
    return-void
.end method

.method public static greylist setCompatibilityModeEnabled(Z)V
    .registers 1
    .param p0, "compatibilityModeEnabled"    # Z

    .line 8654
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8655
    return-void
.end method

.method private greylist-max-o setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 7
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4732
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    .line 4733
    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v1

    .line 4735
    .local v0, "maxAspectRatio":F
    :goto_e
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v2, v1

    const-string v2, "android.max_aspect"

    if-eqz v1, :cond_1d

    .line 4737
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    goto :goto_2f

    .line 4738
    :cond_1d
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4739
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4740
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4743
    :cond_2f
    :goto_2f
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 4745
    .local v3, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v3}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 4746
    goto :goto_35

    .line 4754
    :cond_48
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_53

    .line 4755
    iget-object v4, v3, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    goto :goto_54

    .line 4756
    :cond_53
    move v4, v0

    :goto_54
    nop

    .line 4758
    .local v4, "activityAspectRatio":F
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4759
    .end local v3    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v4    # "activityAspectRatio":F
    goto :goto_35

    .line 4760
    :cond_59
    return-void
.end method

.method private blacklist setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 6
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4768
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 4770
    .local v0, "minAspectRatio":F
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 4771
    .local v2, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMinAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4772
    goto :goto_a

    .line 4774
    :cond_1d
    invoke-static {v2, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4775
    .end local v2    # "activity":Landroid/content/pm/PackageParser$Activity;
    goto :goto_a

    .line 4776
    :cond_21
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4779
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.supports_size_changes"

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4780
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v3

    .line 4782
    .local v0, "supportsSizeChanges":Z
    :goto_13
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 4783
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_33

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_37

    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4784
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 4785
    :cond_33
    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v6, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4787
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    :cond_37
    goto :goto_19

    .line 4788
    :cond_38
    return-void
.end method

.method public static greylist-max-o toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1365
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1366
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1367
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1366
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1369
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V
    .registers 7
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/pkg/FrameworkPackageUserState;

    .line 8002
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_7

    .line 8003
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 8005
    :cond_7
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8006
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1d

    .line 8008
    :cond_15
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8010
    :goto_1d
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8011
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_33

    .line 8013
    :cond_2b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8015
    :goto_33
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8016
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_46

    .line 8018
    :cond_40
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8020
    :goto_46
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isVirtualPreload()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8021
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_5c

    .line 8023
    :cond_54
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8025
    :goto_5c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    .line 8026
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_6f

    .line 8028
    :cond_69
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 8030
    :goto_6f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_79

    .line 8031
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 8032
    :cond_79
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8b

    .line 8034
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_87

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 8035
    :cond_8b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_99

    .line 8036
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9b

    .line 8038
    :cond_99
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 8040
    :cond_9b
    :goto_9b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 8041
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ae

    .line 8042
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 8044
    :cond_ae
    invoke-static {p2}, Landroid/content/pm/PackageParser;->getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 8045
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    .line 8046
    .local v0, "overlayPaths":Landroid/content/pm/overlay/OverlayPaths;
    if-eqz v0, :cond_d6

    .line 8047
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 8048
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 8050
    :cond_d6
    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v1, :cond_e1

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz v1, :cond_e1

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_e3

    :cond_e1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_e3
    iput v1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 8051
    return-void
.end method

.method public static greylist-max-o validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 1539
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1540
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1541
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 1542
    .local v2, "front":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_52

    .line 1543
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1544
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_15

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1f

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1f

    .line 1545
    :cond_1d
    const/4 v2, 0x0

    .line 1546
    goto :goto_35

    .line 1548
    :cond_1f
    if-nez v2, :cond_2e

    .line 1549
    const/16 v5, 0x30

    if-lt v4, v5, :cond_29

    const/16 v5, 0x39

    if-le v4, v5, :cond_35

    :cond_29
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_2e

    .line 1550
    goto :goto_35

    .line 1553
    :cond_2e
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_38

    .line 1554
    const/4 v1, 0x1

    .line 1555
    const/4 v2, 0x1

    .line 1556
    nop

    .line 1542
    .end local v4    # "c":C
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1558
    .restart local v4    # "c":C
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1560
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_52
    if-eqz p2, :cond_5d

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1561
    const-string v3, "Invalid filename"

    return-object v3

    .line 1563
    :cond_5d
    if-nez v1, :cond_66

    if-nez p1, :cond_62

    goto :goto_66

    .line 1564
    :cond_62
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v3, 0x0

    .line 1563
    :goto_67
    return-object v3
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 10
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 9268
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 9269
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9270
    return-void

    .line 9273
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 9274
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9276
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9277
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9278
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 9279
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_31

    .line 9280
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9281
    goto :goto_16

    .line 9284
    :cond_31
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 9285
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9286
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 9287
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9286
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 9289
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_47
    goto :goto_16

    .line 9290
    :cond_48
    return-void
.end method


# virtual methods
.method public greylist parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 10
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1179
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1180
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_28

    .line 1181
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 1182
    :cond_d
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1187
    :cond_28
    :goto_28
    new-instance v1, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1189
    .local v1, "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    :try_start_2d
    invoke-interface {v1}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1190
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1191
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_41} :catch_48
    .catchall {:try_start_2d .. :try_end_41} :catchall_46

    .line 1192
    nop

    .line 1197
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1192
    return-object v2

    .line 1197
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_46
    move-exception v2

    goto :goto_64

    .line 1193
    :catch_48
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/io/IOException;
    :try_start_49
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .end local p0    # "this":Landroid/content/pm/PackageParser;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "flags":I
    throw v3
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_46

    .line 1197
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1    # "assetLoader":Landroid/content/pm/PackageParser$SplitAssetLoader;
    .restart local p0    # "this":Landroid/content/pm/PackageParser;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "flags":I
    :goto_64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1198
    throw v2
.end method

.method public greylist parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 4
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public greylist parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1090
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1091
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setCacheDir(Ljava/io/File;)V
    .registers 2
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 604
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 605
    return-void
.end method

.method public greylist-max-o setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/content/pm/PackageParser$Callback;

    .line 635
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 636
    return-void
.end method

.method public greylist-max-o setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 597
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 598
    return-void
.end method

.method public greylist-max-o setOnlyCoreApps(Z)V
    .registers 2
    .param p1, "onlyCoreApps"    # Z

    .line 593
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 594
    return-void
.end method

.method public greylist setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .param p1, "procs"    # [Ljava/lang/String;

    .line 584
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 585
    return-void
.end method
