.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;,
        Landroid/content/pm/PackageParser$SplitDependencyLoader;,
        Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;,
        Landroid/content/pm/PackageParser$SplitAssetLoader;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;
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

    .line 168
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 174
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 175
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

    .line 235
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 237
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 258
    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
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

    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 313
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 317
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 318
    sput-boolean v2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 938
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser-IA;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 579
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 580
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 581
    return-void
.end method

.method private greylist-max-o adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 2524
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 2525
    iget-object v1, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2526
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2527
    goto :goto_6

    .line 2528
    :cond_22
    return-void
.end method

.method public static greylist-max-o buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2864
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_3f

    .line 2868
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2869
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 2870
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_28

    .line 2871
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2873
    :cond_28
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_3e

    .line 2874
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2876
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2879
    :cond_3e
    return-object p1

    .line 2865
    :cond_3f
    :goto_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty class name in package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 2866
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 2884
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2885
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2886
    const-string v2, ": "

    const-string v3, "Invalid "

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, " in package "

    const-string v7, " name "

    if-eqz p0, :cond_94

    const/16 v8, 0x3a

    if-ne v1, v8, :cond_94

    .line 2887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x2

    if-ge v1, v8, :cond_4c

    .line 2888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": must be at least two characters"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    .line 2890
    return-object v5

    .line 2892
    :cond_4c
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2893
    invoke-static {v1, v0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2894
    if-eqz v1, :cond_82

    .line 2895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    .line 2897
    return-object v5

    .line 2899
    :cond_82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2901
    :cond_94
    invoke-static {p1, v4, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2902
    if-eqz v1, :cond_cf

    const-string/jumbo v4, "system"

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 2903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    .line 2905
    return-object v5

    .line 2907
    :cond_cf
    return-object p1
.end method

.method public static greylist-max-o buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2913
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_11

    const-string/jumbo p3, "system"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 2914
    if-eqz p1, :cond_10

    move-object p0, p1

    :cond_10
    return-object p0

    .line 2916
    :cond_11
    if-eqz p4, :cond_31

    .line 2917
    array-length p3, p4

    add-int/lit8 p3, p3, -0x1

    :goto_16
    if-ltz p3, :cond_31

    .line 2918
    aget-object v0, p4, p3

    .line 2919
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_30

    .line 2917
    :cond_2d
    add-int/lit8 p3, p3, -0x1

    goto :goto_16

    .line 2920
    :cond_30
    :goto_30
    return-object p0

    .line 2924
    :cond_31
    if-eqz p2, :cond_46

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-gtz p3, :cond_3a

    goto :goto_46

    .line 2927
    :cond_3a
    const-string/jumbo p1, "process"

    invoke-static {p0, p2, p1, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2925
    :cond_46
    :goto_46
    return-object p1
.end method

.method public static greylist-max-o buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2932
    if-nez p2, :cond_3

    .line 2933
    return-object p1

    .line 2935
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gtz p1, :cond_b

    .line 2936
    const/4 p0, 0x0

    return-object p0

    .line 2938
    :cond_b
    const-string/jumbo p1, "taskAffinity"

    invoke-static {p0, p2, p1, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .registers 7

    .line 655
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 656
    invoke-interface {p1}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz p2, :cond_13

    iget-boolean v2, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v2, :cond_13

    .line 658
    return v1

    .line 663
    :cond_13
    int-to-long v2, p0

    invoke-static {p1, v2, v3}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result p1

    if-nez p1, :cond_2c

    if-eqz p2, :cond_2b

    .line 664
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-eqz p1, :cond_2b

    const p1, 0x402000

    and-int/2addr p0, p1

    if-nez p0, :cond_2a

    if-eqz v0, :cond_2b

    :cond_2a
    goto :goto_2c

    :cond_2b
    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    .line 663
    :goto_2d
    return v1
.end method

.method private static greylist-max-r collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 1419
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 1421
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1423
    const/4 v0, 0x2

    .line 1425
    :cond_15
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 1427
    if-eqz p2, :cond_20

    .line 1429
    invoke-static {v1, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    goto :goto_24

    .line 1432
    :cond_20
    invoke-static {v1, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p2

    .line 1434
    :goto_24
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_78

    .line 1442
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/SigningDetails;

    .line 1443
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v0, v1, :cond_4e

    .line 1444
    new-instance p1, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 1445
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    .line 1446
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v2

    .line 1447
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_5c

    .line 1449
    :cond_4e
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1450
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    .line 1449
    invoke-static {p0, p2}, Landroid/content/pm/Signature;->areExactArraysMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 1456
    :goto_5c
    return-void

    .line 1451
    :cond_5d
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " has mismatched certificates"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x68

    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1435
    :cond_78
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p1

    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-interface {p2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static greylist collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1388
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1389
    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, v0

    .line 1390
    :goto_10
    nop

    :goto_11
    if-ge v0, p1, :cond_22

    .line 1391
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1392
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1394
    :cond_22
    return-void
.end method

.method private static greylist-max-o collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1398
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1400
    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1402
    :try_start_c
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1404
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1405
    const/4 v0, 0x0

    :goto_1f
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_33

    .line 1406
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 1405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1410
    :cond_33
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1411
    nop

    .line 1412
    return-void

    .line 1410
    :catchall_38
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1411
    throw p0
.end method

.method public static greylist-max-o computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .line 2647
    const/4 v0, -0x1

    const-string v1, ")"

    const/4 v2, 0x0

    if-nez p1, :cond_2d

    .line 2648
    if-gt p0, p2, :cond_9

    .line 2649
    return p0

    .line 2653
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requires newer sdk version #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (current version is #"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v2

    .line 2655
    return v0

    .line 2660
    :cond_2d
    invoke-static {p3, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 2661
    const/16 p0, 0x2710

    return p0

    .line 2665
    :cond_36
    array-length p0, p3

    const-string p2, "Requires development platform "

    if-lez p0, :cond_61

    .line 2666
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (current platform is any of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2668
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v2

    goto :goto_7a

    .line 2670
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but this is a release platform."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p4, v2

    .line 2673
    :goto_7a
    return v0
.end method

.method public static blacklist computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 2583
    if-nez p1, :cond_3

    .line 2584
    return p0

    .line 2589
    :cond_3
    invoke-static {p2, p1}, Landroid/content/pm/PackageParser;->matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 2590
    const/16 p0, 0x2710

    return p0

    .line 2594
    :cond_c
    array-length p0, p2

    const-string v0, "Requires development platform "

    const/4 v1, 0x0

    if-lez p0, :cond_3a

    .line 2595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (current platform is any of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2597
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v1

    goto :goto_53

    .line 2599
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " but this is a release platform."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v1

    .line 2602
    :goto_53
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z
    .registers 8

    .line 7859
    const/4 v0, 0x1

    if-eqz p4, :cond_4

    .line 7862
    return v0

    .line 7864
    :cond_4
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1c

    .line 7865
    nop

    .line 7866
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result p4

    if-ne p4, v0, :cond_14

    move p4, v0

    goto :goto_15

    :cond_14
    move p4, v1

    .line 7867
    :goto_15
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v2, p4, :cond_1c

    .line 7868
    return v0

    .line 7871
    :cond_1c
    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr p4, v2

    if-eqz p4, :cond_27

    move p4, v0

    goto :goto_28

    :cond_27
    move p4, v1

    .line 7872
    :goto_28
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v2

    if-eq v2, p4, :cond_2f

    .line 7873
    return v0

    .line 7875
    :cond_2f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result p4

    if-eqz p4, :cond_71

    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result p4

    if-eqz p4, :cond_3c

    goto :goto_71

    .line 7878
    :cond_3c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result p4

    if-eqz p4, :cond_43

    .line 7879
    return v0

    .line 7881
    :cond_43
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result p2

    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p4

    if-eq p2, p4, :cond_50

    .line 7882
    return v0

    .line 7884
    :cond_50
    and-int/lit16 p2, p0, 0x80

    if-eqz p2, :cond_5b

    if-nez p3, :cond_5a

    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz p2, :cond_5b

    .line 7886
    :cond_5a
    return v0

    .line 7888
    :cond_5b
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_64

    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz p2, :cond_64

    .line 7890
    return v0

    .line 7892
    :cond_64
    if-eqz p0, :cond_6b

    iget-object p0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    if-eqz p0, :cond_6b

    .line 7894
    return v0

    .line 7896
    :cond_6b
    iget-object p0, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz p0, :cond_70

    .line 7897
    return v0

    .line 7899
    :cond_70
    return v1

    .line 7876
    :cond_71
    :goto_71
    return v0
.end method

.method public static final blacklist generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 6

    .line 8191
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8192
    :cond_4
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 8193
    return-object v0

    .line 8197
    :cond_d
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8198
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8199
    return-object v0
.end method

.method public static final greylist generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 8164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 8169
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8170
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8171
    return-object v0

    .line 8173
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8174
    iget-object p3, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8175
    iget-object p0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 8178
    :cond_23
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 8179
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 8181
    if-nez p4, :cond_36

    .line 8182
    iget-object p0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8184
    :cond_36
    iput-object p4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8186
    return-object v0
.end method

.method private blacklist generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .registers 9

    .line 4225
    new-instance p2, Landroid/content/pm/PackageParser$Activity;

    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {p2, p1, v0, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    .line 4227
    iput-object p1, p2, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4228
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 4230
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const v1, 0x1030055

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4231
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4232
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4233
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4234
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v2, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4235
    iget-object v0, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, ":app_details"

    invoke-static {v2, p1, v3, p3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4237
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 4238
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 p3, 0x0

    iput p3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4239
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput p3, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4240
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v0

    iput v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4241
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v0

    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4242
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput p3, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4243
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v1, p1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4244
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v0, -0x1

    iput v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4245
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4246
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput p3, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4247
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean p3, p1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4248
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v0, p1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4249
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput p3, p1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4250
    if-eqz p4, :cond_8e

    .line 4251
    iget-object p1, p2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget p3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4253
    :cond_8e
    return-object p2
.end method

.method public static blacklist generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 8005
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8006
    :cond_4
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 8007
    return-object v0

    .line 8011
    :cond_b
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 8012
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8013
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 8014
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x200000

    or-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_29

    .line 8016
    :cond_21
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const p3, -0x200001

    and-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8018
    :goto_29
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8019
    return-object v0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 7905
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static greylist generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 7965
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 7966
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_66

    .line 7969
    :cond_13
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2e

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_26

    .line 7971
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    .line 7980
    :cond_26
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 7981
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    .line 7985
    :cond_2e
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 7986
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7987
    and-int/lit16 p3, p1, 0x80

    if-eqz p3, :cond_40

    .line 7988
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 7990
    :cond_40
    and-int/lit16 p3, p1, 0x400

    if-eqz p3, :cond_4c

    .line 7991
    iget-object p3, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 7992
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 7994
    :cond_4c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_5a

    .line 7995
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x200000

    or-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_62

    .line 7997
    :cond_5a
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const p3, -0x200001

    and-int/2addr p0, p3

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7999
    :goto_62
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8000
    return-object v0

    .line 7967
    :cond_66
    :goto_66
    return-object v0
.end method

.method public static final greylist generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 3

    .line 8467
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8468
    :cond_4
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    .line 8469
    iget-object p0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 8471
    :cond_b
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 8472
    iget-object p0, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 8473
    return-object p1
.end method

.method public static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 14

    .line 707
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    .line 708
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 707
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generatePackageInfo(Landroid/content/pm/PackageParser$Package;Landroid/apex/ApexInfo;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 28
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

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v4, v6}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_332

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v6

    if-nez v6, :cond_1d

    const/4 v0, 0x0

    goto/16 :goto_333

    .line 719
    :cond_1d
    and-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_26

    .line 721
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    goto :goto_27

    .line 723
    :cond_26
    const/4 v6, 0x0

    .line 726
    :goto_27
    new-instance v8, Landroid/content/pm/PackageInfo;

    invoke-direct {v8}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 727
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 728
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 729
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 730
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 731
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 732
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 733
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 734
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 735
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 736
    invoke-static {v0, v2, v4, v5}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 737
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 738
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 739
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 740
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_72

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_76

    .line 742
    :cond_72
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 744
    :cond_76
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 745
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 746
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 747
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    .line 748
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 749
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 750
    iget-boolean v9, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v9, v8, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 751
    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 752
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 753
    move-wide/from16 v11, p4

    iput-wide v11, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 754
    move-wide/from16 v11, p6

    iput-wide v11, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 755
    and-int/lit16 v9, v2, 0x100

    if-eqz v9, :cond_aa

    .line 756
    move-object/from16 v9, p2

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->gids:[I

    .line 758
    :cond_aa
    and-int/lit16 v9, v2, 0x4000

    if-eqz v9, :cond_f9

    .line 759
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v9, :cond_b9

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_ba

    :cond_b9
    const/4 v9, 0x0

    .line 760
    :goto_ba
    if-lez v9, :cond_c7

    .line 761
    new-array v9, v9, [Landroid/content/pm/ConfigurationInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 762
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 764
    :cond_c7
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v9, :cond_d2

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_d3

    :cond_d2
    const/4 v9, 0x0

    .line 765
    :goto_d3
    if-lez v9, :cond_e0

    .line 766
    new-array v9, v9, [Landroid/content/pm/FeatureInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 767
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 769
    :cond_e0
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v9, :cond_eb

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_ec

    :cond_eb
    const/4 v9, 0x0

    .line 770
    :goto_ec
    if-lez v9, :cond_f9

    .line 771
    new-array v9, v9, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v9, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 772
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 775
    :cond_f9
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_14c

    .line 776
    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 777
    if-lez v9, :cond_147

    .line 778
    nop

    .line 779
    new-array v12, v9, [Landroid/content/pm/ActivityInfo;

    .line 780
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_10a
    if-ge v13, v9, :cond_13a

    .line 781
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    .line 782
    iget-object v7, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v16, v10

    const/16 p2, 0x0

    int-to-long v10, v2

    invoke-static {v4, v7, v10, v11}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 783
    sget-object v7, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v10, v15, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 784
    goto :goto_135

    .line 786
    :cond_12c
    add-int/lit8 v7, v14, 0x1

    invoke-static {v15, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    aput-object v10, v12, v14

    move v14, v7

    .line 780
    :cond_135
    :goto_135
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    goto :goto_10a

    .line 789
    :cond_13a
    move/from16 v16, v10

    const/16 p2, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ActivityInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_150

    .line 777
    :cond_147
    move/from16 v16, v10

    const/16 p2, 0x0

    goto :goto_150

    .line 775
    :cond_14c
    move/from16 v16, v10

    const/16 p2, 0x0

    .line 792
    :goto_150
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_189

    .line 793
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 794
    if-lez v7, :cond_189

    .line 795
    nop

    .line 796
    new-array v9, v7, [Landroid/content/pm/ActivityInfo;

    .line 797
    move/from16 v10, p2

    move v11, v10

    :goto_162
    if-ge v10, v7, :cond_181

    .line 798
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Activity;

    .line 799
    iget-object v13, v12, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_17e

    .line 800
    add-int/lit8 v13, v11, 0x1

    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    aput-object v12, v9, v11

    move v11, v13

    .line 797
    :cond_17e
    add-int/lit8 v10, v10, 0x1

    goto :goto_162

    .line 803
    :cond_181
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ActivityInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 806
    :cond_189
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_1c2

    .line 807
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 808
    if-lez v7, :cond_1c2

    .line 809
    nop

    .line 810
    new-array v9, v7, [Landroid/content/pm/ServiceInfo;

    .line 811
    move/from16 v10, p2

    move v11, v10

    :goto_19b
    if-ge v10, v7, :cond_1ba

    .line 812
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Service;

    .line 813
    iget-object v13, v12, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_1b7

    .line 814
    add-int/lit8 v13, v11, 0x1

    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    aput-object v12, v9, v11

    move v11, v13

    .line 811
    :cond_1b7
    add-int/lit8 v10, v10, 0x1

    goto :goto_19b

    .line 817
    :cond_1ba
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/ServiceInfo;

    iput-object v7, v8, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 820
    :cond_1c2
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_1fb

    .line 821
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 822
    if-lez v7, :cond_1fb

    .line 823
    nop

    .line 824
    new-array v9, v7, [Landroid/content/pm/ProviderInfo;

    .line 825
    move/from16 v10, p2

    move v11, v10

    :goto_1d4
    if-ge v10, v7, :cond_1f3

    .line 826
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    .line 827
    iget-object v13, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    int-to-long v14, v2

    invoke-static {v4, v13, v14, v15}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v13

    if-eqz v13, :cond_1f0

    .line 828
    add-int/lit8 v13, v11, 0x1

    invoke-static {v12, v2, v4, v5, v6}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    aput-object v12, v9, v11

    move v11, v13

    .line 825
    :cond_1f0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d4

    .line 832
    :cond_1f3
    invoke-static {v9, v11}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/ProviderInfo;

    iput-object v4, v8, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 835
    :cond_1fb
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_222

    .line 836
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 837
    if-lez v4, :cond_222

    .line 838
    new-array v5, v4, [Landroid/content/pm/InstrumentationInfo;

    iput-object v5, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 839
    move/from16 v5, p2

    :goto_20d
    if-ge v5, v4, :cond_222

    .line 840
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 841
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Instrumentation;

    .line 840
    invoke-static {v7, v2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v7

    aput-object v7, v6, v5

    .line 839
    add-int/lit8 v5, v5, 0x1

    goto :goto_20d

    .line 845
    :cond_222
    and-int/lit16 v4, v2, 0x1000

    if-eqz v4, :cond_284

    .line 846
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 847
    if-lez v4, :cond_249

    .line 848
    new-array v5, v4, [Landroid/content/pm/PermissionInfo;

    iput-object v5, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 849
    move/from16 v5, p2

    :goto_234
    if-ge v5, v4, :cond_249

    .line 850
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v7, v2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v7

    aput-object v7, v6, v5

    .line 849
    add-int/lit8 v5, v5, 0x1

    goto :goto_234

    .line 853
    :cond_249
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 854
    if-lez v4, :cond_284

    .line 855
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 856
    new-array v5, v4, [I

    iput-object v5, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 857
    move/from16 v5, p2

    :goto_25b
    if-ge v5, v4, :cond_284

    .line 858
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 859
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v6, v7, v5

    .line 861
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v9, v7, v5

    or-int/lit8 v9, v9, 0x1

    aput v9, v7, v5

    .line 862
    if-eqz v3, :cond_281

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_281

    .line 863
    iget-object v6, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v7, v6, v5

    or-int/lit8 v7, v7, 0x2

    aput v7, v6, v5

    .line 857
    :cond_281
    add-int/lit8 v5, v5, 0x1

    goto :goto_25b

    .line 869
    :cond_284
    if-eqz v1, :cond_2ce

    .line 870
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    iget-object v4, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 873
    iget-object v4, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 874
    iget-boolean v3, v1, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v3, :cond_2aa

    .line 875
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2b2

    .line 877
    :cond_2aa
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 879
    :goto_2b2
    iget-boolean v1, v1, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v1, :cond_2c0

    .line 880
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_2ca

    .line 882
    :cond_2c0
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v4, -0x800001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 884
    :goto_2ca
    move/from16 v1, v16

    iput-boolean v1, v8, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 888
    :cond_2ce
    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_306

    .line 889
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_2ea

    .line 892
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 893
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, p2

    aput-object v3, v1, p2

    goto :goto_306

    .line 894
    :cond_2ea
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v1

    if-eqz v1, :cond_306

    .line 896
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    .line 897
    new-array v3, v1, [Landroid/content/pm/Signature;

    iput-object v3, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 898
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move/from16 v5, p2

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    :cond_306
    :goto_306
    const/high16 v1, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_331

    .line 904
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v1, v2, :cond_32e

    .line 906
    new-instance v1, Landroid/content/pm/SigningInfo;

    new-instance v2, Landroid/content/pm/SigningDetails;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, v5, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/content/pm/SigningDetails;-><init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V

    invoke-direct {v1, v2}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v1, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_331

    .line 912
    :cond_32e
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 915
    :cond_331
    :goto_331
    return-object v8

    .line 714
    :cond_332
    const/4 v0, 0x0

    .line 715
    :goto_333
    return-object v0
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;
    .registers 19
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

    .line 684
    nop

    .line 685
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 684
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static greylist generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 21
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

    .line 693
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

    move-result-object p0

    return-object p0
.end method

.method public static final greylist generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 3

    .line 8037
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8038
    :cond_4
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    .line 8039
    iget-object p0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object p0

    .line 8041
    :cond_b
    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 8042
    iget-object p0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 8043
    return-object p1
.end method

.method public static final greylist generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 3

    .line 8025
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 8026
    :cond_4
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_b

    .line 8027
    iget-object p0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 8029
    :cond_b
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 8030
    iget-object p0, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 8031
    return-object p1
.end method

.method public static final greylist generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 8374
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .registers 8

    .line 8379
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8380
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8381
    return-object v0

    .line 8383
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

    .line 8386
    :cond_23
    iget-object p3, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8387
    iget-object p0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 8390
    :cond_2d
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 8391
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 8392
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_3e

    .line 8393
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 8396
    :cond_3e
    if-nez p4, :cond_46

    .line 8397
    iget-object p0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8399
    :cond_46
    iput-object p4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8401
    return-object v1
.end method

.method public static final greylist generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 8266
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/pkg/FrameworkPackageUserState;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 7

    .line 8271
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 8272
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 8273
    return-object v0

    .line 8275
    :cond_f
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 8276
    iget-object p3, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p3, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V

    .line 8277
    iget-object p0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 8280
    :cond_23
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 8281
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 8283
    if-nez p4, :cond_36

    .line 8284
    iget-object p0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/pkg/FrameworkPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 8286
    :cond_36
    iput-object p4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8288
    return-object v0
.end method

.method public static greylist-max-o getActivityConfigChanges(II)I
    .registers 2

    .line 4751
    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static blacklist getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;
    .registers 1

    .line 9265
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 9266
    const-string p0, ":ephemeralapp:complete"

    return-object p0

    .line 9268
    :cond_9
    const-string p0, ":complete"

    return-object p0
.end method

.method private static greylist-max-o hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .registers 10

    .line 3961
    const/4 v0, 0x0

    if-eqz p0, :cond_53

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    goto :goto_53

    .line 3962
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3963
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3964
    move v2, v0

    :goto_f
    if-ge v2, v1, :cond_52

    .line 3965
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 3966
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3967
    if-nez v3, :cond_1c

    goto :goto_4f

    .line 3968
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3969
    move v5, v0

    :goto_21
    if-ge v5, v4, :cond_4f

    .line 3970
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3971
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_4a

    .line 3972
    :cond_32
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    goto :goto_4a

    .line 3973
    :cond_39
    const-string v7, "http"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 3974
    const-string v7, "https"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_4d

    .line 3969
    :cond_4a
    :goto_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 3975
    :cond_4d
    :goto_4d
    const/4 p0, 0x1

    return p0

    .line 3964
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3979
    :cond_52
    return v0

    .line 3961
    :cond_53
    :goto_53
    return v0
.end method

.method public static final greylist-max-o isApkFile(Ljava/io/File;)Z
    .registers 1

    .line 640
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isApkPath(Ljava/lang/String;)Z
    .registers 2

    .line 644
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z
    .registers 3

    .line 670
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z
    .registers 10

    .line 9133
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

    .line 9134
    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr p1, v5

    cmp-long p1, p1, v2

    if-eqz p1, :cond_18

    move p1, v1

    goto :goto_19

    :cond_18
    move p1, v4

    .line 9135
    :goto_19
    if-nez v0, :cond_2c

    .line 9136
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 9137
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 9135
    :goto_2d
    return v1
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11

    .line 9151
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZLandroid/content/pm/ComponentInfo;J)Z
    .registers 11

    .line 9157
    invoke-virtual {p2}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v2

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z
    .registers 13

    .line 9167
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 9168
    return v1

    .line 9173
    :cond_b
    invoke-interface {p0}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_30

    :pswitch_13
    goto :goto_21

    .line 9178
    :pswitch_14
    const-wide/32 v5, 0x8000

    and-long/2addr p4, v5

    cmp-long p4, p4, v2

    if-nez p4, :cond_1e

    .line 9179
    return v4

    .line 9176
    :pswitch_1d
    return v4

    .line 9183
    :cond_1e
    :pswitch_1e
    if-nez p1, :cond_21

    .line 9184
    return v4

    .line 9193
    :cond_21
    :goto_21
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 9194
    return v1

    .line 9195
    :cond_28
    invoke-interface {p0, p3}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 9196
    return v4

    .line 9199
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

    .line 5521
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5522
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5523
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5524
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    .line 5521
    :goto_24
    return p1
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13

    .line 9085
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

    move-result p0

    return p0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLandroid/content/pm/ComponentInfo;J)Z
    .registers 14

    .line 9092
    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v3

    iget-boolean v4, p3, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v5, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Landroid/content/pm/PackageParser;->isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static blacklist isMatch(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 18

    .line 9108
    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_10

    move v0, v8

    goto :goto_11

    :cond_10
    move v0, v9

    .line 9109
    :goto_11
    invoke-static {p0, v4, v5}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz p1, :cond_1b

    if-nez v0, :cond_20

    .line 9110
    :cond_1b
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    .line 9113
    :cond_20
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->isEnabled(Landroid/content/pm/pkg/FrameworkPackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 9114
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    .line 9117
    :cond_2f
    const-wide/32 p2, 0x100000

    and-long/2addr p2, v4

    cmp-long p0, p2, v6

    if-eqz p0, :cond_3e

    .line 9118
    if-nez p1, :cond_3e

    .line 9119
    invoke-static {v9, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    .line 9123
    :cond_3e
    const-wide/32 p0, 0x40000

    and-long/2addr p0, v4

    cmp-long p0, p0, v6

    if-eqz p0, :cond_4a

    if-nez p4, :cond_4a

    move p0, v8

    goto :goto_4b

    :cond_4a
    move p0, v9

    .line 9125
    :goto_4b
    const-wide/32 p1, 0x80000

    and-long/2addr p1, v4

    cmp-long p1, p1, v6

    if-eqz p1, :cond_57

    if-eqz p4, :cond_57

    move p1, v8

    goto :goto_58

    :cond_57
    move p1, v9

    .line 9127
    :goto_58
    if-nez p0, :cond_5e

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v8, v9

    :cond_5e
    :goto_5e
    invoke-static {v8, v4, v5}, Landroid/content/pm/PackageParser;->reportIfDebug(ZJ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 2

    .line 3934
    iget p1, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget p0, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .registers 2

    .line 3937
    iget p1, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget p0, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .registers 2

    .line 3940
    iget p1, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget p0, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static blacklist matchTargetCode([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 2540
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2541
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2542
    goto :goto_f

    .line 2544
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2546
    :goto_f
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .registers 21

    .line 1459
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1460
    const/16 v19, 0x0

    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT_FULL:I

    const/4 v1, 0x0

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

    invoke-virtual/range {v0 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 1462
    return-object v0
.end method

.method private greylist-max-o parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4260
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4262
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_32

    .line 4263
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v12, 0x11

    const/4 v13, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x2c

    const/16 v8, 0x17

    const/16 v9, 0x1e

    const/4 v11, 0x7

    move-object/from16 v3, p5

    move-object/from16 v14, p6

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object v7, v2

    move-object v6, v3

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    goto :goto_38

    .line 4262
    :cond_32
    move-object/from16 v7, p1

    move-object/from16 v6, p5

    move-object v14, v1

    move-object v15, v2

    .line 4276
    :goto_38
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_3f

    const-string v2, "<receiver>"

    goto :goto_41

    :cond_3f
    const-string v2, "<activity>"

    :goto_41
    iput-object v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4277
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v15, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4278
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v2, p4

    iput v2, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4280
    new-instance v8, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ActivityInfo;

    invoke-direct {v2}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v8, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 4281
    const/4 v9, 0x0

    aget-object v1, v6, v9

    const/4 v10, 0x0

    if-eqz v1, :cond_63

    .line 4282
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4283
    return-object v10

    .line 4286
    :cond_63
    const/4 v1, 0x6

    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    .line 4287
    if-eqz v11, :cond_72

    .line 4288
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4291
    :cond_72
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4293
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v3, 0x1a

    invoke-virtual {v15, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4296
    const/16 v1, 0x1b

    const/16 v2, 0x400

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4299
    const-string v12, "PackageParser"

    if-eqz v1, :cond_cd

    .line 4300
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1, v6}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4301
    aget-object v4, v6, v9

    if-nez v4, :cond_a7

    .line 4302
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_cd

    .line 4304
    :cond_a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " specified invalid parentActivityName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    aput-object v10, v6, v9

    .line 4311
    :cond_cd
    :goto_cd
    const/4 v13, 0x4

    invoke-virtual {v15, v13, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4312
    if-nez v1, :cond_dd

    .line 4313
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_f1

    .line 4315
    :cond_dd
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ee

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_ef

    :cond_ee
    move-object v1, v10

    :goto_ef
    iput-object v1, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4318
    :goto_f1
    const/16 v1, 0x8

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4321
    iget-object v4, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v5, v14, v3, v6}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4324
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4325
    const/16 v4, 0x30

    invoke-virtual {v15, v4, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4327
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v9, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4328
    const/16 v3, 0x9

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_125

    .line 4330
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v14

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4333
    :cond_125
    const/16 v3, 0xa

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v16, 0x2

    if-eqz v3, :cond_137

    .line 4334
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4337
    :cond_137
    const/16 v3, 0xb

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 4338
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v13

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4341
    :cond_146
    const/16 v3, 0x15

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 4342
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4345
    :cond_156
    const/16 v3, 0x12

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 4346
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4349
    :cond_165
    const/16 v1, 0xc

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x10

    if-eqz v1, :cond_176

    .line 4350
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4353
    :cond_176
    const/16 v1, 0xd

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x20

    if-eqz v1, :cond_187

    .line 4354
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4357
    :cond_187
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_190

    move v1, v14

    goto :goto_191

    :cond_190
    move v1, v9

    :goto_191
    const/16 v5, 0x13

    invoke-virtual {v15, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x40

    if-eqz v1, :cond_1a5

    .line 4359
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 p4, v10

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v10, v5

    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_1a7

    .line 4357
    :cond_1a5
    move-object/from16 p4, v10

    .line 4362
    :goto_1a7
    const/16 v1, 0x16

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 4363
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4366
    :cond_1b7
    const/16 v1, 0x1d

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1c7

    .line 4367
    const/16 v1, 0x27

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 4368
    :cond_1c7
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v2, v10

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4371
    :cond_1ce
    const/16 v1, 0x18

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 4372
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4375
    :cond_1de
    invoke-virtual {v15, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 4376
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x20000000

    or-int/2addr v2, v5

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4379
    :cond_1ed
    const/16 v1, 0x2a

    if-nez p7, :cond_35a

    .line 4380
    const/16 v2, 0x19

    move/from16 v5, p8

    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_203

    .line 4382
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4385
    :cond_203
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0xe

    invoke-virtual {v15, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4387
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x21

    invoke-virtual {v15, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4390
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4392
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    .line 4390
    const/16 v10, 0x22

    invoke-virtual {v15, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4393
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4394
    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 4395
    const/16 v5, 0x2f

    invoke-virtual {v15, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 4393
    invoke-static {v3, v5}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4396
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x14

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4399
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v4, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4403
    const/16 v2, 0x1f

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 4404
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4407
    :cond_25a
    const/16 v2, 0x23

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 4408
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4411
    :cond_26a
    const/16 v2, 0x24

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_27a

    .line 4412
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4415
    :cond_27a
    const/16 v2, 0x25

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 4416
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4419
    :cond_28a
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4423
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v2, v15, v7}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4425
    const/16 v2, 0x29

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2ab

    .line 4427
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x400000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4430
    :cond_2ab
    const/16 v2, 0x43

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 4431
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4434
    :cond_2bc
    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2d2

    .line 4435
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    if-ne v3, v13, :cond_2d2

    .line 4437
    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v8, v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4441
    :cond_2d2
    const/16 v2, 0x35

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2e7

    .line 4442
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    if-ne v3, v13, :cond_2e7

    .line 4444
    invoke-virtual {v15, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {v8, v2}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4448
    :cond_2e7
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4449
    const/16 v3, 0x26

    invoke-virtual {v15, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4451
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4455
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4456
    const/16 v2, 0x2b

    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4458
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4459
    const/16 v2, 0x2e

    invoke-virtual {v15, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4461
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x31

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4464
    const/16 v1, 0x38

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_328

    .line 4466
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4469
    :cond_328
    const/16 v1, 0x33

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_339

    .line 4470
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4473
    :cond_339
    const/16 v1, 0x34

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_34a

    .line 4474
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4477
    :cond_34a
    const/16 v1, 0x36

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_37b

    .line 4478
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    or-int/2addr v2, v14

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    goto :goto_37b

    .line 4481
    :cond_35a
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v9, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4482
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v9, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4484
    const/16 v2, 0x1c

    invoke-virtual {v15, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_373

    .line 4485
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4488
    :cond_373
    iget-object v2, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4493
    :cond_37b
    :goto_37b
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v1, :cond_389

    .line 4494
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4499
    :cond_389
    nop

    .line 4500
    const/16 v1, 0x2d

    invoke-virtual {v15, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 4501
    const/high16 v17, 0x100000

    if-eqz v10, :cond_39e

    .line 4502
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v17

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4503
    iput-boolean v14, v7, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4506
    :cond_39e
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 4508
    if-eqz p7, :cond_3b7

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3b7

    .line 4512
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v2, :cond_3b7

    .line 4513
    const-string v1, "Heavy-weight applications can not have receivers in main process"

    aput-object v1, v6, v9

    .line 4517
    :cond_3b7
    aget-object v1, v6, v9

    if-eqz v1, :cond_3bc

    .line 4518
    return-object p4

    .line 4521
    :cond_3bc
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 4523
    :goto_3c0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v14, :cond_5be

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3cf

    .line 4525
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_5be

    .line 4526
    :cond_3cf
    if-eq v1, v2, :cond_5b7

    if-ne v1, v13, :cond_3d4

    .line 4527
    goto :goto_3c0

    .line 4530
    :cond_3d4
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent-filter"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_466

    .line 4531
    new-instance v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v5, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4532
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v1, p2

    move-object v9, v2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f5

    .line 4534
    return-object p4

    .line 4536
    :cond_3f5
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v1

    if-nez v1, :cond_420

    .line 4537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4539
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4537
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_431

    .line 4541
    :cond_420
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v1

    iget v2, v8, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v8, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4542
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4545
    :goto_431
    if-eqz v10, :cond_435

    .line 4546
    move v1, v14

    goto :goto_441

    .line 4547
    :cond_435
    if-nez p7, :cond_440

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_440

    .line 4548
    move/from16 v1, v16

    goto :goto_441

    .line 4549
    :cond_440
    const/4 v1, 0x0

    .line 4550
    :goto_441
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4551
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_452

    .line 4552
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v17

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4554
    :cond_452
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_461

    .line 4555
    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4569
    :cond_461
    move-object/from16 v6, p5

    const/4 v9, 0x0

    goto/16 :goto_3c0

    :cond_466
    move-object v9, v2

    if-nez p7, :cond_4f8

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preferred"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f8

    .line 4570
    new-instance v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v5, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4571
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48a

    .line 4573
    return-object p4

    .line 4575
    :cond_48a
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_4b5

    .line 4576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in preferred at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4578
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4576
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c5

    .line 4580
    :cond_4b5
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v3, :cond_4c0

    .line 4581
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4583
    :cond_4c0
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4586
    :goto_4c5
    if-eqz v10, :cond_4c9

    .line 4587
    move v3, v14

    goto :goto_4d5

    .line 4588
    :cond_4c9
    if-nez p7, :cond_4d4

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_4d4

    .line 4589
    move/from16 v3, v16

    goto :goto_4d5

    .line 4590
    :cond_4d4
    const/4 v3, 0x0

    .line 4591
    :goto_4d5
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4592
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_4e6

    .line 4593
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v4, v4, v17

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4595
    :cond_4e6
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_4f5

    .line 4596
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4598
    :cond_4f5
    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 4569
    :cond_4f8
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .line 4598
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_519

    .line 4599
    iget-object v3, v8, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v8, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_516

    .line 4601
    return-object p4

    .line 4599
    :cond_516
    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 4603
    :cond_519
    if-nez p7, :cond_52e

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "layout"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52e

    .line 4604
    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 4607
    :cond_52e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    const-string v3, " at "

    if-eqz p7, :cond_581

    .line 4609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <receiver>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4611
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4609
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b1

    .line 4613
    :cond_581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4615
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4613
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    :goto_5b1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4618
    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 4526
    :cond_5b7
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 4630
    :cond_5be
    invoke-direct {v0, v8}, Landroid/content/pm/PackageParser;->resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V

    .line 4632
    if-nez v11, :cond_5d2

    .line 4633
    iget-object v0, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5cf

    move v9, v14

    goto :goto_5d0

    :cond_5cf
    const/4 v9, 0x0

    :goto_5d0
    iput-boolean v9, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4636
    :cond_5d2
    return-object v8
.end method

.method private greylist-max-o parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4830
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p6

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v14, v15, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 4833
    const/4 v5, 0x7

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 4836
    const/16 v16, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_26

    .line 4837
    const-string v0, "<activity-alias> does not specify android:targetActivity"

    aput-object v0, v3, v7

    .line 4838
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4839
    return-object v16

    .line 4842
    :cond_26
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4844
    if-nez v5, :cond_34

    .line 4845
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 4846
    return-object v16

    .line 4849
    :cond_34
    iget-object v8, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_65

    .line 4850
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x6

    const/4 v13, 0x4

    move-object v8, v4

    const/4 v4, 0x2

    move-object v9, v5

    const/4 v5, 0x0

    move v11, v6

    const/4 v6, 0x1

    move/from16 v17, v7

    const/16 v7, 0xb

    move-object/from16 v18, v8

    const/16 v8, 0x8

    move-object/from16 v19, v9

    const/16 v9, 0xa

    move/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v14, p6

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4861
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v4, "<activity-alias>"

    iput-object v4, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_6a

    .line 4849
    :cond_65
    move-object v14, v1

    move-object v0, v4

    move-object v15, v5

    move/from16 v17, v7

    .line 4864
    :goto_6a
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4865
    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v4, p4

    iput v4, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4867
    nop

    .line 4869
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4870
    move/from16 v7, v17

    :goto_7d
    if-ge v7, v1, :cond_96

    .line 4871
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4872
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 4873
    nop

    .line 4874
    goto :goto_98

    .line 4870
    :cond_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    :cond_96
    move-object/from16 v4, v16

    .line 4878
    :goto_98
    if-nez v4, :cond_b9

    .line 4879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activity-alias> target activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v17

    .line 4881
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4882
    return-object v16

    .line 4885
    :cond_b9
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 4886
    iput-object v15, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4887
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4888
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4889
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    .line 4890
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4891
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->logo:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4892
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->banner:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4893
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4894
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4895
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4896
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4897
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4898
    iget v2, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v2, :cond_10c

    .line 4899
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4901
    :cond_10c
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4902
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4903
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4904
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4905
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4906
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4907
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4908
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4909
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4910
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    .line 4911
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    .line 4912
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4913
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4915
    iget-object v2, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    .line 4917
    new-instance v7, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v7, v2, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 4918
    aget-object v1, v3, v17

    if-eqz v1, :cond_175

    .line 4919
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4920
    return-object v16

    .line 4923
    :cond_175
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    .line 4925
    if-eqz v8, :cond_187

    .line 4926
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move/from16 v4, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    goto :goto_189

    .line 4925
    :cond_187
    move/from16 v4, v17

    .line 4931
    :goto_189
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4933
    if-eqz v1, :cond_1a5

    .line 4934
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a3

    :cond_1a1
    move-object/from16 v1, v16

    :goto_1a3
    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4937
    :cond_1a5
    const/16 v1, 0x9

    const/16 v11, 0x400

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4940
    const-string v10, "PackageParser"

    if-eqz v1, :cond_1ec

    .line 4941
    iget-object v2, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4942
    const/16 v17, 0x0

    aget-object v4, v3, v17

    if-nez v4, :cond_1c4

    .line 4943
    iget-object v1, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1ec

    .line 4945
    :cond_1c4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity alias "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " specified invalid parentActivityName "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    const/16 v17, 0x0

    aput-object v16, v3, v17

    .line 4952
    :cond_1ec
    :goto_1ec
    iget-object v1, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x100000

    and-int/2addr v1, v11

    const/4 v12, 0x1

    if-eqz v1, :cond_1f8

    move v13, v12

    goto :goto_1f9

    :cond_1f8
    const/4 v13, 0x0

    .line 4955
    :goto_1f9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4957
    const/16 v17, 0x0

    aget-object v0, v3, v17

    if-eqz v0, :cond_203

    .line 4958
    return-object v16

    .line 4961
    :cond_203
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 4963
    :goto_207
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_30e

    if-ne v0, v9, :cond_215

    .line 4965
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v14, :cond_30e

    .line 4966
    :cond_215
    if-eq v0, v9, :cond_305

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21b

    .line 4967
    goto :goto_207

    .line 4970
    :cond_21b
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v15, " "

    if-eqz v0, :cond_2ab

    .line 4971
    new-instance v5, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v5, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 4972
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23f

    .line 4974
    return-object v16

    .line 4976
    :cond_23f
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_26a

    .line 4977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4979
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4977
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27b

    .line 4981
    :cond_26a
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v3

    iget v4, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4982
    iget-object v3, v7, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4985
    :goto_27b
    if-eqz v13, :cond_27f

    .line 4986
    move v3, v12

    goto :goto_289

    .line 4987
    :cond_27f
    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_287

    .line 4988
    const/4 v3, 0x2

    goto :goto_289

    .line 4989
    :cond_287
    move/from16 v3, v17

    .line 4990
    :goto_289
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4991
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_299

    .line 4992
    iget-object v3, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v4, v11

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4994
    :cond_299
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_2a8

    .line 4995
    iget-object v3, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4997
    :cond_2a8
    move-object v3, v6

    goto/16 :goto_207

    :cond_2ab
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2cd

    .line 4998
    iget-object v3, v7, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_2ca

    .line 5000
    return-object v16

    .line 4998
    :cond_2ca
    move-object v3, v6

    goto/16 :goto_207

    .line 5004
    :cond_2cd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5006
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5004
    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5008
    move-object v3, v6

    goto/16 :goto_207

    .line 4966
    :cond_305
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v6, v3

    goto/16 :goto_207

    .line 5016
    :cond_30e
    if-nez v8, :cond_31f

    .line 5017
    iget-object v0, v7, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_31b

    goto :goto_31d

    :cond_31b
    move/from16 v12, v17

    :goto_31d
    iput-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 5020
    :cond_31f
    return-object v7
.end method

.method private greylist-max-o parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2762
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2764
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2766
    :cond_6
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_76

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 2767
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_76

    .line 2768
    :cond_16
    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 2769
    goto :goto_6

    .line 2772
    :cond_1c
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2773
    const-string v3, "additional-certificate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2774
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2776
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 2778
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2780
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    .line 2783
    const/16 p1, -0x6c

    iput p1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2784
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2785
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2786
    const/4 p1, 0x0

    return-object p1

    .line 2791
    :cond_5d
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2792
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2794
    goto :goto_75

    .line 2795
    :cond_72
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2797
    :goto_75
    goto :goto_6

    .line 2799
    :cond_76
    return-object v0
.end method

.method private greylist-max-o parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 11
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

    .line 5529
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5531
    :cond_4
    :goto_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_77

    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    .line 5533
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_77

    .line 5534
    :cond_14
    if-eq v1, v3, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 5535
    goto :goto_4

    .line 5538
    :cond_1a
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 5539
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 5541
    const/4 p1, 0x0

    return p1

    .line 5545
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5546
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5547
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5545
    const-string v2, "PackageParser"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5549
    goto :goto_4

    .line 5556
    :cond_77
    return v2
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1475
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1489
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .registers 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1626
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1628
    nop

    .line 1629
    nop

    .line 1630
    nop

    .line 1631
    nop

    .line 1632
    nop

    .line 1633
    nop

    .line 1634
    nop

    .line 1635
    nop

    .line 1636
    nop

    .line 1637
    nop

    .line 1638
    nop

    .line 1639
    nop

    .line 1640
    nop

    .line 1641
    nop

    .line 1642
    nop

    .line 1643
    nop

    .line 1644
    nop

    .line 1645
    nop

    .line 1646
    nop

    .line 1647
    nop

    .line 1648
    nop

    .line 1649
    nop

    .line 1651
    nop

    .line 1652
    nop

    .line 1654
    const/4 v2, -0x1

    const/4 v3, 0x0

    move/from16 v17, v2

    move v5, v3

    move v10, v5

    move v13, v10

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v20, v16

    move/from16 v27, v20

    const/4 v11, 0x0

    :goto_2e
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_b6

    .line 1655
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 1656
    const-string v7, "installLocation"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1657
    invoke-interface {v0, v5, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v17

    goto/16 :goto_b2

    .line 1659
    :cond_46
    const-string/jumbo v7, "versionCode"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 1660
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v14

    goto :goto_b2

    .line 1661
    :cond_54
    const-string/jumbo v7, "versionCodeMajor"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1662
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v15

    goto :goto_b2

    .line 1663
    :cond_62
    const-string/jumbo v7, "revisionCode"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1664
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v16

    goto :goto_b2

    .line 1665
    :cond_70
    const-string v7, "coreApp"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 1666
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v20

    goto :goto_b2

    .line 1667
    :cond_7d
    const-string/jumbo v7, "isolatedSplits"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 1668
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v27

    goto :goto_b2

    .line 1669
    :cond_8b
    const-string v7, "configForSplit"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1670
    invoke-interface {v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_b2

    .line 1671
    :cond_98
    const-string v7, "isFeatureSplit"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 1672
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    goto :goto_b2

    .line 1673
    :cond_a5
    const-string/jumbo v7, "isSplitRequired"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 1674
    invoke-interface {v0, v5, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    .line 1654
    :cond_b2
    :goto_b2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2e

    .line 1680
    :cond_b6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 1682
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    move v9, v8

    move/from16 v21, v9

    move/from16 v23, v21

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v32, v25

    move/from16 v33, v32

    move/from16 v26, v5

    move/from16 v31, v26

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v34, 0x0

    .line 1683
    :goto_d8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move/from16 v22, v8

    const-string v8, "PackageParser"

    if-eq v3, v5, :cond_273

    const/4 v5, 0x3

    if-ne v3, v5, :cond_eb

    .line 1684
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-lt v5, v2, :cond_273

    .line 1685
    :cond_eb
    const/4 v5, 0x3

    if-eq v3, v5, :cond_26c

    const/4 v5, 0x4

    if-ne v3, v5, :cond_f4

    .line 1686
    const/4 v3, 0x1

    goto/16 :goto_26d

    .line 1689
    :cond_f4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-eq v3, v2, :cond_fd

    .line 1690
    const/4 v3, 0x1

    goto/16 :goto_26d

    .line 1693
    :cond_fd
    const-string/jumbo v3, "package-verifier"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 1694
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v3

    .line 1695
    if-eqz v3, :cond_113

    .line 1696
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    :cond_113
    const/4 v3, 0x1

    goto/16 :goto_26d

    :cond_116
    const-string v3, "application"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 1699
    const/4 v3, 0x0

    :goto_123
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    if-ge v3, v5, :cond_188

    .line 1700
    invoke-interface {v0, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 1701
    const-string v8, "debuggable"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13b

    .line 1702
    const/4 v8, 0x0

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v21

    goto :goto_13c

    .line 1701
    :cond_13b
    const/4 v8, 0x0

    .line 1704
    :goto_13c
    const-string/jumbo v8, "multiArch"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 1705
    const/4 v8, 0x0

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    goto :goto_14c

    .line 1704
    :cond_14b
    const/4 v8, 0x0

    .line 1707
    :goto_14c
    const-string/jumbo v8, "use32bitAbi"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15a

    .line 1708
    const/4 v8, 0x0

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    .line 1710
    :cond_15a
    const-string v8, "extractNativeLibs"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_167

    .line 1711
    const/4 v8, 0x1

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v26

    .line 1713
    :cond_167
    const-string/jumbo v8, "useEmbeddedDex"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 1714
    const/4 v8, 0x0

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v25

    goto :goto_177

    .line 1713
    :cond_176
    const/4 v8, 0x0

    .line 1716
    :goto_177
    const-string/jumbo v8, "rollbackDataPolicy"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_185

    .line 1717
    const/4 v8, 0x0

    invoke-interface {v0, v3, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v33

    .line 1699
    :cond_185
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    :cond_188
    move/from16 v8, v22

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_d8

    .line 1720
    :cond_18e
    const-string/jumbo v3, "overlay"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 1721
    const/4 v8, 0x0

    :goto_19c
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v8, v3, :cond_1f1

    .line 1722
    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1723
    const-string/jumbo v5, "requiredSystemPropertyName"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 1724
    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1ee

    .line 1725
    :cond_1b4
    const-string/jumbo v5, "requiredSystemPropertyValue"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 1726
    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v34

    goto :goto_1ee

    .line 1727
    :cond_1c2
    const-string/jumbo v5, "targetPackage"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d0

    .line 1728
    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1ee

    .line 1729
    :cond_1d0
    const-string/jumbo v5, "isStatic"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1df

    .line 1730
    const/4 v5, 0x0

    invoke-interface {v0, v8, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v22

    goto :goto_1ee

    .line 1731
    :cond_1df
    const/4 v5, 0x0

    const-string/jumbo v5, "priority"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 1732
    const/4 v5, 0x0

    invoke-interface {v0, v8, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v9

    .line 1721
    :cond_1ee
    :goto_1ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_19c

    :cond_1f1
    move/from16 v8, v22

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_d8

    .line 1735
    :cond_1f7
    const-string/jumbo v3, "uses-split"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 1736
    if-eqz v12, :cond_20d

    .line 1737
    const-string v3, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v3, 0x1

    goto :goto_26d

    .line 1741
    :cond_20d
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v5, "name"

    invoke-interface {v0, v3, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1742
    if-eqz v12, :cond_21e

    move/from16 v8, v22

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_d8

    .line 1743
    :cond_21e
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x6c

    const-string v2, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1747
    :cond_228
    const-string/jumbo v3, "uses-sdk"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26a

    .line 1748
    const/4 v8, 0x0

    :goto_236
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v8, v3, :cond_263

    .line 1749
    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1750
    const-string/jumbo v5, "targetSdkVersion"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24f

    .line 1751
    const/4 v5, 0x0

    invoke-interface {v0, v8, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v32

    goto :goto_250

    .line 1750
    :cond_24f
    const/4 v5, 0x0

    .line 1754
    :goto_250
    const-string/jumbo v5, "minSdkVersion"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 1755
    const/4 v3, 0x1

    invoke-interface {v0, v8, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v31

    goto :goto_260

    .line 1754
    :cond_25f
    const/4 v3, 0x1

    .line 1748
    :goto_260
    add-int/lit8 v8, v8, 0x1

    goto :goto_236

    :cond_263
    const/4 v3, 0x1

    move v5, v3

    move/from16 v8, v22

    const/4 v3, 0x0

    goto/16 :goto_d8

    .line 1747
    :cond_26a
    const/4 v3, 0x1

    goto :goto_26d

    .line 1685
    :cond_26c
    const/4 v3, 0x1

    .line 1683
    :goto_26d
    move v5, v3

    move/from16 v8, v22

    const/4 v3, 0x0

    goto/16 :goto_d8

    .line 1762
    :cond_273
    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2ba

    .line 1764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": overlay ignored due to required system property: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    nop

    .line 1768
    nop

    .line 1769
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    goto :goto_2c2

    .line 1762
    :cond_2ba
    move-object/from16 v3, p0

    move-object/from16 v28, v7

    move/from16 v30, v9

    move/from16 v29, v22

    .line 1772
    :goto_2c2
    move-object/from16 v18, v6

    new-instance v6, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v19, p3

    move-object v7, v3

    invoke-direct/range {v6 .. v33}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V

    return-object v6
.end method

.method private static greylist-max-o parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1494
    if-eqz p1, :cond_4

    move-object v0, p2

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1496
    :goto_8
    nop

    .line 1497
    nop

    .line 1500
    const/4 v1, 0x0

    const-string v2, "Failed to parse "

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    .line 1501
    :try_start_10
    invoke-static {p1, p2, v1, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object p1

    goto :goto_19

    .line 1502
    :cond_15
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_19} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_19} :catch_66
    .catchall {:try_start_10 .. :try_end_19} :catchall_63

    :goto_19
    nop

    .line 1506
    nop

    .line 1508
    :try_start_1b
    const-string p2, "AndroidManifest.xml"

    invoke-virtual {p1, p2}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_21} :catch_61
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_21} :catch_61
    .catchall {:try_start_1b .. :try_end_21} :catchall_b2

    .line 1511
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_49

    .line 1513
    :try_start_25
    new-instance v4, Landroid/content/pm/PackageParser$Package;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1514
    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_32

    const/4 v1, 0x1

    .line 1515
    :cond_32
    const-string p3, "collectCertificates"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_3a} :catch_5e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3a} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_3a} :catch_5e
    .catchall {:try_start_25 .. :try_end_3a} :catchall_5b

    .line 1517
    :try_start_3a
    invoke-static {v4, p0, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    .line 1519
    :try_start_3d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1520
    nop

    .line 1521
    iget-object p0, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1522
    goto :goto_4b

    .line 1519
    :catchall_44
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1520
    throw p0

    .line 1523
    :cond_49
    sget-object p0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1526
    :goto_4b
    nop

    .line 1527
    invoke-static {v0, p2, p2, p0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object p0
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_50} :catch_5e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_50} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_50} :catch_5e
    .catchall {:try_start_3d .. :try_end_50} :catchall_5b

    .line 1534
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1535
    if-eqz p1, :cond_5a

    .line 1537
    :try_start_55
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    .line 1539
    goto :goto_5a

    .line 1538
    :catchall_59
    move-exception p1

    .line 1527
    :cond_5a
    :goto_5a
    return-object p0

    .line 1534
    :catchall_5b
    move-exception p0

    move-object v3, p2

    goto :goto_b3

    .line 1529
    :catch_5e
    move-exception p0

    move-object v3, p2

    goto :goto_83

    :catch_61
    move-exception p0

    goto :goto_83

    .line 1534
    :catchall_63
    move-exception p0

    move-object p1, v3

    goto :goto_b3

    .line 1529
    :catch_66
    move-exception p0

    move-object p1, v3

    goto :goto_83

    .line 1503
    :catch_69
    move-exception p0

    .line 1504
    :try_start_6a
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x64

    invoke-direct {p0, p2, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_83} :catch_66
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_83} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_83} :catch_66
    .catchall {:try_start_6a .. :try_end_83} :catchall_63

    .line 1530
    :goto_83
    :try_start_83
    const-string p2, "PackageParser"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1531
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0x66

    invoke-direct {p2, v0, p3, p0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_b2
    .catchall {:try_start_83 .. :try_end_b2} :catchall_b2

    .line 1534
    :catchall_b2
    move-exception p0

    :goto_b3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1535
    if-eqz p1, :cond_bd

    .line 1537
    :try_start_b8
    invoke-virtual {p1}, Landroid/content/res/ApkAssets;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    .line 1539
    goto :goto_bd

    .line 1538
    :catchall_bc
    move-exception p1

    .line 1542
    :cond_bd
    :goto_bd
    throw p0
.end method

.method private greylist-max-o parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1216
    nop

    .line 1217
    const-string v0, "/mnt/expand/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    .line 1218
    const/16 v2, 0x2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1219
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_23

    .line 1217
    :cond_22
    move-object v6, v3

    .line 1222
    :goto_23
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1223
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1227
    nop

    .line 1229
    :try_start_2d
    invoke-virtual {p2, v1}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result p1

    .line 1230
    if-eqz p1, :cond_97

    .line 1234
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p2, p1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_39
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2d .. :try_end_39} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_b5
    .catchall {:try_start_2d .. :try_end_39} :catchall_b2

    .line 1235
    :try_start_39
    new-instance v2, Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v2, p2, v4, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1237
    new-array v5, v0, [Ljava/lang/String;
    :try_end_42
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_39 .. :try_end_42} :catch_94
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_91
    .catchall {:try_start_39 .. :try_end_42} :catchall_8e

    .line 1238
    move-object v0, p0

    move-object v3, p1

    move v4, p3

    :try_start_45
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 1239
    if-eqz p1, :cond_5e

    .line 1244
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1, v6}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1247
    sget-object p2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_59
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_45 .. :try_end_59} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_b5
    .catchall {:try_start_45 .. :try_end_59} :catchall_b2

    .line 1249
    nop

    .line 1257
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1249
    return-object p1

    .line 1240
    :cond_5e
    :try_start_5e
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    iget p2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " (at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1241
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1257
    :catchall_8e
    move-exception v0

    move-object v3, p1

    goto :goto_b3

    .line 1253
    :catch_91
    move-exception v0

    move-object v3, p1

    goto :goto_b6

    .line 1251
    :catch_94
    move-exception v0

    move-object v3, p1

    goto :goto_d3

    .line 1231
    :cond_97
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed adding asset path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x65

    invoke-direct {p1, p3, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_b2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5e .. :try_end_b2} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_b2} :catch_b5
    .catchall {:try_start_5e .. :try_end_b2} :catchall_b2

    .line 1257
    :catchall_b2
    move-exception v0

    :goto_b3
    move-object p1, v0

    goto :goto_d5

    .line 1253
    :catch_b5
    move-exception v0

    :goto_b6
    move-object p1, v0

    .line 1254
    :try_start_b7
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read manifest from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0x66

    invoke-direct {p2, v0, p3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1251
    :catch_d2
    move-exception v0

    :goto_d3
    move-object p1, v0

    .line 1252
    throw p1
    :try_end_d5
    .catchall {:try_start_b7 .. :try_end_d5} :catchall_b2

    .line 1257
    :goto_d5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1258
    throw p1
.end method

.method private greylist-max-p parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1871
    const/16 v2, -0x6a

    const/4 v3, 0x0

    :try_start_3
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1872
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1873
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2e

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v7

    .line 1877
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_2d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_2d} :catch_bb

    .line 1878
    return-object v3

    .line 1883
    :cond_2e
    nop

    .line 1885
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v4}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1887
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1890
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1892
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 1894
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1895
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1897
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1899
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v6, :cond_6c

    .line 1900
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1903
    :cond_6c
    const-string v6, "coreApp"

    invoke-interface {p3, v3, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1905
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1907
    if-eqz v3, :cond_85

    .line 1908
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v8, 0x8000

    or-int/2addr v6, v8

    iput v6, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1911
    :cond_85
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 1913
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v6, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1914
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1916
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v3, :cond_a7

    .line 1917
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 1919
    :cond_a7
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1921
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1923
    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 1880
    :catch_bb
    move-exception v0

    .line 1881
    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1882
    return-object v3
.end method

.method private greylist-max-o parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1798
    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {p3, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1799
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1800
    const/16 v1, -0x6a

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1801
    return v8

    .line 1805
    :cond_15
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, -0x6c

    const-string v5, "PackageParser"

    if-eqz v2, :cond_3e

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1808
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    aput-object v1, p5, v8

    .line 1810
    iput v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1811
    return v8

    .line 1815
    :cond_3e
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate child package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1817
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    aput-object v1, p5, v8

    .line 1819
    iput v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1820
    return v8

    .line 1824
    :cond_5f
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1827
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1828
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v1, v2, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1829
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1830
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1831
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1833
    move-object v1, v2

    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1834
    if-nez v0, :cond_8f

    .line 1836
    return v8

    .line 1840
    :cond_8f
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_9a

    .line 1841
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1843
    :cond_9a
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    iput-object p1, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1846
    return v7
.end method

.method private greylist-max-o parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 36
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

    .line 1948
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x0

    iput-object v7, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1951
    nop

    .line 1953
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1956
    nop

    .line 1958
    const/16 v6, 0xd

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 1961
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v6, :cond_24

    sget v11, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v6, v11, :cond_70

    .line 1962
    :cond_24
    invoke-virtual {v5, v8, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 1964
    if-eqz v6, :cond_70

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_70

    .line 1965
    invoke-static {v6, v10, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 1966
    if-eqz v11, :cond_64

    const-string v12, "android"

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_64

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p6, v8

    .line 1969
    const/16 v0, -0x6b

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1970
    return-object v7

    .line 1972
    :cond_64
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1973
    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1978
    :cond_70
    const/4 v6, -0x1

    const/4 v11, 0x4

    invoke-virtual {v5, v11, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1981
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v2, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v12, v6, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1983
    const/4 v12, 0x7

    invoke-virtual {v5, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 1986
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v5, v6, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1989
    and-int/lit8 v5, p5, 0x8

    if-eqz v5, :cond_94

    .line 1990
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    or-int/2addr v6, v13

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1994
    :cond_94
    nop

    .line 1995
    nop

    .line 1996
    nop

    .line 1997
    nop

    .line 1998
    nop

    .line 1999
    nop

    .line 2001
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move-object/from16 v16, v7

    move v14, v8

    move v5, v10

    move v6, v5

    move v7, v6

    move v15, v7

    move/from16 v17, v15

    move/from16 v18, v17

    .line 2002
    :goto_a9
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const-string v8, "PackageParser"

    if-eq v12, v10, :cond_71e

    if-ne v12, v9, :cond_c3

    .line 2003
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v13, :cond_ba

    goto :goto_c3

    :cond_ba
    move v9, v5

    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v25, v14

    goto/16 :goto_725

    .line 2004
    :cond_c3
    :goto_c3
    if-eq v12, v9, :cond_6fe

    if-ne v12, v11, :cond_d6

    .line 2005
    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v22, v9

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    move v9, v5

    goto/16 :goto_70b

    .line 2008
    :cond_d6
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2010
    const-string v12, " "

    const-string v11, " at "

    if-eqz v0, :cond_124

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_124

    .line 2011
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2013
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2011
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2015
    move v9, v5

    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_70b

    .line 2018
    :cond_124
    const-string v0, "application"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 2019
    if-eqz v14, :cond_145

    .line 2025
    const-string v0, "<manifest> has more than one <application>"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2027
    move v9, v5

    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_70b

    .line 2031
    :cond_145
    nop

    .line 2032
    move v9, v5

    move v10, v6

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    .line 2033
    return-object v16

    .line 2032
    :cond_153
    move v11, v7

    move v5, v9

    move v6, v10

    move/from16 v24, v13

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/4 v14, 0x1

    const/16 v22, 0x3

    goto/16 :goto_6f1

    .line 2035
    :cond_15f
    move v9, v5

    move v5, v6

    move-object/from16 v6, p6

    const-string/jumbo v0, "overlay"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v23, v0

    const/4 v0, 0x2

    if-eqz v23, :cond_226

    .line 2036
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v3, v4, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 2038
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2040
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 2042
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2044
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2047
    const/4 v12, 0x4

    invoke-virtual {v10, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2050
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2053
    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2056
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2058
    iget-object v10, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v12, -0x6c

    if-nez v10, :cond_1b3

    .line 2059
    const-string v0, "<overlay> does not specify a target package"

    const/16 v19, 0x0

    aput-object v0, v6, v19

    .line 2060
    iput v12, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2061
    return-object v16

    .line 2064
    :cond_1b3
    iget v10, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v10, :cond_21b

    iget v10, v2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v12, 0x270f

    if-le v10, v12, :cond_1be

    goto :goto_21b

    .line 2072
    :cond_1be
    invoke-static {v0, v11}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_201

    .line 2074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping target and overlay pair "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/16 v0, -0x7d

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2078
    return-object v16

    .line 2081
    :cond_201
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v10, 0x10000000

    or-int/2addr v8, v10

    iput v8, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2084
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2086
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2065
    :cond_21b
    :goto_21b
    const-string v0, "<overlay> priority must be between 0 and 9999"

    const/16 v19, 0x0

    aput-object v0, v6, v19

    .line 2066
    const/16 v0, -0x6c

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2068
    return-object v16

    .line 2086
    :cond_226
    const-string/jumbo v0, "key-sets"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 2087
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_236

    .line 2088
    return-object v16

    .line 2087
    :cond_236
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2090
    :cond_244
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 2091
    move v10, v5

    move-object v5, v4

    move-object v4, v3

    move/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    move-object v3, v4

    move-object v4, v5

    if-nez v0, :cond_25b

    .line 2092
    return-object v16

    .line 2091
    :cond_25b
    move/from16 v26, v7

    move/from16 v27, v10

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2094
    :cond_269
    const-string/jumbo v0, "permission"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 2095
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_279

    .line 2096
    return-object v16

    .line 2095
    :cond_279
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2098
    :cond_287
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 2099
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_297

    .line 2100
    return-object v16

    .line 2099
    :cond_297
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2102
    :cond_2a5
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    .line 2103
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_2b5

    .line 2104
    return-object v16

    .line 2103
    :cond_2b5
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2106
    :cond_2c3
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d3

    .line 2107
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6df

    .line 2111
    :cond_2e3
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    .line 2112
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2113
    sget-object v8, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2115
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2118
    const/4 v10, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2121
    const/4 v12, 0x2

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_311

    .line 2124
    iget v12, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v12, v10

    iput v12, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2126
    :cond_311
    const/4 v10, 0x3

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2129
    const/4 v12, 0x4

    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_327

    .line 2132
    iget v10, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    const/16 v23, 0x2

    or-int/lit8 v10, v10, 0x2

    iput v10, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2134
    :cond_327
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2135
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v8, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2137
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2139
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    :cond_343
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_37e

    .line 2140
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2141
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v8, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v2, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2143
    iget-object v8, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_36d

    .line 2144
    new-instance v8, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v8}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2145
    iget v0, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v0, v8, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2146
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2149
    :cond_36d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2151
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    :cond_37e
    move/from16 v24, v13

    const-string v13, "feature-group"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_434

    .line 2152
    new-instance v10, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v10}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2153
    nop

    .line 2154
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move/from16 v25, v14

    move-object/from16 v14, v16

    .line 2155
    :goto_396
    move/from16 v26, v7

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move/from16 v27, v5

    const/4 v5, 0x1

    if-eq v7, v5, :cond_412

    const/4 v5, 0x3

    if-ne v7, v5, :cond_3aa

    .line 2156
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v13, :cond_412

    .line 2157
    :cond_3aa
    const/4 v5, 0x3

    if-eq v7, v5, :cond_409

    const/4 v5, 0x4

    if-ne v7, v5, :cond_3b3

    .line 2158
    move-object/from16 v28, v0

    goto :goto_40b

    .line 2161
    :cond_3b3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2162
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d1

    .line 2163
    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v5

    .line 2166
    iget v7, v5, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v20, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2167
    invoke-static {v14, v5}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2168
    move-object/from16 v28, v0

    move-object v14, v5

    goto :goto_3ff

    .line 2169
    :cond_3d1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v0

    const-string v0, "Unknown element under <feature-group>: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2171
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :goto_3ff
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2174
    move/from16 v7, v26

    move/from16 v5, v27

    move-object/from16 v0, v28

    goto :goto_396

    .line 2157
    :cond_409
    move-object/from16 v28, v0

    .line 2155
    :goto_40b
    move/from16 v7, v26

    move/from16 v5, v27

    move-object/from16 v0, v28

    goto :goto_396

    .line 2176
    :cond_412
    if-eqz v14, :cond_426

    .line 2177
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v10, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2178
    iget-object v0, v10, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/FeatureInfo;

    iput-object v0, v10, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2180
    :cond_426
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2182
    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    :cond_434
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v25, v14

    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c6

    .line 2183
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_4bd

    .line 2184
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2187
    nop

    .line 2188
    nop

    .line 2189
    nop

    .line 2190
    nop

    .line 2192
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2194
    if-eqz v5, :cond_46f

    .line 2195
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_469

    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_469

    .line 2196
    iget-object v5, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_472

    .line 2199
    :cond_469
    iget v5, v5, Landroid/util/TypedValue;->data:I

    move v7, v5

    move-object/from16 v5, v16

    goto :goto_472

    .line 2194
    :cond_46f
    move-object/from16 v5, v16

    const/4 v7, 0x1

    .line 2203
    :goto_472
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 2205
    if-eqz v8, :cond_495

    .line 2206
    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_48f

    iget-object v10, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v10, :cond_48f

    .line 2207
    iget-object v8, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2208
    if-nez v5, :cond_48d

    .line 2209
    move-object v5, v8

    const/4 v10, 0x0

    goto :goto_498

    .line 2208
    :cond_48d
    const/4 v10, 0x0

    goto :goto_498

    .line 2213
    :cond_48f
    iget v8, v8, Landroid/util/TypedValue;->data:I

    move v10, v8

    move-object/from16 v8, v16

    goto :goto_498

    .line 2216
    :cond_495
    nop

    .line 2217
    move-object v8, v5

    move v10, v7

    .line 2220
    :goto_498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2222
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v11, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v7, v5, v0, v11, v6}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2224
    const/16 v5, -0xc

    if-gez v0, :cond_4aa

    .line 2225
    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2226
    return-object v16

    .line 2229
    :cond_4aa
    sget-object v7, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v10, v8, v7, v6}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2231
    if-gez v7, :cond_4b5

    .line 2232
    iput v5, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2233
    return-object v16

    .line 2236
    :cond_4b5
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2237
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2240
    :cond_4bd
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    goto/16 :goto_6ea

    .line 2242
    :cond_4c6
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52b

    .line 2243
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2246
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x0

    const/4 v11, 0x6

    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2249
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v13, 0x7

    invoke-virtual {v0, v13, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2252
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2258
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 2261
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 2264
    move/from16 v14, v27

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 2267
    move/from16 v11, v26

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 2270
    move/from16 v12, v17

    const/4 v14, 0x4

    invoke-virtual {v0, v14, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 2273
    move/from16 v14, v18

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 2277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2279
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v15, v5

    move v5, v8

    move/from16 v22, v9

    move v6, v10

    move/from16 v17, v12

    move/from16 v18, v14

    move/from16 v14, v25

    goto/16 :goto_6f1

    .line 2281
    :cond_52b
    move/from16 v14, v27

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56d

    .line 2282
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2287
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2290
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2292
    if-eqz v5, :cond_566

    .line 2293
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v0, :cond_555

    .line 2294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2296
    :cond_555
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_566

    .line 2297
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    :cond_566
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2303
    move/from16 v27, v14

    goto/16 :goto_6ea

    :cond_56d
    const-string v0, "instrumentation"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_580

    .line 2304
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_57c

    .line 2305
    return-object v16

    .line 2304
    :cond_57c
    move/from16 v27, v14

    goto/16 :goto_6ea

    .line 2307
    :cond_580
    const-string/jumbo v0, "original-package"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ba

    .line 2308
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2311
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2313
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b0

    .line 2314
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v8, :cond_5ab

    .line 2315
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2316
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v2, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2318
    :cond_5ab
    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2321
    :cond_5b0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2323
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2325
    move/from16 v27, v14

    goto/16 :goto_6ea

    :cond_5ba
    const-string v0, "adopt-permissions"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e9

    .line 2326
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAdoptPermissions:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2329
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2332
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2334
    if-eqz v5, :cond_5e2

    .line 2335
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_5dd

    .line 2336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2338
    :cond_5dd
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    :cond_5e2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2343
    move/from16 v27, v14

    goto/16 :goto_6ea

    :cond_5e9
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f9

    .line 2345
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2346
    move/from16 v27, v14

    goto/16 :goto_70b

    .line 2348
    :cond_5f9
    const-string v0, "compatible-screens"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_608

    .line 2350
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2351
    move/from16 v27, v14

    goto/16 :goto_70b

    .line 2352
    :cond_608
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_618

    .line 2353
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2354
    move/from16 v27, v14

    goto/16 :goto_70b

    .line 2356
    :cond_618
    const-string v0, "eat-comment"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_627

    .line 2358
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2359
    move/from16 v27, v14

    goto/16 :goto_70b

    .line 2361
    :cond_627
    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_646

    .line 2362
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_63b

    .line 2363
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2364
    move/from16 v27, v14

    goto/16 :goto_70b

    .line 2366
    :cond_63b
    move/from16 v5, p5

    move/from16 v27, v14

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6ea

    .line 2368
    return-object v16

    .line 2371
    :cond_646
    move/from16 v27, v14

    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69d

    .line 2372
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_697

    .line 2373
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2375
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2377
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2379
    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2380
    if-eqz v5, :cond_697

    .line 2381
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 2382
    div-int/lit8 v6, v0, 0x2

    new-array v6, v6, [B

    .line 2383
    const/4 v11, 0x0

    :goto_672
    if-ge v11, v0, :cond_695

    .line 2384
    div-int/lit8 v8, v11, 0x2

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x10

    invoke-static {v10, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/16 v21, 0x4

    shl-int/lit8 v10, v10, 0x4

    add-int/lit8 v14, v11, 0x1

    .line 2385
    invoke-virtual {v5, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    add-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v6, v8

    .line 2383
    add-int/lit8 v11, v11, 0x2

    goto :goto_672

    .line 2387
    :cond_695
    iput-object v6, v2, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2391
    :cond_697
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/16 v16, 0x0

    goto :goto_6ea

    .line 2400
    :cond_69d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <manifest>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2402
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2404
    const/16 v16, 0x0

    goto :goto_70b

    .line 2106
    :cond_6d3
    move/from16 v27, v5

    move/from16 v26, v7

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    const/16 v22, 0x3

    .line 2108
    :goto_6df
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_6e8

    .line 2109
    const/16 v16, 0x0

    return-object v16

    .line 2108
    :cond_6e8
    const/16 v16, 0x0

    .line 2406
    :cond_6ea
    :goto_6ea
    move v5, v9

    move/from16 v14, v25

    move/from16 v11, v26

    move/from16 v6, v27

    :goto_6f1
    move-object/from16 v0, p2

    move v10, v7

    move v7, v11

    move v12, v13

    move/from16 v9, v22

    move/from16 v13, v24

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto/16 :goto_a9

    .line 2004
    :cond_6fe
    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v22, v9

    move/from16 v24, v13

    move/from16 v25, v14

    const/4 v7, 0x1

    const/4 v13, 0x7

    move v9, v5

    .line 2002
    :goto_70b
    move-object/from16 v0, p2

    move v10, v7

    move v5, v9

    move v12, v13

    move/from16 v9, v22

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v7, v26

    move/from16 v6, v27

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto/16 :goto_a9

    :cond_71e
    move v9, v5

    move/from16 v27, v6

    move/from16 v26, v7

    move/from16 v25, v14

    .line 2408
    :goto_725
    if-nez v25, :cond_73a

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_73a

    .line 2409
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/16 v19, 0x0

    aput-object v0, p6, v19

    .line 2410
    const/16 v0, -0x6d

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_73c

    .line 2408
    :cond_73a
    const/16 v19, 0x0

    .line 2413
    :goto_73c
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    .line 2414
    nop

    .line 2415
    move-object/from16 v7, v16

    move/from16 v11, v19

    :goto_744
    if-ge v11, v0, :cond_78c

    .line 2416
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v11

    .line 2418
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v4, v5, :cond_753

    .line 2419
    goto :goto_78c

    .line 2421
    :cond_753
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_789

    .line 2422
    if-nez v7, :cond_771

    .line 2423
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2424
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    const-string v4, ": compat added "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_776

    .line 2427
    :cond_771
    const/16 v4, 0x20

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2429
    :goto_776
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    :cond_789
    add-int/lit8 v11, v11, 0x1

    goto :goto_744

    .line 2434
    :cond_78c
    :goto_78c
    if-eqz v7, :cond_795

    .line 2435
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_795
    :try_start_795
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 2443
    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_79d
    .catch Landroid/os/RemoteException; {:try_start_795 .. :try_end_79d} :catch_79e

    .line 2446
    goto :goto_7a3

    .line 2444
    :catch_79e
    move-exception v0

    .line 2445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2448
    :goto_7a3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2449
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2451
    move/from16 v11, v19

    :goto_7ae
    if-ge v11, v3, :cond_7ce

    .line 2452
    nop

    .line 2453
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 2454
    new-instance v6, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2455
    invoke-virtual {v5}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    .line 2456
    invoke-virtual {v5}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v8

    .line 2457
    invoke-virtual {v5}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v5

    invoke-direct {v6, v7, v8, v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 2454
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2451
    add-int/lit8 v11, v11, 0x1

    goto :goto_7ae

    .line 2461
    :cond_7ce
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2462
    move/from16 v11, v19

    :goto_7d4
    if-ge v11, v0, :cond_81d

    .line 2463
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2464
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v6

    if-ge v5, v6, :cond_81a

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 2465
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f3

    .line 2466
    goto :goto_81a

    .line 2468
    :cond_7f3
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v3

    .line 2469
    move/from16 v5, v19

    :goto_7f9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_81a

    .line 2470
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2471
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_817

    .line 2472
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    :cond_817
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f9

    .line 2462
    :cond_81a
    :goto_81a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7d4

    .line 2478
    :cond_81d
    if-ltz v15, :cond_828

    if-lez v15, :cond_830

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v12, 0x4

    if-lt v0, v12, :cond_830

    .line 2481
    :cond_828
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2483
    :cond_830
    if-eqz v9, :cond_83a

    .line 2484
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2486
    :cond_83a
    if-ltz v27, :cond_845

    if-lez v27, :cond_84d

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v12, 0x4

    if-lt v0, v12, :cond_84d

    .line 2489
    :cond_845
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2491
    :cond_84d
    if-ltz v26, :cond_859

    if-lez v26, :cond_862

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_862

    .line 2494
    :cond_859
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2496
    :cond_862
    if-ltz v17, :cond_86d

    if-lez v17, :cond_875

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v12, 0x4

    if-lt v0, v12, :cond_875

    .line 2499
    :cond_86d
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2501
    :cond_875
    if-ltz v18, :cond_880

    if-lez v18, :cond_888

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v12, 0x4

    if-lt v0, v12, :cond_888

    .line 2504
    :cond_880
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2510
    :cond_888
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_893

    .line 2511
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2514
    :cond_893
    return-object v2
.end method

.method private greylist parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3367
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3368
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3370
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3373
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 3375
    const/16 v6, 0x2a

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 3378
    const/16 v11, 0x16

    const/16 v12, 0x1e

    move v6, v4

    const-string v4, "<application>"

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x3

    move v9, v8

    const/4 v8, 0x1

    move v10, v9

    const/4 v9, 0x2

    move/from16 v16, v10

    const/16 v10, 0x2a

    move-object/from16 v3, p5

    move/from16 v13, v16

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v4

    move-object v7, v1

    move-object v9, v2

    move-object v8, v5

    move-object v5, v3

    const/16 v10, -0x6c

    if-nez v4, :cond_4d

    .line 3386
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3387
    iput v10, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3388
    return v13

    .line 3391
    :cond_4d
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 3392
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3395
    :cond_55
    const/4 v11, 0x4

    const/16 v1, 0x400

    invoke-virtual {v8, v11, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3398
    if-eqz v2, :cond_64

    .line 3399
    invoke-static {v15, v2, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 3403
    :cond_64
    const/16 v2, 0x11

    const/4 v12, 0x1

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 3405
    const/16 v4, 0x10

    const/4 v6, -0x1

    const/high16 v16, 0x4000000

    const/16 v3, 0x20

    if-eqz v2, :cond_e0

    .line 3406
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v18, 0x8000

    or-int v2, v2, v18

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3411
    invoke-virtual {v8, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3414
    if-eqz v2, :cond_c3

    .line 3415
    invoke-static {v15, v2, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3421
    const/16 v2, 0x12

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 3424
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x10000

    or-int v2, v2, v18

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3426
    :cond_99
    const/16 v2, 0x15

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 3429
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x20000

    or-int v2, v2, v18

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3431
    :cond_a9
    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 3434
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v2, v2, v16

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3436
    :cond_b5
    const/16 v2, 0x28

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 3439
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3443
    :cond_c3
    const/16 v2, 0x23

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 3445
    if-eqz v2, :cond_dd

    move/from16 v18, v3

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v3, :cond_e2

    .line 3451
    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_d9

    move v2, v6

    goto :goto_da

    :cond_d9
    move v2, v13

    :goto_da
    iput v2, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    goto :goto_e2

    .line 3445
    :cond_dd
    move/from16 v18, v3

    goto :goto_e2

    .line 3405
    :cond_e0
    move/from16 v18, v3

    .line 3458
    :cond_e2
    :goto_e2
    invoke-virtual {v8, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3460
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3463
    const/16 v2, 0x8

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 3467
    const/16 v3, 0x2d

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 3469
    if-eqz v3, :cond_108

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v4, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 3470
    :cond_108
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v3, v2

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3474
    :cond_10d
    const/16 v3, 0x1b

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 3477
    iput-boolean v12, v7, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3480
    :cond_117
    const/16 v3, 0x1c

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3482
    if-eqz v4, :cond_127

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_127

    .line 3483
    iput-object v4, v7, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3486
    :cond_127
    const/16 v4, 0x1d

    move/from16 v20, v11

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3488
    if-eqz v11, :cond_139

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_139

    .line 3489
    iput-object v11, v7, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3492
    :cond_139
    const/16 v11, 0xa

    invoke-virtual {v8, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_148

    .line 3495
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x2

    or-int/2addr v11, v10

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_149

    .line 3492
    :cond_148
    const/4 v10, 0x2

    .line 3498
    :goto_149
    const/16 v11, 0x14

    invoke-virtual {v8, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_157

    .line 3501
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v11, v11, 0x4000

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3504
    :cond_157
    iget-object v11, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v17, v10

    const/16 v10, 0xe

    if-lt v11, v10, :cond_163

    move v11, v12

    goto :goto_164

    :cond_163
    move v11, v13

    :goto_164
    const/16 v2, 0x17

    invoke-virtual {v8, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3507
    iget-boolean v2, v7, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    const/high16 v11, 0x20000000

    if-eqz v2, :cond_177

    .line 3508
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v2, v11

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3511
    :cond_177
    const/4 v2, 0x7

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 3514
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3517
    :cond_184
    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 3520
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3523
    :cond_190
    const/4 v2, 0x5

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 3526
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3530
    :cond_19d
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1af

    .line 3531
    const/16 v2, 0xf

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 3534
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3538
    :cond_1af
    const/16 v2, 0x18

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_1bf

    .line 3541
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v23, 0x100000

    or-int v10, v10, v23

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3544
    :cond_1bf
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v10, v3, :cond_1c7

    move v3, v12

    goto :goto_1c8

    :cond_1c7
    move v3, v13

    :goto_1c8
    const/16 v10, 0x24

    invoke-virtual {v8, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/high16 v10, 0x8000000

    if-eqz v3, :cond_1d7

    .line 3547
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v3, v10

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3550
    :cond_1d7
    const/16 v3, 0x1a

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/high16 v23, 0x400000

    if-eqz v3, :cond_1e7

    .line 3553
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v3, v3, v23

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3556
    :cond_1e7
    const/16 v3, 0x21

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/high16 v24, -0x80000000

    if-eqz v3, :cond_1f7

    .line 3559
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v3, v3, v24

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3562
    :cond_1f7
    const/16 v3, 0x22

    invoke-virtual {v8, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_207

    .line 3565
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v25, 0x10000000

    or-int v3, v3, v25

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3568
    :cond_207
    const/16 v3, 0x35

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/high16 v25, 0x2000000

    if-eqz v3, :cond_217

    .line 3571
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v3, v3, v25

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3574
    :cond_217
    const/16 v3, 0x26

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_225

    .line 3577
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3579
    :cond_225
    const/16 v3, 0x27

    invoke-virtual {v8, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 3582
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3585
    :cond_233
    const/16 v3, 0x25

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_250

    .line 3586
    const/16 v2, 0x25

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_249

    .line 3587
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v1

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_25c

    .line 3589
    :cond_249
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_25c

    .line 3591
    :cond_250
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v3, v2, :cond_25c

    .line 3592
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3595
    :cond_25c
    :goto_25c
    const/16 v2, 0x36

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 3599
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v16

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3602
    :cond_26a
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v4, :cond_272

    move v2, v12

    goto :goto_273

    :cond_272
    move v2, v13

    :goto_273
    const/16 v3, 0x37

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_280

    .line 3605
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v10

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3608
    :cond_280
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v2, v4, :cond_288

    move v4, v12

    goto :goto_289

    :cond_288
    move v4, v13

    :goto_289
    const/16 v2, 0x38

    invoke-virtual {v8, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_296

    .line 3611
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v2, v11

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3614
    :cond_296
    const/16 v2, 0x3b

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 3616
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v24

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3619
    :cond_2a4
    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3620
    const/16 v2, 0x33

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 3622
    const/16 v2, 0x29

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3625
    const/16 v2, 0x2b

    invoke-virtual {v8, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3630
    const/4 v2, 0x6

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 3632
    if-eqz v2, :cond_2d7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d7

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d8

    :cond_2d7
    const/4 v2, 0x0

    :goto_2d8
    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3634
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2e9

    .line 3635
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2ef

    .line 3642
    :cond_2e9
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 3645
    :goto_2ef
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, v5}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3647
    const/16 v2, 0x30

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 3649
    if-eqz v2, :cond_309

    .line 3650
    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3653
    :cond_309
    const/16 v2, 0x31

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 3655
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int v2, v2, v23

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3658
    :cond_317
    const/16 v2, 0x32

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_326

    .line 3661
    iget v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3664
    :cond_326
    aget-object v2, v5, v13

    if-nez v2, :cond_38a

    .line 3666
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_33a

    .line 3667
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_341

    .line 3674
    :cond_33a
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 3677
    :goto_341
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move/from16 v4, p4

    move v10, v6

    const/16 v19, 0x10

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3680
    const/16 v1, 0x9

    invoke-virtual {v8, v1, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3683
    const/16 v1, 0x1f

    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_369

    .line 3685
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int v1, v1, v25

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3688
    :cond_369
    const/16 v1, 0x2f

    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_38d

    .line 3691
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3695
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_38d

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38d

    .line 3696
    const-string v1, "cantSaveState applications can not use custom processes"

    aput-object v1, p5, v13

    goto :goto_38d

    .line 3664
    :cond_38a
    move v10, v6

    const/16 v19, 0x10

    .line 3701
    :cond_38d
    :goto_38d
    const/16 v1, 0x19

    invoke-virtual {v8, v1, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3704
    const/16 v1, 0x2e

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3706
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v1, :cond_3c0

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3707
    invoke-static {v1}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c0

    .line 3708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v13

    .line 3711
    :cond_3c0
    const/16 v1, 0x34

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 3714
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3716
    aget-object v1, p5, v13

    if-eqz v1, :cond_3d4

    .line 3717
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3718
    return v13

    .line 3721
    :cond_3d4
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 3724
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 3726
    nop

    .line 3727
    nop

    .line 3728
    move/from16 v16, v13

    move/from16 v18, v16

    move/from16 v22, v18

    .line 3729
    :goto_3e6
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v12, :cond_704

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3fb

    .line 3730
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_3f6

    goto :goto_3fb

    :cond_3f6
    move-object/from16 v5, p5

    move-object v2, v7

    goto/16 :goto_707

    .line 3731
    :cond_3fb
    :goto_3fb
    const/4 v2, 0x3

    if-eq v1, v2, :cond_6f4

    move/from16 v2, v20

    if-ne v1, v2, :cond_40f

    .line 3732
    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v20, v2

    move-object v2, v7

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6fd

    .line 3735
    :cond_40f
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3736
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_452

    .line 3737
    const/4 v1, 0x0

    iget-boolean v8, v7, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v3, v7

    move v7, v1

    move-object v1, v3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v20, v2

    move-object v3, v14

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3739
    move-object v2, v1

    if-nez v7, :cond_436

    .line 3740
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3741
    return v13

    .line 3744
    :cond_436
    iget v1, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v1, :cond_43c

    move v4, v12

    goto :goto_43d

    :cond_43c
    move v4, v13

    :goto_43d
    or-int v1, v16, v4

    .line 3745
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3747
    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move-object/from16 v5, p5

    move/from16 v16, v1

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    :cond_452
    move/from16 v20, v2

    move-object v2, v7

    const-string/jumbo v3, "receiver"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_491

    .line 3748
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3750
    move-object v2, v1

    if-nez v7, :cond_475

    .line 3751
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3752
    return v13

    .line 3755
    :cond_475
    iget v1, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v1, :cond_47b

    move v4, v12

    goto :goto_47c

    :cond_47b
    move v4, v13

    :goto_47c
    or-int v1, v18, v4

    .line 3756
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3758
    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move-object/from16 v5, p5

    move/from16 v18, v1

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    :cond_491
    const-string/jumbo v3, "service"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4cb

    .line 3759
    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v7

    .line 3760
    move-object v2, v1

    if-nez v7, :cond_4af

    .line 3761
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3762
    return v13

    .line 3765
    :cond_4af
    iget v1, v7, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v1, :cond_4b5

    move v4, v12

    goto :goto_4b6

    :cond_4b5
    move v4, v13

    :goto_4b6
    or-int v1, v22, v4

    .line 3766
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3768
    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move-object/from16 v5, p5

    move/from16 v22, v1

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    :cond_4cb
    const-string/jumbo v3, "provider"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4fa

    .line 3769
    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v7

    .line 3770
    move-object v2, v1

    if-nez v7, :cond_4e9

    .line 3771
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3772
    return v13

    .line 3775
    :cond_4e9
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move-object/from16 v5, p5

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    :cond_4fa
    const-string v3, "activity-alias"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52f

    .line 3778
    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v7

    .line 3779
    move-object v14, v3

    move-object v3, v2

    move-object v2, v1

    if-nez v7, :cond_519

    .line 3780
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3781
    return v13

    .line 3784
    :cond_519
    iget v1, v7, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v1, :cond_51f

    move v4, v12

    goto :goto_520

    :cond_51f
    move v4, v13

    :goto_520
    or-int v1, v16, v4

    .line 3785
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    move/from16 v16, v1

    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    :cond_52f
    move-object/from16 v3, p2

    move-object/from16 v14, p3

    move-object/from16 v5, p5

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_557

    .line 3791
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v3, v14, v1, v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_551

    .line 3793
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3794
    return v13

    .line 3791
    :cond_551
    move/from16 v8, v17

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    .line 3796
    :cond_557
    const-string/jumbo v4, "static-library"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ff

    .line 3797
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v3, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3802
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3804
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 3806
    move/from16 v8, v17

    invoke-virtual {v1, v8, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 3810
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3813
    if-eqz v4, :cond_5d6

    if-gez v7, :cond_57e

    move/from16 v23, v13

    goto :goto_5d8

    .line 3821
    :cond_57e
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v1, :cond_58f

    .line 3822
    const-string/jumbo v1, "sharedUserId not allowed in static shared library"

    aput-object v1, v5, v13

    .line 3823
    const/16 v1, -0x6b

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3824
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3825
    return v13

    .line 3828
    :cond_58f
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v1, :cond_5b0

    .line 3829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple static-shared libs for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    .line 3830
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3831
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3832
    return v13

    .line 3835
    :cond_5b0
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3836
    if-ltz v7, :cond_5c2

    .line 3837
    nop

    .line 3838
    move/from16 v23, v13

    invoke-static {v10, v7}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v12

    iput-wide v12, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_5c7

    .line 3840
    :cond_5c2
    move/from16 v23, v13

    int-to-long v12, v7

    iput-wide v12, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3842
    :goto_5c7
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3844
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3846
    move/from16 v13, v23

    const/16 v4, -0x6c

    goto/16 :goto_6b6

    .line 3813
    :cond_5d6
    move/from16 v23, v13

    .line 3814
    :goto_5d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad static-library declaration name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v23

    .line 3816
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3817
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3818
    return v23

    .line 3846
    :cond_5ff
    move/from16 v23, v13

    move/from16 v8, v17

    const/16 v4, -0x6c

    const-string/jumbo v7, "library"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_639

    .line 3847
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v3, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3852
    move/from16 v10, v23

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 3855
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3857
    if-eqz v7, :cond_633

    .line 3858
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3859
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_633

    .line 3860
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3865
    :cond_633
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3867
    const/4 v13, 0x0

    goto/16 :goto_6b6

    :cond_639
    const-string/jumbo v7, "uses-static-library"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64d

    .line 3868
    invoke-direct {v0, v2, v3, v14, v5}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64a

    .line 3869
    const/4 v10, 0x0

    return v10

    .line 3868
    :cond_64a
    const/4 v10, 0x0

    move v13, v10

    goto :goto_6b6

    .line 3872
    :cond_64d
    const/4 v10, 0x0

    const-string/jumbo v7, "uses-library"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_687

    .line 3873
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v3, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3878
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 3880
    const/4 v10, 0x1

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 3884
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3886
    if-eqz v7, :cond_682

    .line 3887
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3888
    if-eqz v12, :cond_67a

    .line 3889
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_682

    .line 3891
    :cond_67a
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3896
    :cond_682
    :goto_682
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3898
    const/4 v13, 0x0

    goto :goto_6b6

    :cond_687
    const-string/jumbo v7, "uses-package"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_695

    .line 3901
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v13, 0x0

    goto :goto_6b6

    .line 3902
    :cond_695
    const-string/jumbo v7, "profileable"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6bd

    .line 3903
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {v3, v14, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3905
    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_6b3

    .line 3907
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v7, 0x800000

    or-int/2addr v1, v7

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3909
    :cond_6b3
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3923
    :goto_6b6
    move-object v7, v2

    move/from16 v17, v8

    const/4 v10, -0x1

    const/4 v12, 0x1

    goto/16 :goto_3e6

    .line 3912
    :cond_6bd
    const/4 v13, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <application>: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " at "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3914
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3912
    const-string v7, "PackageParser"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3916
    goto :goto_6fd

    .line 3731
    :cond_6f4
    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-object v2, v7

    move/from16 v8, v17

    const/16 v4, -0x6c

    .line 3729
    :goto_6fd
    move-object v7, v2

    move/from16 v17, v8

    const/4 v10, -0x1

    const/4 v12, 0x1

    goto/16 :goto_3e6

    :cond_704
    move-object/from16 v5, p5

    move-object v2, v7

    .line 3925
    :goto_707
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71c

    .line 3928
    iget-boolean v1, v2, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v4, p4

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/content/pm/PackageParser;->generateAppDetailsHiddenActivity(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v1

    .line 3930
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3933
    :cond_71c
    if-eqz v16, :cond_728

    .line 3934
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3936
    :cond_728
    if-eqz v18, :cond_734

    .line 3937
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3939
    :cond_734
    if-eqz v22, :cond_740

    .line 3940
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/content/pm/PackageParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3944
    :cond_740
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3945
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3946
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V

    .line 3948
    invoke-static {v2}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_758

    .line 3949
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_760

    .line 3951
    :cond_758
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3954
    :goto_760
    const/16 v24, 0x1

    return v24
.end method

.method private greylist-max-o parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1127
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1128
    iget-boolean v2, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v2, :cond_e

    goto :goto_29

    .line 1129
    :cond_e
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a coreApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x6c

    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 1134
    :cond_29
    :goto_29
    nop

    .line 1136
    iget-boolean p1, v1, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz p1, :cond_4d

    iget-object p1, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 1138
    :try_start_36
    invoke-static {v1}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object p1

    .line 1139
    new-instance v2, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;

    invoke-direct {v2, v1, p1, p2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_3f
    .catch Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException; {:try_start_36 .. :try_end_3f} :catch_40

    .line 1142
    goto :goto_53

    .line 1140
    :catch_40
    move-exception p1

    .line 1141
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v0, -0x65

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 1144
    :cond_4d
    new-instance v2, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v2, v1, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    const/4 p1, 0x0

    .line 1148
    :goto_53
    :try_start_53
    invoke-interface {v2}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1149
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0, v4, v3, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1151
    if-eqz v3, :cond_af

    .line 1156
    iget-object v4, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 1157
    iget-object v4, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v4

    .line 1158
    iget-object v5, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v5, v3, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1159
    iget-object v5, v1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v5, v3, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1160
    iget-object v5, v1, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v5, v3, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1161
    new-array v5, v4, [I

    iput-object v5, v3, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1162
    new-array v5, v4, [I

    iput-object v5, v3, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1163
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1164
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v5, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1165
    iget-object p1, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1167
    nop

    :goto_94
    if-ge v0, v4, :cond_a0

    .line 1168
    invoke-interface {v2, v0}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object p1

    .line 1169
    invoke-direct {p0, v3, v0, p1, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 1173
    :cond_a0
    iget-object p1, v1, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1174
    iget-boolean p1, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_aa
    .catchall {:try_start_53 .. :try_end_aa} :catchall_ca

    .line 1175
    nop

    .line 1177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1175
    return-object v3

    .line 1152
    :cond_af
    :try_start_af
    new-instance p1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse base APK: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x64

    invoke-direct {p1, v0, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_ca
    .catchall {:try_start_af .. :try_end_ca} :catchall_ca

    .line 1177
    :catchall_ca
    move-exception p1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1178
    throw p1
.end method

.method static greylist-max-o parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 990
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 991
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17e

    .line 996
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_20

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 997
    aget-object v1, v1, v4

    invoke-static {v1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_20
    nop

    .line 1001
    nop

    .line 1003
    const-string/jumbo v2, "parseApkLite"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1004
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1005
    array-length v3, v1

    const/4 v7, 0x0

    move v8, v4

    move v10, v8

    move-object v9, v7

    :goto_35
    const/16 v11, -0x65

    if-ge v8, v3, :cond_e5

    aget-object v12, v1, v8

    .line 1006
    invoke-static {v12}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_e0

    .line 1007
    invoke-static {v12, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v13

    .line 1011
    if-nez v9, :cond_4c

    .line 1012
    iget-object v9, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 1013
    iget v10, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_5c

    .line 1015
    :cond_4c
    iget-object v14, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "; expected "

    const-string v4, " in "

    if-eqz v14, :cond_b5

    .line 1020
    iget v14, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v10, v14, :cond_8a

    .line 1028
    :goto_5c
    iget-object v4, v13, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v2, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_65

    goto :goto_e0

    .line 1029
    :cond_65
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defined more than once; most recent was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1021
    :cond_8a
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v13, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1016
    :cond_b5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1005
    :cond_e0
    :goto_e0
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_35

    .line 1035
    :cond_e5
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1037
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ApkLite;

    .line 1038
    if-eqz v0, :cond_163

    .line 1044
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1046
    nop

    .line 1047
    nop

    .line 1048
    nop

    .line 1049
    nop

    .line 1050
    nop

    .line 1051
    nop

    .line 1052
    nop

    .line 1053
    if-lez v1, :cond_147

    .line 1054
    new-array v3, v1, [Ljava/lang/String;

    .line 1055
    new-array v7, v1, [Z

    .line 1056
    new-array v4, v1, [Ljava/lang/String;

    .line 1057
    new-array v5, v1, [Ljava/lang/String;

    .line 1058
    new-array v6, v1, [Ljava/lang/String;

    .line 1059
    new-array v8, v1, [I

    .line 1061
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1062
    sget-object v9, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v3, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1064
    const/4 v9, 0x0

    :goto_119
    if-ge v9, v1, :cond_13a

    .line 1065
    aget-object v10, v3, v9

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$ApkLite;

    .line 1066
    iget-object v11, v10, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v11, v4, v9

    .line 1067
    iget-boolean v11, v10, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v11, v7, v9

    .line 1068
    iget-object v11, v10, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v11, v5, v9

    .line 1069
    iget-object v11, v10, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v11, v6, v9

    .line 1070
    iget v10, v10, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v10, v8, v9

    .line 1064
    add-int/lit8 v9, v9, 0x1

    goto :goto_119

    :cond_13a
    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v21, v7

    move-object/from16 v25, v8

    goto :goto_153

    .line 1053
    :cond_147
    move-object/from16 v20, v7

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    .line 1074
    :goto_153
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 1075
    new-instance v16, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v1, v0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v25}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v16

    .line 1039
    :cond_163
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing base APK in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 992
    :cond_17e
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x64

    const-string v2, "No packages found in split"

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3294
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3297
    iget-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v1, :cond_21

    .line 3298
    new-instance v2, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3305
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string p4, "<instrumentation>"

    iput-object p4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    goto :goto_23

    .line 3297
    :cond_21
    move-object v3, p1

    move-object v4, p4

    .line 3308
    :goto_23
    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3310
    new-instance v8, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object p1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance p4, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p4}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v8, p1, p4}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 3312
    const/4 p1, 0x0

    aget-object p4, v4, p1

    const/16 v1, -0x6c

    const/4 v2, 0x0

    if-eqz p4, :cond_41

    .line 3313
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3314
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3315
    return-object v2

    .line 3321
    :cond_41
    const/4 p4, 0x3

    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3323
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_4f

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    goto :goto_50

    :cond_4f
    move-object p4, v2

    :goto_50
    iput-object p4, v5, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3325
    const/16 p4, 0x9

    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p4

    .line 3327
    iget-object v5, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz p4, :cond_61

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    goto :goto_62

    :cond_61
    move-object p4, v2

    :goto_62
    iput-object p4, v5, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3329
    iget-object p4, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p4, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3333
    iget-object p4, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v5, 0x5

    invoke-virtual {v0, v5, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p4, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3337
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3339
    iget-object p4, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object p4, p4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez p4, :cond_86

    .line 3340
    const-string p2, "<instrumentation> does not specify targetPackage"

    aput-object p2, v4, p1

    .line 3341
    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3342
    return-object v2

    .line 3345
    :cond_86
    const-string v7, "<instrumentation>"

    move-object v5, p2

    move-object v6, p3

    move-object v9, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 3347
    iput v1, v4, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3348
    return-object v2

    .line 3351
    :cond_95
    iget-object p1, v3, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3353
    return-object v8
.end method

.method private greylist-max-o parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5724
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 5727
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5729
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5731
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 5733
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5735
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 5737
    if-eqz v7, :cond_2f

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v2, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v8, :cond_2f

    .line 5738
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5741
    :cond_2f
    sget-boolean v7, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v7, :cond_39

    const/4 v7, 0x7

    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_3a

    .line 5742
    :cond_39
    move v7, v5

    .line 5743
    :goto_3a
    const/4 v8, 0x1

    if-eqz v7, :cond_40

    .line 5744
    iput v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_46

    .line 5746
    :cond_40
    invoke-virtual {v3, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v2, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5750
    :goto_46
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v2, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5753
    const/4 v9, 0x5

    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v2, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5756
    const/4 v10, 0x6

    if-eqz p4, :cond_5e

    .line 5757
    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5762
    :cond_5e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 5764
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 5766
    :goto_65
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    if-eq v11, v8, :cond_1a9

    if-ne v11, v6, :cond_73

    .line 5767
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_1a9

    .line 5768
    :cond_73
    if-eq v11, v6, :cond_1a4

    if-ne v11, v7, :cond_78

    .line 5769
    goto :goto_65

    .line 5772
    :cond_78
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 5773
    const-string v12, "action"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, ""

    const-string v14, "No value supplied for <android:name>"

    const-string/jumbo v15, "name"

    const-string v10, "http://schemas.android.com/apk/res/android"

    if-eqz v12, :cond_a4

    .line 5774
    invoke-interface {v1, v10, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5776
    if-eqz v10, :cond_a1

    if-ne v10, v13, :cond_96

    goto :goto_a1

    .line 5780
    :cond_96
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5782
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5783
    const/4 v11, 0x6

    move-object/from16 v12, p0

    goto/16 :goto_1a1

    .line 5777
    :cond_a1
    :goto_a1
    aput-object v14, p6, v5

    .line 5778
    return v5

    .line 5783
    :cond_a4
    const-string v12, "category"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 5784
    invoke-interface {v1, v10, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5786
    if-eqz v10, :cond_c0

    if-ne v10, v13, :cond_b5

    goto :goto_c0

    .line 5790
    :cond_b5
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5792
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5794
    const/4 v11, 0x6

    move-object/from16 v12, p0

    goto/16 :goto_1a1

    .line 5787
    :cond_c0
    :goto_c0
    aput-object v14, p6, v5

    .line 5788
    return v5

    .line 5794
    :cond_c3
    const-string v10, "data"

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_165

    .line 5795
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 5798
    invoke-virtual {v10, v5, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5800
    if-eqz v11, :cond_e6

    .line 5802
    :try_start_d7
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_da
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_d7 .. :try_end_da} :catch_db

    .line 5807
    goto :goto_e6

    .line 5803
    :catch_db
    move-exception v0

    .line 5804
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p6, v5

    .line 5805
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 5806
    return v5

    .line 5810
    :cond_e6
    :goto_e6
    invoke-virtual {v10, v8, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5812
    if-eqz v11, :cond_ef

    .line 5813
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5816
    :cond_ef
    const/16 v11, 0x8

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5818
    if-eqz v11, :cond_fa

    .line 5819
    invoke-virtual {v2, v11, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5822
    :cond_fa
    const/16 v11, 0x9

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5824
    if-eqz v11, :cond_105

    .line 5825
    invoke-virtual {v2, v11, v8}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5828
    :cond_105
    const/16 v11, 0xa

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5830
    if-eqz v11, :cond_118

    .line 5831
    if-nez p3, :cond_115

    .line 5832
    const-string/jumbo v0, "sspPattern not allowed here; ssp must be literal"

    aput-object v0, p6, v5

    .line 5833
    return v5

    .line 5835
    :cond_115
    invoke-virtual {v2, v11, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5838
    :cond_118
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5840
    invoke-virtual {v10, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5842
    if-eqz v11, :cond_125

    .line 5843
    invoke-virtual {v2, v11, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5846
    :cond_125
    invoke-virtual {v10, v7, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5848
    if-eqz v11, :cond_12e

    .line 5849
    invoke-virtual {v2, v11, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5852
    :cond_12e
    invoke-virtual {v10, v9, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5854
    if-eqz v11, :cond_137

    .line 5855
    invoke-virtual {v2, v11, v8}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5858
    :cond_137
    const/4 v11, 0x6

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5860
    if-eqz v12, :cond_149

    .line 5861
    if-nez p3, :cond_146

    .line 5862
    const-string/jumbo v0, "pathPattern not allowed here; path must be literal"

    aput-object v0, p6, v5

    .line 5863
    return v5

    .line 5865
    :cond_146
    invoke-virtual {v2, v12, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5868
    :cond_149
    const/16 v12, 0xe

    invoke-virtual {v10, v12, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 5870
    if-eqz v12, :cond_15c

    .line 5871
    if-nez p3, :cond_159

    .line 5872
    const-string/jumbo v0, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v0, p6, v5

    .line 5873
    return v5

    .line 5875
    :cond_159
    invoke-virtual {v2, v12, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5878
    :cond_15c
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 5879
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5880
    move-object/from16 v12, p0

    goto :goto_1a1

    .line 5881
    :cond_165
    const/4 v11, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <intent-filter>: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5882
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " at "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, p0

    iget-object v13, v12, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 5883
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5881
    const-string v13, "PackageParser"

    invoke-static {v13, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5889
    :goto_1a1
    move v10, v11

    goto/16 :goto_65

    .line 5768
    :cond_1a4
    move-object/from16 v12, p0

    move v11, v10

    goto/16 :goto_65

    .line 5891
    :cond_1a9
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 5908
    return v8
.end method

.method private greylist-max-o parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2947
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 2948
    nop

    .line 2950
    nop

    .line 2951
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 2952
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2953
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 2954
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 2955
    :cond_24
    :goto_24
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x1

    const-string v15, "PackageParser"

    const/16 v9, -0x6c

    if-eq v13, v14, :cond_1e3

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3b

    .line 2956
    const/16 v17, 0x0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_1e3

    goto :goto_3d

    .line 2955
    :cond_3b
    const/16 v17, 0x0

    .line 2957
    :goto_3d
    if-ne v13, v14, :cond_49

    .line 2958
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-ne v9, v11, :cond_24

    .line 2959
    nop

    .line 2960
    const/4 v11, -0x1

    const/4 v12, 0x0

    goto :goto_24

    .line 2964
    :cond_49
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2965
    const-string/jumbo v13, "key-set"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "Improperly nested \'key-set\' tag at "

    if-eqz v13, :cond_93

    .line 2966
    if-eqz v12, :cond_74

    .line 2967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2968
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v17

    .line 2969
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2970
    return v17

    .line 2972
    :cond_74
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2974
    move/from16 v10, v17

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2976
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    nop

    .line 2978
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 2979
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2980
    move-object v12, v10

    goto/16 :goto_1a8

    :cond_93
    const-string/jumbo v13, "public-key"

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 2981
    if-nez v12, :cond_b9

    .line 2982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2983
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, p4, v10

    .line 2984
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2985
    return v10

    .line 2987
    :cond_b9
    const/4 v10, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2989
    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 2991
    const/4 v10, 0x1

    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2993
    if-nez v10, :cond_fc

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_fc

    .line 2994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must define a public-key value on first use at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2995
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, p4, v17

    .line 2996
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2997
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2998
    return v17

    .line 2999
    :cond_fc
    if-eqz v10, :cond_17a

    .line 3000
    invoke-static {v10}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v10

    .line 3001
    if-nez v10, :cond_139

    .line 3002
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3003
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " key-set "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3002
    invoke-static {v15, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3006
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3007
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3008
    goto/16 :goto_24

    .line 3010
    :cond_139
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_177

    .line 3011
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/PublicKey;

    invoke-interface {v15, v10}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14c

    goto :goto_177

    .line 3016
    :cond_14c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of \'public-key\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conflicts with previously defined value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3018
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, p4, v17

    .line 3019
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3020
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3021
    return v17

    .line 3014
    :cond_177
    :goto_177
    invoke-virtual {v5, v14, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    :cond_17a
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    invoke-virtual {v9, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3025
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3026
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3027
    goto :goto_1a8

    :cond_18a
    const-string/jumbo v9, "upgrade-key-set"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1aa

    .line 3028
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3030
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3032
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3033
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3034
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3035
    nop

    .line 3048
    :goto_1a8
    goto/16 :goto_24

    .line 3042
    :cond_1aa
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <key-sets>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3044
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3042
    invoke-static {v15, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3046
    goto/16 :goto_24

    .line 3049
    :cond_1e3
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3050
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "Package"

    if-eqz v2, :cond_213

    .line 3051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, p4, v17

    .line 3053
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3054
    return v17

    .line 3056
    :cond_213
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3057
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_222
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3058
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3059
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    const-string v11, " AndroidManifext.xml \'key-set\' "

    if-nez v10, :cond_267

    .line 3060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    goto :goto_222

    .line 3064
    :cond_267
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_292

    .line 3065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    goto :goto_222

    .line 3070
    :cond_292
    iget-object v10, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v10, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3072
    iget-object v11, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3073
    goto :goto_2a6

    .line 3074
    :cond_2c4
    goto/16 :goto_222

    .line 3075
    :cond_2c6
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2d7

    .line 3076
    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3083
    const/16 v16, 0x1

    return v16

    .line 3078
    :cond_2d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, p4, v17

    .line 3080
    iput v9, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3081
    return v17
.end method

.method private greylist-max-o parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .registers 20

    .line 4755
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4757
    nop

    .line 4758
    nop

    .line 4759
    nop

    .line 4760
    nop

    .line 4761
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    .line 4763
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x6

    if-ne v2, v7, :cond_22

    .line 4764
    invoke-virtual {v0, v1, v4, v4, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    move v10, v1

    move v9, v5

    goto :goto_2d

    .line 4767
    :cond_22
    if-ne v2, v3, :cond_2b

    .line 4768
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v9, v1

    move v10, v6

    goto :goto_2d

    .line 4767
    :cond_2b
    move v9, v5

    move v10, v6

    .line 4772
    :goto_2d
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    .line 4774
    if-ne v2, v7, :cond_3b

    .line 4775
    invoke-virtual {v0, v1, v4, v4, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    move v11, v5

    move v12, v6

    goto :goto_46

    .line 4778
    :cond_3b
    if-ne v2, v3, :cond_44

    .line 4779
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v11, v1

    move v12, v6

    goto :goto_46

    .line 4778
    :cond_44
    move v11, v5

    move v12, v6

    .line 4783
    :goto_46
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 4786
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 4789
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 4792
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4793
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct/range {v8 .. v15}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v8, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4795
    return-void
.end method

.method private greylist-max-o parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5563
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5566
    if-nez p3, :cond_d

    .line 5567
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 5570
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5572
    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 5573
    const-string p2, "<meta-data> requires an android:name attribute"

    aput-object p2, p4, v0

    .line 5574
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5575
    return-object v2

    .line 5578
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 5580
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 5582
    if-eqz v3, :cond_33

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_33

    .line 5584
    iget p4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b7

    .line 5586
    :cond_33
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5589
    if-eqz v4, :cond_b2

    .line 5590
    iget p4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne p4, v5, :cond_4d

    .line 5591
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p4

    .line 5592
    if-eqz p4, :cond_49

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_49
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5593
    goto :goto_b7

    :cond_4d
    iget p4, v4, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne p4, v2, :cond_5c

    .line 5594
    iget p4, v4, Landroid/util/TypedValue;->data:I

    if-eqz p4, :cond_58

    move v0, v3

    :cond_58
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b7

    .line 5595
    :cond_5c
    iget p4, v4, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-lt p4, v0, :cond_6e

    iget p4, v4, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x1f

    if-gt p4, v0, :cond_6e

    .line 5597
    iget p4, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b7

    .line 5598
    :cond_6e
    iget p4, v4, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x4

    if-ne p4, v0, :cond_7b

    .line 5599
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result p4

    invoke-virtual {p3, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b7

    .line 5602
    :cond_7b
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 5603
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " at "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 5604
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 5602
    const-string v0, "PackageParser"

    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 5611
    :cond_b2
    const-string p3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object p3, p4, v0

    .line 5612
    move-object p3, v2

    .line 5616
    :goto_b7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5618
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5620
    return-object p3
.end method

.method private static greylist-max-o parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 980
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 981
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v6

    .line 982
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 983
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 984
    new-instance v3, Landroid/content/pm/PackageParser$PackageLite;

    iget-object v5, v6, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v3
.end method

.method private static greylist-max-o parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .registers 13

    .line 4160
    const/4 v0, 0x0

    if-nez p4, :cond_19

    .line 4161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not contain any attributes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 4162
    return v0

    .line 4165
    :cond_19
    invoke-virtual {p4, p6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p6

    .line 4166
    if-nez p6, :cond_37

    .line 4167
    if-eqz p5, :cond_62

    .line 4168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not specify android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 4169
    return v0

    .line 4172
    :cond_37
    iget-object p5, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4173
    invoke-static {p5, p6, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 4174
    sget-object p6, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p6, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5d

    .line 4175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " invalid android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    .line 4176
    return v0

    .line 4178
    :cond_5d
    iput-object p5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4179
    if-nez p5, :cond_62

    .line 4180
    return v0

    .line 4184
    :cond_62
    sget-boolean p2, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz p2, :cond_6b

    invoke-virtual {p4, p9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    goto :goto_6c

    :cond_6b
    move p2, v0

    .line 4185
    :goto_6c
    const/4 p3, 0x0

    if-eqz p2, :cond_74

    .line 4186
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4187
    iput-object p3, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_7e

    .line 4189
    :cond_74
    invoke-virtual {p4, p8, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4190
    if-eqz p2, :cond_7e

    .line 4191
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4192
    iput-object p3, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4196
    :cond_7e
    :goto_7e
    invoke-virtual {p4, p10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4197
    if-eqz p2, :cond_86

    .line 4198
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4201
    :cond_86
    invoke-virtual {p4, p11, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4202
    if-eqz p2, :cond_8e

    .line 4203
    iput p2, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4206
    :cond_8e
    invoke-virtual {p4, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 4207
    if-eqz p2, :cond_a0

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    iput p3, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez p3, :cond_a0

    .line 4208
    invoke-virtual {p2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4211
    :cond_a0
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4213
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 972
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object p0

    return-object p0

    .line 974
    :cond_b
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .registers 6
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

    .line 1584
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    if-eq v0, v2, :cond_b

    goto :goto_0

    .line 1588
    :cond_b
    const/16 v3, -0x6c

    if-ne v0, v1, :cond_97

    .line 1592
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "manifest"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8f

    .line 1597
    const-string/jumbo p0, "package"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1598
    const-string v1, "android"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, -0x6a

    if-nez v1, :cond_4e

    .line 1599
    invoke-static {p0, v2, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1600
    if-nez v1, :cond_35

    goto :goto_4e

    .line 1601
    :cond_35
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid manifest package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1606
    :cond_4e
    :goto_4e
    const-string/jumbo v1, "split"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1607
    if-eqz p1, :cond_7f

    .line 1608
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5e

    .line 1609
    goto :goto_80

    .line 1611
    :cond_5e
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1612
    if-nez v0, :cond_66

    goto :goto_7f

    .line 1613
    :cond_66
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid manifest split: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1619
    :cond_7f
    :goto_7f
    move-object v0, p1

    :goto_80
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 1620
    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1619
    :cond_8a
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1593
    :cond_8f
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    const-string p1, "No <manifest> tag"

    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1589
    :cond_97
    new-instance p0, Landroid/content/pm/PackageParser$PackageParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, v3, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3147
    nop

    .line 3148
    const/16 v2, 0xc

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const-string v15, "android"

    if-eqz v3, :cond_40

    .line 3150
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3151
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 3155
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " defines a background permission. Only the \'android\' package can do that."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageParser"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    :cond_40
    const/4 v2, 0x0

    :goto_41
    new-instance v3, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v3, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 3161
    iget-object v2, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x7

    const/16 v12, 0x9

    const-string v4, "<permission>"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0xa

    move-object v13, v3

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    const/16 v7, -0x6c

    if-nez v2, :cond_65

    .line 3169
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3170
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3171
    return v8

    .line 3176
    :cond_65
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3178
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v1, :cond_80

    .line 3179
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3182
    :cond_80
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x5

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3186
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0xd

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3189
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x3

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3193
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v3, 0x8

    invoke-virtual {v5, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3197
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_e5

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    goto :goto_e5

    .line 3202
    :cond_b9
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_f5

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_c8

    goto :goto_f5

    .line 3204
    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission cannot be both soft and hard restricted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3198
    :cond_e5
    :goto_e5
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3199
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3209
    :cond_f5
    :goto_f5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3211
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_106

    .line 3212
    const-string v1, "<permission> does not specify protectionLevel"

    aput-object v1, p4, v8

    .line 3213
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3214
    return v8

    .line 3217
    :cond_106
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3219
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    if-eqz v1, :cond_13a

    .line 3220
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_13a

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_13a

    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13a

    .line 3224
    const-string v1, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v1, p4, v8

    .line 3226
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3227
    return v8

    .line 3231
    :cond_13a
    const-string v3, "<permission>"

    move-object/from16 v1, p2

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v2, v14

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14b

    .line 3232
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3233
    return v8

    .line 3236
    :cond_14b
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3089
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3092
    const/16 v2, 0xc

    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3094
    const/16 v3, 0x9

    invoke-virtual {v5, v3, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3097
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 3101
    new-instance v6, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;III)V

    .line 3104
    iget-object v2, v6, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v11, 0x5

    const/4 v12, 0x7

    const-string v4, "<permission-group>"

    move-object v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    move/from16 p2, v15

    move-object v15, v3

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    const/16 v7, -0x6c

    if-nez v2, :cond_47

    .line 3112
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3113
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3114
    return p2

    .line 3117
    :cond_47
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x4

    move/from16 v8, p2

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3120
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v2, 0xb

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3122
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x6

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3124
    iget-object v1, v15, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v2, 0x3

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3127
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3129
    const-string v3, "<permission-group>"

    move-object/from16 v5, p5

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 3131
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3132
    return v8

    .line 3135
    :cond_81
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v13, v1, v2}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 3246
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3249
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v11, 0x3

    const/4 v12, 0x4

    const-string v4, "<permission-tree>"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    move-object v6, v1

    const/16 v7, -0x6c

    if-nez v2, :cond_33

    .line 3257
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3258
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3259
    return v8

    .line 3262
    :cond_33
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3264
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3265
    if-lez v1, :cond_4c

    .line 3266
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3268
    :cond_4c
    if-gez v1, :cond_6a

    .line 3269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<permission-tree> name has less than three segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v8

    .line 3271
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3272
    return v8

    .line 3275
    :cond_6a
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3276
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3277
    iget-object v1, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3278
    const/4 v9, 0x1

    iput-boolean v9, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3280
    const-string v3, "<permission-tree>"

    move-object/from16 v5, p4

    move-object v4, v13

    move-object v1, v14

    move-object v2, v15

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 3282
    iput v7, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3283
    return v8

    .line 3286
    :cond_89
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3288
    return v9
.end method

.method private greylist-max-o parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5027
    move-object/from16 v13, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual {v14, v15, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5030
    iget-object v1, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v1, :cond_36

    .line 5031
    move-object v1, v0

    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v2, p0

    iget-object v9, v2, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v11, 0xe

    const/4 v12, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/16 v7, 0xf

    const/16 v8, 0x11

    const/16 v10, 0x8

    move-object/from16 v2, p5

    move-object v14, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5042
    iget-object v0, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v2, "<provider>"

    iput-object v2, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_39

    .line 5030
    :cond_36
    move-object/from16 v1, p1

    move-object v14, v0

    .line 5045
    :goto_39
    iget-object v0, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v14, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5046
    iget-object v0, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v2, p4

    iput v2, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5048
    new-instance v5, Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v13, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v5, v0, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 5049
    const/4 v0, 0x0

    aget-object v2, p5, v0

    const/4 v7, 0x0

    if-eqz v2, :cond_59

    .line 5050
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5051
    return-object v7

    .line 5054
    :cond_59
    nop

    .line 5056
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-ge v2, v3, :cond_65

    .line 5060
    move v2, v4

    goto :goto_66

    .line 5056
    :cond_65
    move v2, v0

    .line 5063
    :goto_66
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x7

    invoke-virtual {v14, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 5067
    const/16 v2, 0xa

    invoke-virtual {v14, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5070
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0xb

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 5074
    const/4 v3, 0x3

    invoke-virtual {v14, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 5076
    const/4 v6, 0x4

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 5078
    if-nez v6, :cond_8c

    .line 5079
    move-object v6, v3

    .line 5081
    :cond_8c
    if-nez v6, :cond_97

    .line 5082
    iget-object v6, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_ab

    .line 5084
    :cond_97
    iget-object v8, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5085
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a8

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_a9

    :cond_a8
    move-object v6, v7

    :goto_a9
    iput-object v6, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 5087
    :goto_ab
    const/4 v6, 0x5

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 5089
    if-nez v6, :cond_b3

    .line 5090
    goto :goto_b4

    .line 5089
    :cond_b3
    move-object v3, v6

    .line 5092
    :goto_b4
    if-nez v3, :cond_bf

    .line 5093
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_d3

    .line 5095
    :cond_bf
    iget-object v6, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5096
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d0

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_d1

    :cond_d0
    move-object v3, v7

    :goto_d1
    iput-object v3, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 5099
    :goto_d3
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0xd

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5103
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0x16

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 5107
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0x9

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5111
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0xc

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5115
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5116
    const/16 v6, 0x15

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 5118
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v0, v3, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5120
    const/16 v3, 0x10

    invoke-virtual {v14, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 5123
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v6, v3, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v6, v8

    iput v6, v3, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5126
    :cond_11a
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v6, 0x12

    invoke-virtual {v14, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v3, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    .line 5129
    iget-object v3, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v3, v3, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v3, :cond_132

    .line 5130
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5134
    :cond_132
    nop

    .line 5135
    const/16 v3, 0x14

    invoke-virtual {v14, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 5136
    if-eqz v3, :cond_146

    .line 5137
    iget-object v6, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v8, v6, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, v6, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5138
    iput-boolean v4, v1, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5141
    :cond_146
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5143
    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15e

    .line 5147
    iget-object v4, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v1, :cond_15e

    .line 5148
    const-string v1, "Heavy-weight applications can not have providers in main process"

    aput-object v1, p5, v0

    .line 5149
    return-object v7

    .line 5153
    :cond_15e
    if-nez v2, :cond_165

    .line 5154
    const-string v1, "<provider> does not include authorities attribute"

    aput-object v1, p5, v0

    .line 5155
    return-object v7

    .line 5157
    :cond_165
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_170

    .line 5158
    const-string v1, "<provider> has empty authorities attribute"

    aput-object v1, p5, v0

    .line 5159
    return-object v7

    .line 5161
    :cond_170
    iget-object v0, v5, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5163
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    move v4, v3

    move-object v3, v15

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_187

    .line 5165
    return-object v7

    .line 5168
    :cond_187
    return-object v5
.end method

.method private greylist-max-o parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5174
    move-object/from16 v7, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 5176
    :cond_6
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_28a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 5178
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_28a

    .line 5179
    :cond_16
    if-eq v0, v1, :cond_280

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    .line 5180
    goto :goto_6

    .line 5183
    :cond_1c
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "intent-filter"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_62

    .line 5184
    new-instance v5, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v5, v7}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 5185
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    move-object v4, v1

    move-object v1, v5

    move-object v5, v2

    if-nez v3, :cond_42

    .line 5187
    return v10

    .line 5189
    :cond_42
    if-eqz p3, :cond_50

    .line 5190
    invoke-virtual {v1, v9}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5191
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5193
    :cond_50
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v2

    iget v3, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5194
    iget-object v2, v7, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5196
    goto :goto_6

    :cond_62
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 5197
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v6, p5

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_6

    .line 5199
    return v10

    .line 5202
    :cond_82
    move-object/from16 v6, p5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v11, "grant-uri-permission"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x2

    const-string v13, " "

    const-string v14, " at "

    const-string v15, "PackageParser"

    if-eqz v3, :cond_12d

    .line 5203
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5206
    nop

    .line 5208
    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5210
    if-eqz v2, :cond_aa

    .line 5211
    new-instance v11, Landroid/os/PatternMatcher;

    invoke-direct {v11, v2, v10}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    goto :goto_ab

    .line 5210
    :cond_aa
    const/4 v11, 0x0

    .line 5214
    :goto_ab
    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5216
    if-eqz v2, :cond_b6

    .line 5217
    new-instance v11, Landroid/os/PatternMatcher;

    invoke-direct {v11, v2, v9}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 5220
    :cond_b6
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5222
    if-eqz v2, :cond_c1

    .line 5223
    new-instance v11, Landroid/os/PatternMatcher;

    invoke-direct {v11, v2, v12}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 5226
    :cond_c1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5228
    if-eqz v11, :cond_f8

    .line 5229
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_d9

    .line 5230
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v2, v9, [Landroid/os/PatternMatcher;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5231
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v11, v1, v10

    goto :goto_ef

    .line 5233
    :cond_d9
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v1, v1

    .line 5234
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Landroid/os/PatternMatcher;

    .line 5235
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v3, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5236
    aput-object v11, v2, v1

    .line 5237
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5239
    :goto_ef
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v9, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5252
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5254
    goto/16 :goto_6

    .line 5242
    :cond_f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5243
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5244
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5242
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5246
    goto/16 :goto_6

    .line 5254
    :cond_12d
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "path-permission"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    .line 5255
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 5258
    nop

    .line 5260
    invoke-virtual {v3, v10, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 5262
    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 5264
    if-nez v17, :cond_14d

    .line 5265
    move-object/from16 v17, v11

    .line 5267
    :cond_14d
    invoke-virtual {v3, v12, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 5269
    if-nez v18, :cond_154

    .line 5270
    goto :goto_156

    .line 5269
    :cond_154
    move-object/from16 v11, v18

    .line 5273
    :goto_156
    nop

    .line 5274
    if-eqz v17, :cond_162

    .line 5275
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    .line 5276
    move-object/from16 v12, v17

    move/from16 v17, v9

    goto :goto_166

    .line 5274
    :cond_162
    move-object/from16 v12, v17

    move/from16 v17, v10

    .line 5278
    :goto_166
    if-eqz v11, :cond_16e

    .line 5279
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 5280
    move/from16 v17, v9

    .line 5283
    :cond_16e
    if-nez v17, :cond_1a5

    .line 5285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5286
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5287
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5285
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5289
    goto/16 :goto_6

    .line 5296
    :cond_1a5
    invoke-virtual {v3, v1, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 5298
    if-eqz v9, :cond_1b3

    .line 5299
    new-instance v1, Landroid/content/pm/PathPermission;

    invoke-direct {v1, v9, v10, v12, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    goto :goto_1b5

    .line 5298
    :cond_1b3
    const/16 v16, 0x0

    .line 5303
    :goto_1b5
    invoke-virtual {v3, v2, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5305
    if-eqz v1, :cond_1c3

    .line 5306
    new-instance v2, Landroid/content/pm/PathPermission;

    const/4 v9, 0x1

    invoke-direct {v2, v1, v9, v12, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    .line 5310
    :cond_1c3
    const/4 v1, 0x5

    invoke-virtual {v3, v1, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5312
    if-eqz v1, :cond_1d2

    .line 5313
    new-instance v2, Landroid/content/pm/PathPermission;

    const/4 v9, 0x2

    invoke-direct {v2, v1, v9, v12, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    .line 5317
    :cond_1d2
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5319
    if-eqz v1, :cond_1e1

    .line 5320
    new-instance v2, Landroid/content/pm/PathPermission;

    const/4 v9, 0x3

    invoke-direct {v2, v1, v9, v12, v11}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    .line 5324
    :cond_1e1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 5326
    if-eqz v16, :cond_216

    .line 5327
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v1, :cond_1fa

    .line 5328
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v9, 0x1

    new-array v2, v9, [Landroid/content/pm/PathPermission;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5329
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aput-object v16, v1, v10

    goto :goto_211

    .line 5331
    :cond_1fa
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v1, v1

    .line 5332
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Landroid/content/pm/PathPermission;

    .line 5333
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-static {v3, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5334
    aput-object v16, v2, v1

    .line 5335
    iget-object v1, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5336
    nop

    .line 5348
    :goto_211
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5350
    goto/16 :goto_6

    .line 5339
    :cond_216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5340
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5341
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5339
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5343
    goto/16 :goto_6

    .line 5352
    :cond_24b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <provider>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5353
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5354
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5352
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5356
    goto/16 :goto_6

    .line 5179
    :cond_280
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    goto/16 :goto_6

    .line 5363
    :cond_28a
    const/16 v17, 0x1

    return v17
.end method

.method public static final greylist-max-o parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    .line 5656
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5657
    const-string p0, "Could not parse null public key"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    return-object v0

    .line 5662
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/PackageParser;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_15

    return-object p0

    .line 5663
    :catch_15
    move-exception p0

    .line 5664
    const-string p0, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    return-object v0
.end method

.method public static final blacklist parsePublicKey([B)Ljava/security/PublicKey;
    .registers 4

    .line 5670
    const/4 v0, 0x0

    const-string v1, "PackageParser"

    if-nez p0, :cond_b

    .line 5671
    const-string p0, "Could not parse null public key"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5672
    return-object v0

    .line 5677
    :cond_b
    :try_start_b
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_4e

    .line 5681
    nop

    .line 5685
    :try_start_11
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 5686
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object p0

    .line 5689
    :catch_1c
    move-exception p0

    goto :goto_25

    .line 5687
    :catch_1e
    move-exception p0

    .line 5688
    const-string p0, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    nop

    .line 5695
    :goto_25
    :try_start_25
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 5696
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2f} :catch_32
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_25 .. :try_end_2f} :catch_30

    return-object p0

    .line 5699
    :catch_30
    move-exception p0

    goto :goto_39

    .line 5697
    :catch_32
    move-exception p0

    .line 5698
    const-string p0, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    nop

    .line 5705
    :goto_39
    :try_start_39
    const-string p0, "DSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 5706
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_43} :catch_46
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_39 .. :try_end_43} :catch_44

    return-object p0

    .line 5709
    :catch_44
    move-exception p0

    goto :goto_4d

    .line 5707
    :catch_46
    move-exception p0

    .line 5708
    const-string p0, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5711
    nop

    .line 5714
    :goto_4d
    return-object v0

    .line 5678
    :catch_4e
    move-exception p0

    .line 5679
    const-string p0, "Could not parse verifier public key; invalid Base64"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5680
    return-object v0
.end method

.method private greylist-max-o parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5370
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p6

    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 5373
    iget-object v3, v1, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v3, :cond_35

    .line 5374
    new-instance v1, Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v13, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/16 v8, 0x8

    const/16 v9, 0xc

    const/4 v11, 0x6

    move-object/from16 v3, p5

    move-object/from16 v0, p6

    move-object v14, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v1, v0, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5385
    iget-object v1, v0, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v3, "<service>"

    iput-object v3, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_39

    .line 5373
    :cond_35
    move-object v0, v1

    move-object v14, v2

    move-object/from16 v2, p1

    .line 5388
    :goto_39
    iget-object v1, v0, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v14, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5389
    iget-object v1, v0, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v3, p4

    iput v3, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5391
    new-instance v7, Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v7, v0, v1}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 5392
    const/4 v8, 0x0

    aget-object v0, p5, v8

    const/4 v9, 0x0

    if-eqz v0, :cond_59

    .line 5393
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5394
    return-object v9

    .line 5397
    :cond_59
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 5399
    if-eqz v10, :cond_68

    .line 5400
    iget-object v1, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5404
    :cond_68
    const/4 v11, 0x3

    invoke-virtual {v14, v11, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5406
    if-nez v0, :cond_78

    .line 5407
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_8c

    .line 5409
    :cond_78
    iget-object v1, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    :cond_89
    move-object v0, v9

    :goto_8a
    iput-object v0, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5412
    :goto_8c
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 5413
    const/16 v1, 0x11

    invoke-virtual {v14, v1, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5415
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v1, 0x13

    invoke-virtual {v14, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    .line 5419
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v8, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5420
    const/16 v0, 0x9

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_b4

    .line 5423
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v1, v12

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5425
    :cond_b4
    const/16 v0, 0xa

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 5428
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5430
    :cond_c4
    const/16 v0, 0xe

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_d4

    .line 5433
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v1, v13

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5435
    :cond_d4
    const/16 v0, 0x12

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 5438
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5440
    :cond_e4
    const/16 v0, 0xb

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 5443
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5446
    :cond_f5
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v1, 0xd

    invoke-virtual {v14, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    .line 5449
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_10d

    .line 5450
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5454
    :cond_10d
    nop

    .line 5455
    const/16 v0, 0x10

    invoke-virtual {v14, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 5456
    const/high16 v17, 0x100000

    if-eqz v16, :cond_122

    .line 5457
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v1, v1, v17

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5458
    iput-boolean v12, v2, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5461
    :cond_122
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 5463
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13a

    .line 5467
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v1, :cond_13a

    .line 5468
    const-string v0, "Heavy-weight applications can not have services in main process"

    aput-object v0, p5, v8

    .line 5469
    return-object v9

    .line 5473
    :cond_13a
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 5475
    :cond_13e
    :goto_13e
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v12, :cond_1f2

    if-ne v0, v11, :cond_14c

    .line 5477
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v14, :cond_1f2

    .line 5478
    :cond_14c
    if-eq v0, v11, :cond_1ea

    if-ne v0, v13, :cond_151

    .line 5479
    goto :goto_13e

    .line 5482
    :cond_151
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 5483
    new-instance v5, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v5, v7}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 5484
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p5

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_172

    .line 5486
    return-object v9

    .line 5488
    :cond_172
    if-eqz v16, :cond_17f

    .line 5489
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5490
    iget-object v2, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int v3, v3, v17

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5492
    :cond_17f
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v2

    iget v3, v7, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5493
    iget-object v2, v7, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5494
    goto :goto_13e

    :cond_191
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p5

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 5495
    iget-object v2, v7, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v15, v2, v6}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_13e

    .line 5497
    return-object v9

    .line 5501
    :cond_1af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <service>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5502
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5503
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5501
    const-string v3, "PackageParser"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5504
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5505
    goto/16 :goto_13e

    .line 5478
    :cond_1ea
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p5

    goto/16 :goto_13e

    .line 5513
    :cond_1f2
    if-nez v10, :cond_201

    .line 5514
    iget-object v0, v7, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v7, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1ff

    move v8, v12

    :cond_1ff
    iput-boolean v8, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5517
    :cond_201
    return-object v7
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1310
    nop

    .line 1313
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1319
    nop

    .line 1321
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 1322
    :goto_e
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b8

    const/4 v6, 0x3

    if-ne v4, v6, :cond_24

    .line 1323
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_1f

    goto :goto_24

    :cond_1f
    move-object p2, p1

    move-object v4, p6

    move-object p1, p0

    goto/16 :goto_bb

    .line 1324
    :cond_24
    :goto_24
    if-eq v4, v6, :cond_a9

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 1325
    move-object v4, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b0

    .line 1328
    :cond_32
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1329
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "PackageParser"

    if-eqz v4, :cond_6a

    .line 1330
    if-eqz v3, :cond_53

    .line 1336
    const-string v4, "<manifest> has more than one <application>"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1338
    move-object v4, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b0

    .line 1342
    :cond_53
    nop

    .line 1343
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v3

    move-object v4, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    if-nez v3, :cond_62

    .line 1344
    return-object v0

    .line 1360
    :cond_62
    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-object p6, v4

    move v3, v5

    goto :goto_e

    .line 1354
    :cond_6a
    move-object v4, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <manifest>: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1356
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1354
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-static {p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1358
    goto :goto_b0

    .line 1324
    :cond_a9
    move-object v4, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1322
    :goto_b0
    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-object p6, v4

    goto/16 :goto_e

    :cond_b8
    move-object p2, p1

    move-object v4, p6

    move-object p1, p0

    .line 1362
    :goto_bb
    if-nez v3, :cond_c5

    .line 1363
    const-string p3, "<manifest> does not contain an <application>"

    aput-object p3, v4, v2

    .line 1364
    const/16 p3, -0x6d

    iput p3, p1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1367
    :cond_c5
    return-object p2
.end method

.method private greylist-max-o parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1263
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v7, v3, p2

    .line 1265
    const/4 v3, 0x1

    iput v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1266
    iput-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1271
    nop

    .line 1274
    const/4 v4, 0x0

    :try_start_b
    invoke-virtual {p3, v7}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v5

    .line 1275
    if-eqz v5, :cond_72

    .line 1280
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {p3, v5, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5
    :try_end_17
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_b .. :try_end_17} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_8f
    .catchall {:try_start_b .. :try_end_17} :catchall_8d

    .line 1281
    :try_start_17
    new-instance v2, Landroid/content/res/Resources;

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v2, p3, v6, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1283
    new-array v6, v3, [Ljava/lang/String;
    :try_end_20
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_17 .. :try_end_20} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_6a
    .catchall {:try_start_17 .. :try_end_20} :catchall_66

    .line 1284
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v3, v5

    move v5, p2

    :try_start_25
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_29
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_25 .. :try_end_29} :catch_64
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_62
    .catchall {:try_start_25 .. :try_end_29} :catchall_60

    .line 1285
    if-eqz v1, :cond_30

    .line 1296
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1297
    nop

    .line 1298
    return-void

    .line 1286
    :cond_30
    :try_start_30
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1287
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_60
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_30 .. :try_end_60} :catch_64
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_60} :catch_62
    .catchall {:try_start_30 .. :try_end_60} :catchall_60

    .line 1296
    :catchall_60
    move-exception v0

    goto :goto_68

    .line 1292
    :catch_62
    move-exception v0

    goto :goto_6c

    .line 1290
    :catch_64
    move-exception v0

    goto :goto_70

    .line 1296
    :catchall_66
    move-exception v0

    move-object v3, v5

    :goto_68
    move-object v4, v3

    goto :goto_ad

    .line 1292
    :catch_6a
    move-exception v0

    move-object v3, v5

    :goto_6c
    move-object v4, v3

    goto :goto_90

    .line 1290
    :catch_6e
    move-exception v0

    move-object v3, v5

    :goto_70
    move-object v4, v3

    goto :goto_ac

    .line 1276
    :cond_72
    :try_start_72
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed adding asset path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x65

    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_8d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_72 .. :try_end_8d} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8d} :catch_8f
    .catchall {:try_start_72 .. :try_end_8d} :catchall_8d

    .line 1296
    :catchall_8d
    move-exception v0

    goto :goto_ad

    .line 1292
    :catch_8f
    move-exception v0

    .line 1293
    :goto_90
    :try_start_90
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read manifest from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x66

    invoke-direct {v1, v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1290
    :catch_ab
    move-exception v0

    .line 1291
    :goto_ac
    throw v0
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_8d

    .line 1296
    :goto_ad
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1297
    throw v0
.end method

.method private greylist-max-o parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3993
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3996
    const/4 v1, 0x7

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v10, 0x4

    if-eqz v1, :cond_1a

    .line 3998
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v4, v1, p5

    or-int/2addr v4, v10

    aput v4, v1, p5

    .line 4001
    :cond_1a
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4003
    const/16 v11, -0x6c

    const/4 v12, 0x0

    if-eqz v0, :cond_44

    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_44

    .line 4006
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v12

    .line 4007
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4008
    return v12

    .line 4004
    :cond_44
    :goto_44
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v0, v1, p5

    .line 4011
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 4013
    :goto_4e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v9, :cond_212

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5d

    .line 4014
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v13, :cond_212

    .line 4015
    :cond_5d
    if-eq v0, v1, :cond_20c

    if-ne v0, v10, :cond_62

    .line 4016
    goto :goto_4e

    .line 4019
    :cond_62
    nop

    .line 4023
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser-IA;)V

    .line 4024
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4025
    const-string v4, "activity"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 4026
    const/4 v7, 0x0

    iget-boolean v8, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v6

    .line 4028
    if-nez v6, :cond_87

    .line 4029
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4030
    return v12

    .line 4033
    :cond_87
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4034
    iget-object v0, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4036
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    goto/16 :goto_1c3

    :cond_96
    const-string/jumbo v4, "receiver"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 4037
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v6

    .line 4039
    if-nez v6, :cond_b4

    .line 4040
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4041
    return v12

    .line 4044
    :cond_b4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4045
    iget-object v0, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4047
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    goto/16 :goto_1c3

    :cond_c3
    const-string/jumbo v4, "service"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 4048
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v6

    .line 4049
    if-nez v6, :cond_df

    .line 4050
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4051
    return v12

    .line 4054
    :cond_df
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4055
    iget-object v0, v6, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4057
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    goto/16 :goto_1c3

    :cond_ee
    const-string/jumbo v4, "provider"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 4058
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v6

    .line 4059
    if-nez v6, :cond_10a

    .line 4060
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4061
    return v12

    .line 4064
    :cond_10a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4065
    iget-object v0, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4067
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    goto/16 :goto_1c3

    :cond_119
    const-string v4, "activity-alias"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 4068
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v6

    .line 4069
    move-object v4, v2

    move-object v7, v5

    move-object v5, v3

    if-nez v6, :cond_137

    .line 4070
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4071
    return v12

    .line 4074
    :cond_137
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4075
    iget-object v0, v6, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4077
    goto/16 :goto_1c3

    :cond_140
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "meta-data"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 4081
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v1, v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v1, :cond_1c3

    .line 4083
    iput v11, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4084
    return v12

    .line 4087
    :cond_160
    const-string/jumbo v6, "uses-static-library"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_170

    .line 4088
    invoke-direct {p0, p1, v4, v5, v7}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    .line 4089
    return v12

    .line 4092
    :cond_170
    const-string/jumbo v6, "uses-library"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 4093
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4098
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 4100
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 4104
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4106
    if-eqz v6, :cond_1b3

    .line 4107
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4108
    if-eqz v8, :cond_1a3

    .line 4110
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4111
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_1b3

    .line 4115
    :cond_1a3
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b3

    .line 4116
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4122
    :cond_1b3
    :goto_1b3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4124
    goto :goto_1c3

    :cond_1b7
    const-string/jumbo v6, "uses-package"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d3

    .line 4127
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4143
    :cond_1c3
    :goto_1c3
    if-eqz v0, :cond_1cf

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v1, :cond_1cf

    .line 4148
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, p5

    iput-object v1, v0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4150
    :cond_1cf
    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_4e

    .line 4131
    :cond_1d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4133
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4131
    const-string v1, "PackageParser"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4135
    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_4e

    .line 4015
    :cond_20c
    move-object/from16 v7, p6

    move-object v4, v2

    move-object v5, v3

    goto/16 :goto_4e

    .line 4152
    :cond_212
    return v9
.end method

.method private greylist-max-o parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 6

    .line 2677
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2678
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2682
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2684
    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2686
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    .line 2687
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2691
    :cond_24
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 2693
    iget p2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr p2, v2

    iput p2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2695
    :cond_30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2696
    return-object v0
.end method

.method private greylist-max-o parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2809
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2812
    nop

    .line 2813
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 2815
    if-eqz v2, :cond_22

    .line 2816
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_22

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_22

    .line 2817
    iget v2, v2, Landroid/util/TypedValue;->data:I

    goto :goto_23

    .line 2821
    :cond_22
    move v2, v0

    :goto_23
    const/4 v3, 0x3

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 2824
    const/4 v4, 0x4

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 2827
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2829
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2831
    const/4 p2, 0x1

    if-nez v1, :cond_37

    .line 2832
    return p2

    .line 2835
    :cond_37
    if-eqz v2, :cond_3e

    sget v4, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v2, v4, :cond_3e

    .line 2836
    return p2

    .line 2840
    :cond_3e
    if-eqz v3, :cond_4d

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v2, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 2841
    return p2

    .line 2845
    :cond_4d
    if-eqz v0, :cond_5c

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 2846
    invoke-interface {v2, v0}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2847
    return p2

    .line 2850
    :cond_5c
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2851
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6f

    .line 2852
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 2854
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " at: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2856
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2854
    const-string p3, "PackageParser"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :goto_a1
    return p2
.end method

.method private greylist-max-o parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2701
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2705
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2707
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2709
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2711
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2714
    const/16 v0, -0x6c

    if-eqz v2, :cond_95

    if-ltz v3, :cond_95

    if-nez v5, :cond_22

    goto :goto_95

    .line 2723
    :cond_22
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v6, :cond_49

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 2724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Depending on multiple versions of static library "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    .line 2725
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2726
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2727
    return v1

    .line 2730
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2733
    const-string v2, ":"

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2736
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2737
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1b

    if-lt v6, v7, :cond_6a

    .line 2738
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2739
    if-nez v5, :cond_6d

    .line 2740
    return v1

    .line 2743
    :cond_6a
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2746
    :cond_6d
    array-length p2, v5

    add-int/2addr p2, v4

    new-array p2, p2, [Ljava/lang/String;

    .line 2747
    aput-object v2, p2, v1

    .line 2748
    array-length p3, v5

    invoke-static {v5, v1, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2751
    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2752
    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v0, v3

    invoke-static {p3, v0, v1, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p3

    iput-object p3, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2754
    const-class p3, [Ljava/lang/String;

    iget-object p4, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p3, p4, p2, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/lang/String;

    iput-object p2, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2757
    return v4

    .line 2715
    :cond_95
    :goto_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad uses-static-library declaration name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " certDigest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    .line 2717
    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2718
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2719
    return v1
.end method

.method private static greylist-max-o parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .registers 7

    .line 5624
    nop

    .line 5625
    nop

    .line 5627
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 5628
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_a
    if-ge v2, v0, :cond_21

    .line 5629
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    .line 5630
    sparse-switch v5, :sswitch_data_56

    goto :goto_1e

    .line 5636
    :sswitch_14
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 5632
    :sswitch_19
    invoke-interface {p0, v2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 5633
    nop

    .line 5628
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5641
    :cond_21
    const-string p0, "PackageParser"

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_4f

    .line 5646
    :cond_2c
    invoke-static {v4}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 5647
    if-nez v0, :cond_49

    .line 5648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse verifier public key for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    return-object v1

    .line 5652
    :cond_49
    new-instance p0, Landroid/content/pm/VerifierInfo;

    invoke-direct {p0, v3, v0}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object p0

    .line 5642
    :cond_4f
    :goto_4f
    const-string/jumbo v0, "verifier package name was null; skipping"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    return-object v1

    :sswitch_data_56
    .sparse-switch
        0x1010003 -> :sswitch_19
        0x10103a6 -> :sswitch_14
    .end sparse-switch
.end method

.method public static blacklist readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 15

    .line 8600
    const v0, 0x11102b8

    if-eqz p0, :cond_c

    .line 8601
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8602
    return-void

    .line 8607
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-string v1, "android"

    .line 8609
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8607
    const-wide/16 v3, 0x0

    invoke-interface {p0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 8612
    nop

    .line 8613
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 8616
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 8624
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 8625
    invoke-virtual {v1}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 8616
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object p0

    .line 8628
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    .line 8629
    return-void

    .line 8610
    :catch_44
    move-exception v0

    move-object p0, v0

    .line 8611
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 13
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

    .line 9237
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9238
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 9239
    return-object v1

    .line 9242
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 9243
    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v0, :cond_42

    .line 9244
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 9245
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 9246
    if-ne v7, v2, :cond_20

    .line 9247
    invoke-virtual {v3, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9248
    goto :goto_3f

    .line 9251
    :cond_20
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(I)V

    .line 9252
    move v9, v4

    :goto_26
    if-ge v9, v7, :cond_3c

    .line 9253
    const-class v10, Ljava/security/PublicKey;

    .line 9254
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Ljava/security/PublicKey;

    invoke-virtual {p0, v10, v11}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 9255
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9252
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 9258
    :cond_3c
    invoke-virtual {v3, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9243
    :goto_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 9261
    :cond_42
    return-object v3
.end method

.method public static blacklist reportIfDebug(ZJ)Z
    .registers 3

    .line 9146
    return p0
.end method

.method private blacklist resolveWindowLayout(Landroid/content/pm/PackageParser$Activity;)V
    .registers 12

    .line 4805
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4806
    const-string v1, "android.activity_window_layout_affinity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3b

    .line 4810
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4812
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v2, :cond_1c

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 4813
    return-void

    .line 4816
    :cond_1c
    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4818
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v1, :cond_36

    .line 4819
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4823
    :cond_36
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 4824
    return-void

    .line 4807
    :cond_3b
    :goto_3b
    return-void
.end method

.method private greylist-max-o setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .registers 9

    .line 4640
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

    .line 4644
    :goto_d
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_45

    if-eqz v0, :cond_18

    goto :goto_45

    .line 4658
    :cond_18
    iget-object p2, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_23

    .line 4662
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4663
    return-void

    .line 4668
    :cond_23
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 4669
    const/4 p2, 0x6

    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4670
    :cond_2d
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 4671
    const/4 p2, 0x5

    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4672
    :cond_37
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 4673
    const/4 p2, 0x7

    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_44

    .line 4675
    :cond_41
    const/4 p2, 0x4

    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4677
    :goto_44
    return-void

    .line 4647
    :cond_45
    :goto_45
    iget-object p3, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 p3, p3, 0x400

    if-eqz p3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    .line 4649
    :goto_4f
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 4651
    const/4 p2, 0x2

    iput p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5b

    .line 4653
    :cond_59
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4655
    :goto_5b
    return-void
.end method

.method public static greylist setCompatibilityModeEnabled(Z)V
    .registers 1

    .line 8593
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8594
    return-void
.end method

.method private greylist-max-o setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 6

    .line 4686
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 4687
    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v2

    .line 4689
    :goto_e
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v1, v2

    const-string v2, "android.max_aspect"

    if-eqz v1, :cond_1d

    .line 4691
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    goto :goto_2f

    .line 4692
    :cond_1d
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4693
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4694
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4697
    :cond_2f
    :goto_2f
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 4699
    invoke-static {v1}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 4700
    goto :goto_35

    .line 4708
    :cond_48
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_53

    .line 4709
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_54

    .line 4710
    :cond_53
    move v3, v0

    .line 4712
    :goto_54
    invoke-static {v1, v3}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMaxAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4713
    goto :goto_35

    .line 4714
    :cond_58
    return-void
.end method

.method private blacklist setMinAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 4722
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 4724
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 4725
    invoke-static {v1}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$mhasMinAspectRatio(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4726
    goto :goto_a

    .line 4728
    :cond_1d
    invoke-static {v1, v0}, Landroid/content/pm/PackageParser$Activity;->-$$Nest$msetMinAspectRatio(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4729
    goto :goto_a

    .line 4730
    :cond_21
    return-void
.end method

.method private blacklist setSupportsSizeChanges(Landroid/content/pm/PackageParser$Package;)V
    .registers 8

    .line 4733
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "android.supports_size_changes"

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 4734
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v3

    .line 4736
    :goto_13
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 4737
    if-nez v0, :cond_33

    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_37

    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    .line 4738
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 4739
    :cond_33
    iget-object v4, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v1, v4, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    .line 4741
    :cond_37
    goto :goto_19

    .line 4742
    :cond_38
    return-void
.end method

.method public static greylist-max-o toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .registers 4
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

    .line 1373
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1374
    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1375
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1377
    :cond_16
    return-object v0
.end method

.method private static blacklist updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/pkg/FrameworkPackageUserState;)V
    .registers 7

    .line 7911
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_7

    .line 7912
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 7914
    :cond_7
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7915
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1d

    .line 7917
    :cond_15
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7919
    :goto_1d
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7920
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_33

    .line 7922
    :cond_2b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7924
    :goto_33
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 7925
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_46

    .line 7927
    :cond_40
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7929
    :goto_46
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isVirtualPreload()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 7930
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_5c

    .line 7932
    :cond_54
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7934
    :goto_5c
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    .line 7935
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_6f

    .line 7937
    :cond_69
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7939
    :goto_6f
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_79

    .line 7940
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 7941
    :cond_79
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8b

    .line 7943
    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_87

    goto :goto_88

    :cond_87
    move v1, v2

    :goto_88
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_9b

    .line 7944
    :cond_8b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_99

    .line 7945
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9b

    .line 7947
    :cond_99
    iput-boolean v2, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 7949
    :cond_9b
    :goto_9b
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getEnabledState()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 7950
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_ae

    .line 7951
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 7953
    :cond_ae
    invoke-static {p2}, Landroid/content/pm/PackageParser;->getSeinfoUser(Landroid/content/pm/pkg/FrameworkPackageUserState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 7954
    invoke-interface {p2}, Landroid/content/pm/pkg/FrameworkPackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p1

    .line 7955
    if-eqz p1, :cond_d6

    .line 7956
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7957
    invoke-virtual {p1}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 7959
    :cond_d6
    sget-boolean p1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz p1, :cond_e1

    iget p1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p1, :cond_e1

    iget p1, p0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    goto :goto_e3

    :cond_e1
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_e3
    iput p1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 7960
    return-void
.end method

.method public static greylist-max-o validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 11

    .line 1547
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1548
    nop

    .line 1549
    nop

    .line 1550
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_b
    if-ge v3, v0, :cond_58

    .line 1551
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1552
    const/16 v7, 0x61

    if-lt v6, v7, :cond_19

    const/16 v7, 0x7a

    if-le v6, v7, :cond_21

    :cond_19
    const/16 v7, 0x41

    if-lt v6, v7, :cond_24

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_24

    .line 1553
    :cond_21
    nop

    .line 1554
    move v5, v1

    goto :goto_3b

    .line 1556
    :cond_24
    if-nez v5, :cond_33

    .line 1557
    const/16 v7, 0x30

    if-lt v6, v7, :cond_2e

    const/16 v7, 0x39

    if-le v6, v7, :cond_3b

    :cond_2e
    const/16 v7, 0x5f

    if-ne v6, v7, :cond_33

    .line 1558
    goto :goto_3b

    .line 1561
    :cond_33
    const/16 v4, 0x2e

    if-ne v6, v4, :cond_3e

    .line 1562
    nop

    .line 1563
    nop

    .line 1564
    move v4, v2

    move v5, v4

    .line 1550
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1566
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bad character \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1568
    :cond_58
    if-eqz p2, :cond_63

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_63

    .line 1569
    const-string p0, "Invalid filename"

    return-object p0

    .line 1571
    :cond_63
    if-nez v4, :cond_6c

    if-nez p1, :cond_68

    goto :goto_6c

    .line 1572
    :cond_68
    const-string/jumbo p0, "must have at least one \'.\' separator"

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 p0, 0x0

    .line 1571
    :goto_6d
    return-object p0
.end method

.method public static blacklist writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 8
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

    .line 9207
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 9208
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9209
    return-void

    .line 9212
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 9213
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9215
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9216
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9217
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 9218
    if-nez v2, :cond_31

    .line 9219
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9220
    goto :goto_16

    .line 9223
    :cond_31
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 9224
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9225
    const/4 v4, 0x0

    :goto_39
    if-ge v4, v3, :cond_47

    .line 9226
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9225
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 9228
    :cond_47
    goto :goto_16

    .line 9229
    :cond_48
    return-void
.end method


# virtual methods
.method public greylist parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1190
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1191
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_28

    .line 1192
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 1193
    :cond_d
    new-instance p2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a coreApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x6c

    invoke-direct {p2, v0, p1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 1198
    :cond_28
    :goto_28
    new-instance v1, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1200
    :try_start_2d
    invoke-interface {v1}, Landroid/content/pm/PackageParser$SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p2

    .line 1201
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1202
    iget-boolean v0, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_41} :catch_48
    .catchall {:try_start_2d .. :try_end_41} :catchall_46

    .line 1203
    nop

    .line 1208
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1203
    return-object p2

    .line 1208
    :catchall_46
    move-exception p1

    goto :goto_64

    .line 1204
    :catch_48
    move-exception p2

    .line 1205
    :try_start_49
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x66

    invoke-direct {v0, v2, p1, p2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_46

    .line 1208
    :goto_64
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1209
    throw p1
.end method

.method public greylist parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    return-object p1
.end method

.method public greylist parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1101
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1102
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    return-object p1

    .line 1104
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setCacheDir(Ljava/io/File;)V
    .registers 2

    .line 605
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 606
    return-void
.end method

.method public greylist-max-o setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .registers 2

    .line 636
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 637
    return-void
.end method

.method public greylist-max-o setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 2

    .line 598
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 599
    return-void
.end method

.method public greylist-max-o setOnlyCoreApps(Z)V
    .registers 2

    .line 594
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 595
    return-void
.end method

.method public greylist setSeparateProcesses([Ljava/lang/String;)V
    .registers 2

    .line 585
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 586
    return-void
.end method
