.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;,
        Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$ParseFlags;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field public static final ASPECT_RATIO_NOT_SET:F = -1.0f

.field public static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_JAR:Z = false

.field public static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final MAX_NUM_COMPONENTS:I = 0x7530

.field private static final MAX_NUM_COMPONENTS_ERR_MSG:Ljava/lang/String; = "Total number of components has exceeded the maximum number: 30000"

.field private static final MAX_PERMISSION_NAME_LENGTH:I = 0x200

.field public static final METADATA_ACTIVITY_LAUNCH_MODE:Ljava/lang/String; = "android.activity.launch_mode"

.field public static final METADATA_ACTIVITY_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "android.activity_window_layout_affinity"

.field public static final METADATA_CAN_DISPLAY_ON_REMOTE_DEVICES:Ljava/lang/String; = "android.can_display_on_remote_devices"

.field public static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field public static final METADATA_SUPPORTS_SIZE_CHANGES:Ljava/lang/String; = "android.supports_size_changes"

.field public static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field public static final PARSE_APK_IN_APEX:I = 0x200

.field public static final PARSE_CHATTY:I = -0x80000000

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field public static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x40

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final PARSE_FRAMEWORK_RES_SPLITS:I = 0x100

.field public static final PARSE_IGNORE_OVERLAY_REQUIRED_SYSTEM_PROPERTY:I = 0x80

.field public static final PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final PARSE_MUST_BE_APK:I = 0x1

.field public static final RIGID_PARSER:Z = false

.field public static final SDK_CODENAMES:[Ljava/lang/String;

.field public static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "PackageParsing"

.field public static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field public static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final TAG_ATTRIBUTION:Ljava/lang/String; = "attribution"

.field public static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field public static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field public static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field public static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field public static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field public static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field public static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field public static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field public static final TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field public static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field public static final TAG_QUERIES:Ljava/lang/String; = "queries"

.field public static final TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field public static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field public static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field public static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field public static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field public static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field public static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field public static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field public static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field public static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field public static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static sCompatibilityModeEnabled:Z

.field public static sUseRoundIcon:Z


# instance fields
.field private mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mSeparateProcesses:[Ljava/lang/String;

.field private mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    .line 211
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V
    .registers 6
    .param p1, "onlyCoreApps"    # Z
    .param p2, "separateProcesses"    # [Ljava/lang/String;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p5, "callback"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 340
    .local p4, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    .line 342
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 344
    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    .line 345
    iput-object p5, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    .line 346
    return-void
.end method

.method private static aFloat(FILandroid/content/res/TypedArray;)F
    .registers 4
    .param p0, "defaultValue"    # F
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3213
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static aFloat(ILandroid/content/res/TypedArray;)F
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3217
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method private static adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 7
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2987
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 2988
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2989
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_24

    .line 2990
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2991
    .local v3, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setResizeMode(Lcom/android/server/pm/pkg/component/ParsedActivity;I)V

    .line 2992
    nop

    .line 2993
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v4

    const v5, -0x400001

    and-int/2addr v4, v5

    .line 2992
    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V

    .line 2989
    .end local v3    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2995
    .end local v2    # "index":I
    :cond_24
    return-void
.end method

.method private static anInt(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3221
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static anInt(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3229
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private static anInteger(IILandroid/content/res/TypedArray;)I
    .registers 4
    .param p0, "defaultValue"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3225
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method private static bool(ZILandroid/content/res/TypedArray;)Z
    .registers 4
    .param p0, "defaultValue"    # Z
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3209
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method private static convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2950
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v1, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    array-length v1, v1

    .local v1, "size":I
    :goto_4
    if-ge v0, v1, :cond_2d

    .line 2951
    sget-object v2, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    aget-object v2, v2, v0

    .line 2952
    .local v2, "info":Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v4

    if-lt v3, v4, :cond_15

    .line 2953
    goto :goto_2d

    .line 2955
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2956
    invoke-virtual {v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2950
    .end local v2    # "info":Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2959
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method private convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 10
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2962
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2963
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_7
    if-ge v1, v0, :cond_4a

    .line 2964
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSplitPermissionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 2965
    .local v2, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    .line 2966
    .local v3, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v4

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 2967
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 2968
    goto :goto_47

    .line 2970
    :cond_2a
    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    .line 2971
    .local v4, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "in":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 2972
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2973
    .local v6, "perm":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 2974
    invoke-interface {p1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2971
    .end local v6    # "perm":Ljava/lang/String;
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 2963
    .end local v2    # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v3    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "in":I
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2978
    .end local v1    # "is":I
    :cond_4a
    return-void
.end method

.method private static exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 5
    .param p0, "input"    # Landroid/util/SparseIntArray;

    .line 1661
    if-nez p0, :cond_4

    .line 1662
    const/4 v0, 0x0

    return-object v0

    .line 1664
    :cond_4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1665
    .local v0, "output":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1666
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1668
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method private static generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 2698
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2699
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ":app_details"

    invoke-static {v0, v0, v1, p0}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2701
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2702
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 2705
    :cond_15
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2708
    .local v2, "taskAffinity":Ljava/lang/String;
    nop

    .line 2709
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUiOptions()I

    move-result v4

    .line 2710
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isBaseHardwareAccelerated()Z

    move-result v5

    .line 2708
    invoke-static {v0, v3, v4, v2, v5}, Lcom/android/server/pm/pkg/component/ParsedActivity;->makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 17
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;",
            "Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3067
    move-object v7, p0

    sget-object v8, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 3069
    .local v8, "signingDetails":Landroid/content/pm/SigningDetails;
    const-wide/32 v9, 0x40000

    const-string v0, "collectCertificates"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3071
    nop

    .line 3073
    :try_start_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    .line 3075
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v4

    .line 3077
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getTargetSdkVersion()I

    move-result v6

    .line 3071
    move-object v1, p0

    move/from16 v3, p2

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3079
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3080
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_8b

    .line 3106
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3080
    return-object v1

    .line 3083
    :cond_2e
    :try_start_2e
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/SigningDetails;
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_8b

    .line 3084
    .end local v8    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v5, "signingDetails":Landroid/content/pm/SigningDetails;
    :try_start_35
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework/framework-res.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v1

    .line 3086
    .local v8, "frameworkRes":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3087
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v11, v1

    .line 3088
    .local v11, "isFrameworkResSplit":Z
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 3089
    .local v12, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    if-nez v11, :cond_83

    .line 3090
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_5d
    array-length v1, v12

    if-ge v13, v1, :cond_83

    .line 3091
    aget-object v2, v12, v13

    .line 3095
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v4

    .line 3097
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getTargetSdkVersion()I

    move-result v6

    .line 3091
    move-object v1, p0

    move/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    move-object v0, v1

    .line 3099
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 3100
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_7c
    .catchall {:try_start_35 .. :try_end_7c} :catchall_88

    .line 3106
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3100
    return-object v1

    .line 3090
    :cond_80
    add-int/lit8 v13, v13, 0x1

    goto :goto_5d

    .line 3104
    .end local v13    # "i":I
    :cond_83
    nop

    .line 3106
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3104
    return-object v0

    .line 3106
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .end local v8    # "frameworkRes":Ljava/io/File;
    .end local v11    # "isFrameworkResSplit":Z
    .end local v12    # "splitCodePaths":[Ljava/lang/String;
    :catchall_88
    move-exception v0

    move-object v8, v5

    goto :goto_8c

    .end local v5    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v8, "signingDetails":Landroid/content/pm/SigningDetails;
    :catchall_8b
    move-exception v0

    :goto_8c
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 3107
    throw v0
.end method

.method public static getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "skipVerify"    # Z
    .param p3, "isStaticSharedLibrary"    # Z
    .param p4, "existingSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p5, "targetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/SigningDetails;",
            ">;"
        }
    .end annotation

    .line 3114
    invoke-static {p5}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 3116
    .local v0, "minSignatureScheme":I
    if-eqz p3, :cond_7

    .line 3118
    const/4 v0, 0x2

    .line 3121
    :cond_7
    if-eqz p2, :cond_e

    .line 3123
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .local v1, "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_12

    .line 3126
    .end local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_e
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3129
    .restart local v1    # "verified":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :goto_12
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3130
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3136
    :cond_1d
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne p4, v2, :cond_22

    .line 3137
    return-object v1

    .line 3139
    :cond_22
    invoke-virtual {p4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 3140
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningDetails;

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 3139
    invoke-static {v2, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 3141
    const/16 v2, -0x68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has mismatched certificates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 3145
    :cond_50
    invoke-interface {p0, p4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 11
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2721
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 2722
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2723
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 2724
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2725
    .local v3, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    .line 2726
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2727
    .local v5, "filtersSize":I
    const/4 v6, 0x0

    .local v6, "filtersIndex":I
    :goto_1a
    if-ge v6, v5, :cond_4c

    .line 2728
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 2729
    .local v7, "aii":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto :goto_47

    .line 2730
    :cond_2f
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    goto :goto_47

    .line 2731
    :cond_36
    const-string v8, "http"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 2732
    const-string v8, "https"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    goto :goto_4a

    .line 2727
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 2733
    .restart local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4a
    :goto_4a
    const/4 v8, 0x1

    return v8

    .line 2723
    .end local v3    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v5    # "filtersSize":I
    .end local v6    # "filtersIndex":I
    .end local v7    # "aii":Landroid/content/IntentFilter;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2737
    .end local v2    # "index":I
    :cond_4f
    const/4 v2, 0x0

    return v2
.end method

.method private static hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 859
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x7530

    if-le v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private static nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 4
    .param p0, "allowedChangingConfigs"    # I
    .param p1, "attribute"    # I
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 3243
    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3247
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2653
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2654
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2656
    .local v1, "depth":I
    :goto_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_73

    const/4 v2, 0x3

    if-ne v3, v2, :cond_17

    .line 2658
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_73

    .line 2659
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 2660
    goto :goto_6

    .line 2663
    :cond_1b
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2664
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 2665
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2668
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    :try_start_2e
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2671
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 2672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_6d

    .line 2683
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2672
    return-object v6

    .line 2679
    :cond_53
    :try_start_53
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2680
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_6d

    move-object v0, v6

    .line 2683
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2684
    goto :goto_72

    .line 2683
    :catchall_6d
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2684
    throw v5

    .line 2686
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    :cond_72
    :goto_72
    goto :goto_6

    .line 2688
    :cond_73
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method private static parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2937
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2939
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 2940
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 2941
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2943
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 2945
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2943
    return-object v2

    .line 2945
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2946
    throw v1
.end method

.method private static parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1227
    invoke-static {p2, p3, p0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1229
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedAttribution;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1230
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1232
    :cond_f
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "assetLoader"    # Lcom/android/server/pm/split/SplitAssetLoader;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/split/SplitAssetLoader;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 508
    move-object/from16 v8, p1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 511
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 512
    const/16 v2, 0x2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 513
    .local v2, "end":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_24

    .line 511
    .end local v2    # "end":I
    :cond_23
    move-object v10, v0

    .line 520
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v10, "volumeUuid":Ljava/lang/String;
    :goto_24
    :try_start_24
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_28} :catch_1af

    move-object v11, v0

    .line 524
    .local v11, "assets":Landroid/content/res/AssetManager;
    nop

    .line 525
    invoke-virtual {v11, v9}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v12

    .line 526
    .local v12, "cookie":I
    if-nez v12, :cond_4a

    .line 527
    const/16 v0, -0x65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed adding asset path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 531
    :cond_4a
    :try_start_4a
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v11, v12, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_192

    move-object v13, v0

    .line 533
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_51
    new-instance v5, Landroid/content/res/Resources;
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_180

    move-object/from16 v14, p0

    :try_start_55
    iget-object v0, v14, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    invoke-direct {v5, v11, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 535
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p3

    move-object v6, v13

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object v1, v0

    .line 537
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 538
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 539
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 540
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-interface {v8, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_a1
    .catchall {:try_start_55 .. :try_end_a1} :catchall_17e

    .line 592
    if-eqz v13, :cond_a6

    :try_start_a3
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_190

    .line 538
    :cond_a6
    return-object v0

    .line 543
    :cond_a7
    :try_start_a7
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-object v2, v0

    .line 544
    .local v2, "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v11}, Landroid/content/res/AssetManager;->containsAllocatedTable()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 545
    const-string v0, "Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary"

    const-wide/32 v3, 0x7e97bf3

    invoke-interface {v8, v0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 550
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 551
    const/16 v3, -0x7c

    .line 552
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-interface {v8, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_cd
    .catchall {:try_start_a7 .. :try_end_cd} :catchall_17e

    .line 592
    if-eqz v13, :cond_d2

    :try_start_cf
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_190

    .line 551
    :cond_d2
    return-object v3

    .line 556
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_d3
    :try_start_d3
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/split/SplitAssetLoader;->getBaseApkAssets()Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_17e

    move-object v3, v0

    .line 557
    .local v3, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v4, 0x0

    .line 559
    .local v4, "definesOverlayable":Z
    :try_start_d9
    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->definesOverlayable()Z

    move-result v0
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dd} :catch_df
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_17e

    move v4, v0

    .line 562
    goto :goto_e0

    .line 560
    :catch_df
    move-exception v0

    .line 564
    :goto_e0
    if-eqz v4, :cond_146

    .line 565
    :try_start_e2
    invoke-virtual {v11}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 566
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 567
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_eb
    if-ge v7, v6, :cond_141

    .line 568
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 569
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual {v11, v15}, Landroid/content/res/AssetManager;->getOverlayableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    move-object/from16 v17, v16

    .line 570
    .local v17, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v16, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_136

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_136

    .line 571
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_10d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_131

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .line 572
    .local v19, "overlayable":Ljava/lang/String;
    move-object/from16 v18, v1

    move-object/from16 v1, v19

    .end local v19    # "overlayable":Ljava/lang/String;
    .local v1, "overlayable":Ljava/lang/String;
    .local v18, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 573
    move-object/from16 v1, v18

    move-object/from16 v0, v20

    .end local v1    # "overlayable":Ljava/lang/String;
    goto :goto_10d

    .line 571
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v20    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :cond_131
    move-object/from16 v20, v0

    move-object/from16 v18, v1

    .end local v0    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v20    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_13a

    .line 570
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v20    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :cond_136
    move-object/from16 v20, v0

    move-object/from16 v18, v1

    .line 567
    .end local v0    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :goto_13a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    goto :goto_eb

    .end local v16    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .local v0, "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :cond_141
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    .end local v0    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v16    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    goto :goto_148

    .line 564
    .end local v6    # "size":I
    .end local v7    # "index":I
    .end local v16    # "packageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :cond_146
    move-object/from16 v18, v1

    .line 578
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :goto_148
    invoke-interface {v2, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 580
    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_16f

    .line 581
    const/4 v0, 0x0

    .line 582
    invoke-static {v8, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 583
    .local v0, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_164

    .line 584
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_15e
    .catchall {:try_start_e2 .. :try_end_15e} :catchall_17e

    .line 592
    if-eqz v13, :cond_163

    :try_start_160
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_190

    .line 584
    :cond_163
    return-object v1

    .line 586
    :cond_164
    :try_start_164
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 587
    nop

    .end local v0    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    goto :goto_174

    .line 588
    :cond_16f
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 591
    :goto_174
    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_178
    .catchall {:try_start_164 .. :try_end_178} :catchall_17e

    .line 592
    if-eqz v13, :cond_17d

    :try_start_17a
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_17d} :catch_190

    .line 591
    :cond_17d
    return-object v0

    .line 531
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v4    # "definesOverlayable":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_17e
    move-exception v0

    goto :goto_183

    :catchall_180
    move-exception v0

    move-object/from16 v14, p0

    :goto_183
    move-object v1, v0

    if-eqz v13, :cond_18f

    :try_start_186
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_18a

    goto :goto_18f

    :catchall_18a
    move-exception v0

    move-object v2, v0

    :try_start_18c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v9    # "apkPath":Ljava/lang/String;
    .end local v10    # "volumeUuid":Ljava/lang/String;
    .end local v11    # "assets":Landroid/content/res/AssetManager;
    .end local v12    # "cookie":I
    .end local p0    # "this":Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "apkFile":Ljava/io/File;
    .end local p3    # "codePath":Ljava/lang/String;
    .end local p4    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local p5    # "flags":I
    :cond_18f
    :goto_18f
    throw v1
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_190} :catch_190

    .line 592
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "apkPath":Ljava/lang/String;
    .restart local v10    # "volumeUuid":Ljava/lang/String;
    .restart local v11    # "assets":Landroid/content/res/AssetManager;
    .restart local v12    # "cookie":I
    .restart local p0    # "this":Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "apkFile":Ljava/io/File;
    .restart local p3    # "codePath":Ljava/lang/String;
    .restart local p4    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local p5    # "flags":I
    :catch_190
    move-exception v0

    goto :goto_195

    :catch_192
    move-exception v0

    move-object/from16 v14, p0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    :goto_195
    const/16 v1, -0x66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read manifest from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "assets":Landroid/content/res/AssetManager;
    .end local v12    # "cookie":I
    :catch_1af
    move-exception v0

    move-object/from16 v14, p0

    move-object v1, v0

    move-object v0, v1

    .line 522
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1be

    const/4 v1, -0x2

    goto :goto_1c0

    .line 523
    :cond_1be
    const/16 v1, -0x64

    :goto_1c0
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-interface {v8, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    move-object/from16 v8, p1

    move-object/from16 v9, p5

    .line 645
    invoke-static {v8, v9}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 646
    .local v10, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 647
    invoke-interface {v8, v10}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 650
    :cond_13
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/Pair;

    .line 651
    .local v11, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 652
    .local v18, "pkgName":Ljava/lang/String;
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 654
    .local v7, "splitName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 655
    const/16 v0, -0x6a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected base APK, but found split "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 661
    :cond_45
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v6, p4

    invoke-virtual {v6, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 663
    .local v19, "manifestArray":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_4e
    const-string v1, "coreApp"

    const/4 v2, 0x0

    invoke-interface {v9, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    .line 665
    .local v17, "isCoreApp":Z
    move-object/from16 v5, p0

    iget-object v12, v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    move-object/from16 v13, v18

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v19

    invoke-interface/range {v12 .. v17}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_8d

    .line 667
    .local v0, "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    nop

    .line 668
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v12, v7

    .end local v7    # "splitName":Ljava/lang/String;
    .local v12, "splitName":Ljava/lang/String;
    move/from16 v7, p6

    :try_start_74
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 669
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_8b

    if-eqz v2, :cond_83

    .line 670
    nop

    .line 675
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 670
    return-object v1

    .line 673
    :cond_83
    :try_start_83
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_8b

    .line 675
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 673
    return-object v2

    .line 675
    .end local v0    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .end local v1    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v17    # "isCoreApp":Z
    :catchall_8b
    move-exception v0

    goto :goto_8f

    .end local v12    # "splitName":Ljava/lang/String;
    .restart local v7    # "splitName":Ljava/lang/String;
    :catchall_8d
    move-exception v0

    move-object v12, v7

    .end local v7    # "splitName":Ljava/lang/String;
    .restart local v12    # "splitName":Ljava/lang/String;
    :goto_8f
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 676
    throw v0
.end method

.method private parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a2

    :cond_7
    goto/16 :goto_134

    :sswitch_9
    const-string v0, "compatible-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto/16 :goto_135

    :sswitch_15
    const-string/jumbo v0, "uses-feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_135

    :sswitch_22
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_135

    :sswitch_2f
    const-string v0, "feature-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_135

    :sswitch_3b
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto/16 :goto_135

    :sswitch_48
    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_135

    :sswitch_55
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_135

    :sswitch_62
    const-string/jumbo v0, "queries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_135

    :sswitch_6f
    const-string v0, "adopt-permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_135

    :sswitch_7b
    const-string/jumbo v0, "uses-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_135

    :sswitch_87
    const-string v0, "instrumentation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_135

    :sswitch_93
    const-string v0, "key-sets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_135

    :sswitch_9e
    const-string/jumbo v0, "supports-input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_135

    :sswitch_ab
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto/16 :goto_135

    :sswitch_b8
    const-string v0, "eat-comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_135

    :sswitch_c4
    const-string/jumbo v0, "permission-group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_135

    :sswitch_cf
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_135

    :sswitch_db
    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_135

    :sswitch_e5
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_135

    :sswitch_f0
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_135

    :sswitch_fa
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto :goto_135

    :sswitch_106
    const-string/jumbo v0, "overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_135

    :sswitch_111
    const-string/jumbo v0, "original-package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto :goto_135

    :sswitch_11d
    const-string/jumbo v0, "permission-tree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_135

    :sswitch_128
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_135

    :goto_134
    const/4 v0, -0x1

    :goto_135
    packed-switch v0, :pswitch_data_208

    .line 1049
    const-string v0, "<manifest>"

    invoke-static {v0, p3, p5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1047
    :pswitch_13f
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1045
    :pswitch_144
    invoke-static {p6, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1042
    :pswitch_149
    invoke-static {p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1043
    invoke-interface {p2, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1036
    :pswitch_151
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdoptPermissions(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1034
    :pswitch_156
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1032
    :pswitch_15b
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1030
    :pswitch_160
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1028
    :pswitch_165
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1026
    :pswitch_16a
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1024
    :pswitch_16f
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1022
    :pswitch_174
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1020
    :pswitch_179
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1018
    :pswitch_17e
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1014
    :pswitch_183
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1012
    :pswitch_188
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1010
    :pswitch_18d
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1008
    :pswitch_192
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAttribution(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1005
    :pswitch_197
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1003
    :pswitch_19c
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_1a2
    .sparse-switch
        -0x69b7c34b -> :sswitch_128
        -0x6366e724 -> :sswitch_11d
        -0x420dbfb6 -> :sswitch_111
        -0x410bbbb0 -> :sswitch_106
        -0x3b806306 -> :sswitch_fa
        -0x3a5d850a -> :sswitch_f0
        -0x1eda3a31 -> :sswitch_e5
        -0x12786f81 -> :sswitch_db
        -0xfe5a947 -> :sswitch_cf
        -0xa2d06ff -> :sswitch_c4
        -0x7b47f16 -> :sswitch_b8
        0x71978d4 -> :sswitch_ab
        0x14d5f341 -> :sswitch_9e
        0x1b1d76ff -> :sswitch_93
        0x20752f6e -> :sswitch_87
        0x23c12e70 -> :sswitch_7b
        0x25af09e7 -> :sswitch_6f
        0x270bd766 -> :sswitch_62
        0x3573e73e -> :sswitch_55
        0x501aeeb1 -> :sswitch_48
        0x55ccf562 -> :sswitch_3b
        0x6446f4e8 -> :sswitch_2f
        0x65ae49fd -> :sswitch_22
        0x6adbbdf5 -> :sswitch_15
        0x6c5ff78e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_19c
        :pswitch_197
        :pswitch_192
        :pswitch_192
        :pswitch_18d
        :pswitch_188
        :pswitch_183
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_179
        :pswitch_174
        :pswitch_16f
        :pswitch_16a
        :pswitch_165
        :pswitch_160
        :pswitch_15b
        :pswitch_156
        :pswitch_151
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_144
        :pswitch_13f
    .end packed-switch
.end method

.method private parseBaseApkTags(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "sa"    # Landroid/content/res/TypedArray;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {p1 .. p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v10

    .line 909
    .local v10, "sharedUserResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v10}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 910
    return-object v10

    .line 913
    :cond_11
    const/4 v0, -0x1

    const/4 v11, 0x4

    invoke-static {v0, v11, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v0

    invoke-interface {v8, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/4 v1, 0x7

    .line 915
    const/4 v12, 0x1

    invoke-static {v12, v1, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2b

    move v1, v12

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 918
    :goto_2c
    invoke-interface {v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "foundApp":Z
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    move v14, v0

    .line 923
    .end local v0    # "foundApp":Z
    .local v13, "depth":I
    .local v14, "foundApp":Z
    :goto_35
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v15, v0

    .local v15, "type":I
    if-eq v0, v12, :cond_99

    const/4 v0, 0x3

    if-ne v15, v0, :cond_45

    .line 925
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_99

    .line 926
    :cond_45
    const/4 v0, 0x2

    if-eq v15, v0, :cond_49

    .line 927
    goto :goto_35

    .line 930
    :cond_49
    invoke-interface/range {p5 .. p5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 934
    .local v6, "tagName":Ljava/lang/String;
    const-string v0, "application"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 935
    if-eqz v14, :cond_66

    .line 939
    const-string v0, "PackageParsing"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v6

    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_8d

    .line 943
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_66
    const/4 v14, 0x1

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    move-object/from16 v16, v6

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_8d

    .line 947
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_7a
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v16, v6

    .end local v6    # "tagName":Ljava/lang/String;
    .local v16, "tagName":Ljava/lang/String;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApkTag(Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 950
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_8d
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 951
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 953
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_98
    goto :goto_35

    .line 955
    :cond_99
    if-nez v14, :cond_b9

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_b9

    .line 956
    const-wide/32 v0, 0x8fcab42

    const-string v2, "<manifest> does not contain an <application> or <instrumentation>"

    invoke-interface {v7, v2, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 959
    .local v0, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 960
    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 964
    .end local v0    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_b9
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;->isCombinationValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 965
    const/16 v0, -0x65

    const-string v1, "Combination <attribution> tags are not valid"

    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 971
    :cond_cc
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->declareDuplicatePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 972
    const/16 v0, -0x6c

    const-string v1, "Found duplicate permission with a different attribute value."

    invoke-interface {v7, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 978
    :cond_db
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertCompatPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 980
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->convertSplitPermissions(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 985
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v1

    if-lt v1, v11, :cond_10d

    .line 986
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSupportsSmallScreens()Z

    move-result v1

    if-nez v1, :cond_110

    .line 987
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSupportsNormalScreens()Z

    move-result v1

    if-nez v1, :cond_110

    .line 988
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSupportsLargeScreens()Z

    move-result v1

    if-nez v1, :cond_110

    .line 989
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isSupportsExtraLargeScreens()Z

    move-result v1

    if-nez v1, :cond_110

    .line 990
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_110

    .line 991
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isAnyDensity()Z

    move-result v1

    if-nez v1, :cond_110

    .line 992
    :cond_10d
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->adjustPackageToBeUnresizeableAndUnpipable(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 995
    :cond_110
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;

    .line 2224
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    .line 2227
    .local v0, "targetSdk":I
    nop

    .line 2229
    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {v1, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2230
    const/4 v3, 0x5

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2231
    const/16 v3, 0x36

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2232
    const/16 v3, 0x3b

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2233
    const/16 v3, 0x9

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2234
    const/16 v3, 0x22

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2235
    const/4 v3, 0x7

    invoke-static {v1, v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2237
    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-static {v3, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2238
    const/16 v5, 0x2f

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2239
    const/16 v5, 0x3a

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2240
    const/16 v5, 0xa

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2241
    const/16 v5, 0x26

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2242
    const/16 v5, 0x27

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2243
    const/16 v5, 0x39

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2244
    const/16 v5, 0x1f

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2245
    const/16 v5, 0x32

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2246
    const/16 v5, 0x18

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2247
    const/16 v5, 0x21

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2248
    const/16 v5, 0x3d

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2249
    const/16 v5, 0x1b

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2250
    const/16 v5, 0x1a

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2251
    const/16 v5, 0xf

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2252
    const/16 v5, 0x35

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2253
    const/16 v5, 0x31

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2254
    const/16 v5, 0x14

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2255
    const/16 v5, 0x3c

    invoke-static {v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2256
    const/16 v5, 0x45

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2257
    const/16 v5, 0x46

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2260
    const/16 v5, 0x49

    invoke-static {v3, v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_12d

    move v6, v1

    goto :goto_12e

    :cond_12d
    move v6, v3

    :goto_12e
    const/16 v7, 0x37

    .line 2262
    invoke-static {v6, v7, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-lt v0, v4, :cond_13c

    move v4, v1

    goto :goto_13d

    :cond_13c
    move v4, v3

    :goto_13d
    const/16 v6, 0x17

    .line 2263
    invoke-static {v4, v6, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    if-ge v0, v5, :cond_14b

    move v4, v1

    goto :goto_14c

    :cond_14b
    move v4, v3

    :goto_14c
    const/16 v6, 0x38

    .line 2264
    invoke-static {v4, v6, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_15b

    goto :goto_15c

    :cond_15b
    move v1, v3

    :goto_15c
    const/16 v6, 0x24

    .line 2265
    invoke-static {v1, v6, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x19

    .line 2267
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v6, 0x2b

    .line 2269
    invoke-static {v2, v6, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2c

    .line 2271
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x33

    .line 2272
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->aFloat(ILandroid/content/res/TypedArray;)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x1e

    .line 2274
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0xd

    .line 2275
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x2

    .line 2276
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x16

    .line 2277
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x29

    .line 2278
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2a

    .line 2279
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2280
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x42

    .line 2282
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    .line 2281
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x47

    .line 2283
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x2e

    .line 2285
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2286
    invoke-static {v5, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2287
    invoke-static {v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/16 v2, 0x34

    .line 2288
    invoke-static {v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->string(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v2, 0x6

    .line 2290
    invoke-static {v3, v2, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2293
    return-void
.end method

.method private parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2303
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_11c

    :cond_7
    goto/16 :goto_92

    :sswitch_9
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_93

    :sswitch_16
    const-string/jumbo v0, "profileable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_93

    :sswitch_23
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_93

    :sswitch_2d
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_93

    :sswitch_38
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_93

    :sswitch_43
    const-string/jumbo v0, "static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_93

    :sswitch_4e
    const-string/jumbo v0, "processes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_93

    :sswitch_5a
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_93

    :sswitch_65
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_93

    :sswitch_70
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_93

    :sswitch_7b
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_93

    :sswitch_87
    const-string/jumbo v0, "sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_93

    :goto_92
    const/4 v0, -0x1

    :goto_93
    packed-switch v0, :pswitch_data_14e

    .line 2345
    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2343
    :pswitch_9d
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2341
    :pswitch_a2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2337
    :pswitch_a8
    iget-object v5, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2335
    :pswitch_b4
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2333
    :pswitch_b9
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2331
    :pswitch_be
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2329
    :pswitch_c3
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2327
    :pswitch_c8
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2325
    :pswitch_cd
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2323
    :pswitch_d2
    invoke-static {p3, p4, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 2316
    :pswitch_d7
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2318
    .local v0, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 2319
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2321
    :cond_f1
    return-object v0

    .line 2309
    .end local v0    # "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    :pswitch_f2
    const/4 v3, 0x0

    const-string v6, "<meta-data>"

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2311
    .local v0, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11a

    .line 2312
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2314
    :cond_11a
    return-object v0

    nop

    :sswitch_data_11c
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_87
        -0x5fe67eda -> :sswitch_7b
        -0x5aaa6a59 -> :sswitch_70
        -0x50de9846 -> :sswitch_65
        -0x4284098e -> :sswitch_5a
        -0x4140b4a3 -> :sswitch_4e
        -0x3efb77a4 -> :sswitch_43
        -0x3b32222b -> :sswitch_38
        0x88b87d -> :sswitch_2d
        0x9e824bb -> :sswitch_23
        0xa9d2283 -> :sswitch_16
        0x751e7745 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_d7
        :pswitch_d2
        :pswitch_cd
        :pswitch_c8
        :pswitch_c3
        :pswitch_be
        :pswitch_b9
        :pswitch_b4
        :pswitch_a8
        :pswitch_a2
        :pswitch_9d
    .end packed-switch
.end method

.method private parseBaseApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 37
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1862
    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1863
    .local v12, "pkgName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v11

    .line 1865
    .local v11, "targetSdk":I
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v14, v13, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1870
    .local v10, "sa":Landroid/content/res/TypedArray;
    if-nez v10, :cond_2f

    .line 1871
    :try_start_1a
    const-string v0, "<application> does not contain any attributes"

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1871
    return-object v0

    .line 2078
    :catchall_24
    move-exception v0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    goto/16 :goto_58e

    .line 1874
    :cond_2f
    const/4 v0, 0x3

    const/4 v9, 0x0

    :try_start_31
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_585

    move-object v6, v1

    .line 1876
    .local v6, "name":Ljava/lang/String;
    const-string v1, "Empty class name in package "

    if-eqz v6, :cond_72

    .line 1877
    :try_start_3a
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1879
    .local v3, "outInfoName":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1880
    const-string v0, "<application> invalid android:name"

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1880
    return-object v0

    .line 1881
    :cond_54
    if-nez v3, :cond_6f

    .line 1882
    :try_start_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1882
    return-object v0

    .line 1885
    :cond_6f
    :try_start_6f
    invoke-interface {v15, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_24

    .line 1888
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "outInfoName":Ljava/lang/String;
    :cond_72
    const/4 v5, 0x1

    :try_start_73
    invoke-virtual {v10, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_585

    move-object v4, v2

    .line 1889
    .local v4, "labelValue":Landroid/util/TypedValue;
    if-eqz v4, :cond_8a

    .line 1890
    :try_start_7a
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1891
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_8a

    .line 1892
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_8a
    .catchall {:try_start_7a .. :try_end_8a} :catchall_24

    .line 1896
    :cond_8a
    :try_start_8a
    invoke-direct {v8, v15, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppBasicFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)V

    .line 1898
    const/4 v3, 0x4

    const/16 v2, 0x400

    invoke-static {v2, v3, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v16
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_585

    move-object/from16 v17, v16

    .line 1900
    .local v17, "manageSpaceActivity":Ljava/lang/String;
    move-object/from16 v0, v17

    .end local v17    # "manageSpaceActivity":Ljava/lang/String;
    .local v0, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v0, :cond_c0

    .line 1901
    :try_start_9a
    invoke-static {v12, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1904
    .local v17, "manageSpaceActivityName":Ljava/lang/String;
    move-object/from16 v3, v17

    .end local v17    # "manageSpaceActivityName":Ljava/lang/String;
    .local v3, "manageSpaceActivityName":Ljava/lang/String;
    if-nez v3, :cond_bd

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b9
    .catchall {:try_start_9a .. :try_end_b9} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1905
    return-object v1

    .line 1908
    :cond_bd
    :try_start_bd
    invoke-interface {v15, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_24

    .line 1911
    .end local v3    # "manageSpaceActivityName":Ljava/lang/String;
    :cond_c0
    :try_start_c0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isAllowBackup()Z

    move-result v3
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_585

    if-eqz v3, :cond_13e

    .line 1915
    const/16 v3, 0x10

    :try_start_c8
    invoke-static {v2, v3, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v3

    .line 1917
    .local v3, "backupAgent":Ljava/lang/String;
    if-eqz v3, :cond_120

    .line 1918
    invoke-static {v12, v3}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v19

    .line 1919
    .local v20, "backupAgentName":Ljava/lang/String;
    move-object/from16 v9, v20

    .end local v20    # "backupAgentName":Ljava/lang/String;
    .local v9, "backupAgentName":Ljava/lang/String;
    if-nez v9, :cond_f1

    .line 1920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_ed
    .catchall {:try_start_c8 .. :try_end_ed} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1920
    return-object v1

    .line 1928
    :cond_f1
    :try_start_f1
    invoke-interface {v15, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    move-object/from16 v21, v0

    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .local v21, "manageSpaceActivity":Ljava/lang/String;
    const/16 v0, 0x12

    .line 1929
    invoke-static {v5, v0, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v0

    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x15

    .line 1931
    const/4 v5, 0x0

    invoke-static {v5, v2, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x20

    .line 1933
    invoke-static {v5, v2, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/16 v2, 0x28

    .line 1935
    invoke-static {v5, v2, v10}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_122

    .line 1917
    .end local v9    # "backupAgentName":Ljava/lang/String;
    .end local v21    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v0    # "manageSpaceActivity":Ljava/lang/String;
    :cond_120
    move-object/from16 v21, v0

    .line 1939
    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v21    # "manageSpaceActivity":Ljava/lang/String;
    :goto_122
    const/16 v0, 0x23

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1941
    .local v0, "v":Landroid/util/TypedValue;
    const/4 v2, 0x0

    .line 1943
    .local v2, "fullBackupContent":I
    if-eqz v0, :cond_140

    .line 1944
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    move v2, v5

    .line 1946
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v5, :cond_13a

    .line 1952
    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_138

    const/4 v5, -0x1

    goto :goto_139

    :cond_138
    const/4 v5, 0x0

    :goto_139
    move v2, v5

    .line 1955
    :cond_13a
    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_13d
    .catchall {:try_start_f1 .. :try_end_13d} :catchall_24

    goto :goto_140

    .line 1911
    .end local v2    # "fullBackupContent":I
    .end local v3    # "backupAgent":Ljava/lang/String;
    .end local v21    # "manageSpaceActivity":Ljava/lang/String;
    .local v0, "manageSpaceActivity":Ljava/lang/String;
    :cond_13e
    move-object/from16 v21, v0

    .line 1962
    .end local v0    # "manageSpaceActivity":Ljava/lang/String;
    .restart local v21    # "manageSpaceActivity":Ljava/lang/String;
    :cond_140
    :goto_140
    const/16 v0, 0x8

    const/4 v2, 0x0

    :try_start_143
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_147
    .catchall {:try_start_143 .. :try_end_147} :catchall_585

    if-eqz v3, :cond_160

    .line 1964
    const/16 v2, 0x2d

    :try_start_14b
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 1966
    .local v2, "requiredFeature":Ljava/lang/String;
    if-eqz v2, :cond_15c

    iget-object v3, v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-interface {v3, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15a

    goto :goto_15c

    :cond_15a
    const/4 v3, 0x0

    goto :goto_15d

    :cond_15c
    :goto_15c
    const/4 v3, 0x1

    :goto_15d
    invoke-interface {v15, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_160
    .catchall {:try_start_14b .. :try_end_160} :catchall_24

    .line 1969
    .end local v2    # "requiredFeature":Ljava/lang/String;
    :cond_160
    const/16 v2, 0x25

    :try_start_162
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3
    :try_end_166
    .catchall {:try_start_162 .. :try_end_166} :catchall_585

    if-eqz v3, :cond_175

    .line 1970
    const/4 v5, 0x1

    :try_start_169
    invoke-virtual {v10, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_174
    .catchall {:try_start_169 .. :try_end_174} :catchall_24

    goto :goto_180

    .line 1973
    :cond_175
    const/4 v5, 0x1

    const/16 v2, 0x18

    if-lt v11, v2, :cond_17c

    move v2, v5

    goto :goto_17d

    :cond_17c
    const/4 v2, 0x0

    :goto_17d
    :try_start_17d
    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_180
    .catchall {:try_start_17d .. :try_end_180} :catchall_585

    .line 1978
    :goto_180
    const/16 v2, 0xc

    if-lt v11, v0, :cond_18c

    .line 1979
    const/16 v3, 0x400

    :try_start_186
    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_24

    move-object v9, v2

    .local v2, "taskAffinity":Ljava/lang/String;
    goto :goto_191

    .line 1986
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_18c
    :try_start_18c
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 1990
    .local v9, "taskAffinity":Ljava/lang/String;
    :goto_191
    invoke-static {v12, v12, v9, v7}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    move-object v3, v2

    .line 1992
    .local v3, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_19a
    .catchall {:try_start_18c .. :try_end_19a} :catchall_585

    if-eqz v2, :cond_1a4

    .line 1993
    :try_start_19c
    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1993
    return-object v0

    .line 1996
    :cond_1a4
    :try_start_1a4
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1997
    const/16 v2, 0x30

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1b3
    .catchall {:try_start_1a4 .. :try_end_1b3} :catchall_585

    .line 1999
    .local v2, "factory":Ljava/lang/String;
    if-eqz v2, :cond_1db

    .line 2000
    :try_start_1b5
    invoke-static {v12, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 2001
    .local v23, "appComponentFactory":Ljava/lang/String;
    move-object/from16 v5, v23

    .end local v23    # "appComponentFactory":Ljava/lang/String;
    .local v5, "appComponentFactory":Ljava/lang/String;
    if-nez v5, :cond_1d8

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_1d4
    .catchall {:try_start_1b5 .. :try_end_1d4} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2002
    return-object v0

    .line 2005
    :cond_1d8
    :try_start_1d8
    invoke-interface {v15, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2009
    .end local v5    # "appComponentFactory":Ljava/lang/String;
    :cond_1db
    const/16 v1, 0xb

    if-lt v11, v0, :cond_1e6

    .line 2010
    const/16 v0, 0x400

    invoke-virtual {v10, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1e5
    .catchall {:try_start_1d8 .. :try_end_1e5} :catchall_24

    .local v0, "pname":Ljava/lang/CharSequence;
    goto :goto_1ea

    .line 2017
    .end local v0    # "pname":Ljava/lang/CharSequence;
    :cond_1e6
    :try_start_1e6
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .restart local v0    # "pname":Ljava/lang/CharSequence;
    :goto_1ea
    const/4 v5, 0x0

    iget-object v1, v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v20, v1

    move-object v1, v12

    move-object/from16 v23, v2

    .end local v2    # "factory":Ljava/lang/String;
    .local v23, "factory":Ljava/lang/String;
    move-object v2, v5

    move-object/from16 v16, v3

    const/16 v24, 0x4

    .end local v3    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .local v16, "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    move-object v3, v0

    move-object/from16 v25, v4

    .end local v4    # "labelValue":Landroid/util/TypedValue;
    .local v25, "labelValue":Landroid/util/TypedValue;
    move/from16 v4, p5

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ComponentParseUtils;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2022
    .local v1, "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2
    :try_end_20a
    .catchall {:try_start_1e6 .. :try_end_20a} :catchall_585

    if-eqz v2, :cond_214

    .line 2023
    :try_start_20c
    invoke-interface {v7, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_210
    .catchall {:try_start_20c .. :try_end_210} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2023
    return-object v2

    .line 2026
    :cond_214
    :try_start_214
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2027
    .local v2, "processName":Ljava/lang/String;
    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2029
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isCantSaveState()Z

    move-result v3
    :try_end_221
    .catchall {:try_start_214 .. :try_end_221} :catchall_585

    if-eqz v3, :cond_235

    .line 2032
    if-eqz v2, :cond_235

    :try_start_225
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_235

    .line 2033
    const-string v3, "cantSaveState applications can not use custom processes"

    invoke-interface {v7, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_231
    .catchall {:try_start_225 .. :try_end_231} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2033
    return-object v3

    .line 2038
    :cond_235
    :try_start_235
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getClassLoaderName()Ljava/lang/String;

    move-result-object v3
    :try_end_239
    .catchall {:try_start_235 .. :try_end_239} :catchall_585

    .line 2039
    .local v3, "classLoaderName":Ljava/lang/String;
    if-eqz v3, :cond_25c

    .line 2040
    :try_start_23b
    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25c

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid class loader name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_258
    .catchall {:try_start_23b .. :try_end_258} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2041
    return-object v4

    .line 2044
    :cond_25c
    const/16 v4, 0x3e

    const/4 v6, -0x1

    :try_start_25f
    invoke-virtual {v10, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2045
    const/16 v4, 0x40

    invoke-virtual {v10, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2046
    const/16 v4, 0x41

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_275
    .catchall {:try_start_25f .. :try_end_275} :catchall_585

    if-eqz v5, :cond_285

    .line 2047
    const/4 v5, 0x0

    :try_start_278
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 2049
    .local v4, "v":Z
    nop

    .line 2050
    if-eqz v4, :cond_281

    const/4 v5, 0x1

    goto :goto_282

    :cond_281
    const/4 v5, 0x0

    .line 2049
    :goto_282
    invoke-interface {v15, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_285
    .catchall {:try_start_278 .. :try_end_285} :catchall_24

    .line 2052
    .end local v4    # "v":Z
    :cond_285
    const/16 v4, 0x43

    :try_start_287
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_28b
    .catchall {:try_start_287 .. :try_end_28b} :catchall_585

    if-eqz v5, :cond_299

    .line 2054
    const/4 v5, 0x0

    :try_start_28e
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_299
    .catchall {:try_start_28e .. :try_end_299} :catchall_24

    .line 2058
    :cond_299
    const/16 v4, 0x44

    :try_start_29b
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5
    :try_end_29f
    .catchall {:try_start_29b .. :try_end_29f} :catchall_585

    if-eqz v5, :cond_2aa

    .line 2060
    const/4 v5, 0x0

    :try_start_2a2
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-interface {v15, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_2a9
    .catchall {:try_start_2a2 .. :try_end_2a9} :catchall_24

    goto :goto_2ab

    .line 2058
    :cond_2aa
    const/4 v5, 0x0

    .line 2064
    :goto_2ab
    const/16 v4, 0x48

    .line 2065
    :try_start_2ad
    invoke-static {v10, v14, v4, v7}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 2068
    .local v4, "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17
    :try_end_2b5
    .catchall {:try_start_2ad .. :try_end_2b5} :catchall_585

    if-eqz v17, :cond_2bf

    .line 2069
    :try_start_2b7
    invoke-interface {v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_2bb
    .catchall {:try_start_2b7 .. :try_end_2bb} :catchall_24

    .line 2078
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2069
    return-object v5

    .line 2071
    :cond_2bf
    nop

    .line 2072
    :try_start_2c0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;
    :try_end_2c6
    .catchall {:try_start_2c0 .. :try_end_2c6} :catchall_585

    move-object/from16 v19, v17

    .line 2073
    .local v19, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v5, v19

    .end local v19    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2cf

    .line 2074
    :try_start_2cc
    invoke-interface {v15, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_24

    .line 2078
    .end local v0    # "pname":Ljava/lang/CharSequence;
    .end local v1    # "processNameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "classLoaderName":Ljava/lang/String;
    .end local v4    # "knownActivityEmbeddingCertsResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "taskAffinity":Ljava/lang/String;
    .end local v16    # "taskAffinityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "manageSpaceActivity":Ljava/lang/String;
    .end local v23    # "factory":Ljava/lang/String;
    .end local v25    # "labelValue":Landroid/util/TypedValue;
    :cond_2cf
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 2079
    nop

    .line 2081
    const/4 v0, 0x0

    .line 2082
    .local v0, "hasActivityOrder":Z
    const/4 v1, 0x0

    .line 2083
    .local v1, "hasReceiverOrder":Z
    const/4 v2, 0x0

    .line 2084
    .local v2, "hasServiceOrder":Z
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    move/from16 v19, v1

    move/from16 v20, v2

    .line 2086
    .end local v1    # "hasReceiverOrder":Z
    .end local v2    # "hasServiceOrder":Z
    .local v9, "depth":I
    .local v19, "hasReceiverOrder":Z
    .local v20, "hasServiceOrder":Z
    :goto_2de
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v5, v1

    const/4 v4, 0x1

    .local v5, "type":I
    if-eq v1, v4, :cond_529

    const/4 v3, 0x3

    if-ne v5, v3, :cond_2fe

    .line 2088
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v9, :cond_2f0

    goto :goto_2fe

    :cond_2f0
    move/from16 v17, v5

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    goto/16 :goto_535

    .line 2089
    :cond_2fe
    :goto_2fe
    const/4 v1, 0x2

    if-eq v5, v1, :cond_302

    .line 2090
    goto :goto_2de

    .line 2094
    :cond_302
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2095
    .local v2, "tagName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2096
    .local v18, "isActivity":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_592

    :cond_30f
    goto :goto_356

    :sswitch_310
    const-string/jumbo v1, "service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    const/16 v16, 0x2

    goto :goto_358

    :sswitch_31c
    const-string v1, "activity-alias"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    move/from16 v16, v24

    goto :goto_358

    :sswitch_327
    const-string/jumbo v1, "receiver"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    move/from16 v16, v4

    goto :goto_358

    :sswitch_333
    const-string/jumbo v1, "provider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    move/from16 v16, v3

    goto :goto_358

    :sswitch_33f
    const-string v1, "apex-system-service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    const/4 v1, 0x5

    move/from16 v16, v1

    goto :goto_358

    :sswitch_34b
    const-string v1, "activity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30f

    const/16 v16, 0x0

    goto :goto_358

    :goto_356
    move/from16 v16, v6

    :goto_358
    packed-switch v16, :pswitch_data_5ac

    .line 2168
    move-object/from16 v23, v2

    move/from16 v21, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v22, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .local v17, "type":I
    .local v23, "tagName":Ljava/lang/String;
    .local v26, "depth":I
    .local v28, "sa":Landroid/content/res/TypedArray;
    .local v29, "targetSdk":I
    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseAppChildTag(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_4ff

    .line 2156
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v17    # "type":I
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :pswitch_386
    nop

    .line 2157
    invoke-static {v14, v13, v7}, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceUtils;->parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2159
    .local v1, "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedApexSystemService;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v16

    if-eqz v16, :cond_39d

    .line 2160
    nop

    .line 2161
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 2162
    .local v3, "systemService":Lcom/android/server/pm/pkg/component/ParsedApexSystemService;
    invoke-interface {v15, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2165
    .end local v3    # "systemService":Lcom/android/server/pm/pkg/component/ParsedApexSystemService;
    :cond_39d
    move-object v3, v1

    .line 2166
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object/from16 v23, v2

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object v10, v7

    goto/16 :goto_4ff

    .line 2144
    .end local v1    # "systemServiceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedApexSystemService;>;"
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_3b6
    sget-boolean v16, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/16 v22, 0x0

    move-object/from16 v1, p2

    move-object/from16 v23, v2

    .end local v2    # "tagName":Ljava/lang/String;
    .restart local v23    # "tagName":Ljava/lang/String;
    move-object/from16 v2, p3

    const/16 v21, 0x3

    move-object/from16 v3, p4

    move/from16 v25, v4

    move/from16 v4, v16

    move/from16 v17, v5

    const/16 v16, 0x0

    .end local v5    # "type":I
    .restart local v17    # "type":I
    move-object/from16 v5, v22

    move/from16 v22, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2147
    .local v1, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3f1

    .line 2148
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2149
    .local v2, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_3eb

    move/from16 v5, v25

    goto :goto_3ed

    :cond_3eb
    move/from16 v5, v16

    :goto_3ed
    or-int/2addr v0, v5

    .line 2150
    invoke-interface {v15, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2153
    .end local v2    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_3f1
    move-object v3, v1

    .line 2154
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move/from16 v27, v22

    move-object v10, v7

    move/from16 v22, v16

    goto/16 :goto_4ff

    .line 2133
    .end local v1    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v17    # "type":I
    .end local v23    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    :pswitch_402
    move-object/from16 v23, v2

    move/from16 v21, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v22, v6

    const/16 v16, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v17    # "type":I
    .restart local v23    # "tagName":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v3, 0x0

    .line 2134
    move/from16 v26, v9

    move/from16 v27, v22

    move/from16 v22, v16

    .end local v9    # "depth":I
    .restart local v26    # "depth":I
    move-object v9, v1

    move-object/from16 v28, v10

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v10, p2

    move/from16 v29, v11

    .end local v11    # "targetSdk":I
    .restart local v29    # "targetSdk":I
    move-object/from16 v11, p3

    move-object/from16 v30, v12

    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v30    # "pkgName":Ljava/lang/String;
    move-object/from16 v12, p4

    move/from16 v13, p5

    move v14, v2

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2137
    .local v1, "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_440

    .line 2138
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2141
    :cond_440
    move-object v3, v1

    .line 2142
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_4ff

    .line 2120
    .end local v1    # "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v17    # "type":I
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :pswitch_445
    move-object/from16 v23, v2

    move/from16 v21, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v22, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v23    # "tagName":Ljava/lang/String;
    .restart local v26    # "depth":I
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    .restart local v29    # "targetSdk":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v14, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v15, 0x0

    .line 2121
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2124
    .local v1, "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_489

    .line 2125
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 2126
    .local v2, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedService;->getOrder()I

    move-result v3

    if-eqz v3, :cond_482

    move/from16 v9, v25

    goto :goto_484

    :cond_482
    move/from16 v9, v22

    :goto_484
    or-int v20, v20, v9

    .line 2127
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2130
    .end local v2    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_489
    move-object v3, v1

    .line 2131
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v9, v6

    move-object v10, v7

    goto/16 :goto_4ff

    .line 2096
    .end local v1    # "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v17    # "type":I
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :pswitch_48e
    move-object/from16 v23, v2

    move/from16 v21, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v22, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v23    # "tagName":Ljava/lang/String;
    .restart local v26    # "depth":I
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    .restart local v29    # "targetSdk":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    goto :goto_4bb

    .line 2098
    .end local v17    # "type":I
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :pswitch_4a4
    move-object/from16 v23, v2

    move/from16 v21, v3

    move/from16 v25, v4

    move/from16 v17, v5

    move/from16 v27, v6

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v6, v15

    const/16 v22, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v9    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v23    # "tagName":Ljava/lang/String;
    .restart local v26    # "depth":I
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    .restart local v29    # "targetSdk":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    const/16 v18, 0x1

    .line 2101
    :goto_4bb
    iget-object v9, v8, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v14, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    const/4 v15, 0x0

    .line 2102
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2106
    .local v1, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4fc

    .line 2107
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2108
    .local v2, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-eqz v18, :cond_4ec

    .line 2109
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_4e5

    move/from16 v9, v25

    goto :goto_4e7

    :cond_4e5
    move/from16 v9, v22

    :goto_4e7
    or-int/2addr v0, v9

    .line 2110
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_4fc

    .line 2112
    :cond_4ec
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getOrder()I

    move-result v3

    if-eqz v3, :cond_4f5

    move/from16 v9, v25

    goto :goto_4f7

    :cond_4f5
    move/from16 v9, v22

    :goto_4f7
    or-int v19, v19, v9

    .line 2113
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2117
    .end local v2    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_4fc
    :goto_4fc
    move-object v3, v1

    .line 2118
    .restart local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v9, v6

    move-object v10, v7

    .line 2172
    .end local v1    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    :goto_4ff
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_50a

    .line 2173
    invoke-interface {v10, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2175
    :cond_50a
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_517

    .line 2176
    const-string v1, "Total number of components has exceeded the maximum number: 30000"

    invoke-interface {v10, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2178
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "isActivity":Z
    .end local v23    # "tagName":Ljava/lang/String;
    :cond_517
    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object v15, v9

    move-object v7, v10

    move/from16 v9, v26

    move/from16 v6, v27

    move-object/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v12, v30

    goto/16 :goto_2de

    .line 2086
    .end local v17    # "type":I
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v5    # "type":I
    .restart local v9    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :cond_529
    move/from16 v17, v5

    move/from16 v26, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    .line 2180
    .end local v5    # "type":I
    .end local v9    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v26    # "depth":I
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    .restart local v29    # "targetSdk":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    :goto_535
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_561

    .line 2181
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    .line 2180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_561

    .line 2184
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->generateAppDetailsHiddenActivity(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2185
    .local v1, "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_558

    .line 2190
    invoke-interface {v10, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 2193
    :cond_558
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v9, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2196
    .end local v1    # "a":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    :cond_561
    if-eqz v0, :cond_566

    .line 2197
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2199
    :cond_566
    if-eqz v19, :cond_56b

    .line 2200
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2202
    :cond_56b
    if-eqz v20, :cond_570

    .line 2203
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2208
    :cond_570
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2209
    invoke-direct {v8, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2210
    invoke-direct {v8, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V

    .line 2212
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasDomainURLs(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    invoke-interface {v9, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2214
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2078
    .end local v0    # "hasActivityOrder":Z
    .end local v17    # "type":I
    .end local v19    # "hasReceiverOrder":Z
    .end local v20    # "hasServiceOrder":Z
    .end local v26    # "depth":I
    .end local v28    # "sa":Landroid/content/res/TypedArray;
    .end local v29    # "targetSdk":I
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v11    # "targetSdk":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    :catchall_585
    move-exception v0

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object v9, v15

    move-object v10, v7

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "targetSdk":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v28    # "sa":Landroid/content/res/TypedArray;
    .restart local v29    # "targetSdk":I
    .restart local v30    # "pkgName":Ljava/lang/String;
    :goto_58e
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/TypedArray;->recycle()V

    .line 2079
    throw v0

    :sswitch_data_592
    .sparse-switch
        -0x62b40cf1 -> :sswitch_34b
        -0x5db446de -> :sswitch_33f
        -0x3adbfa0f -> :sswitch_333
        -0x30341611 -> :sswitch_327
        0x2f1ad612 -> :sswitch_31c
        0x7643c6b5 -> :sswitch_310
    .end sparse-switch

    :pswitch_data_5ac
    .packed-switch 0x0
        :pswitch_4a4
        :pswitch_48e
        :pswitch_445
        :pswitch_402
        :pswitch_3b6
        :pswitch_386
    .end packed-switch
.end method

.method private parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageDir"    # Ljava/io/File;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 394
    .local p3, "frameworkSplits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    const/4 v0, 0x0

    .line 395
    .local v0, "liteParseFlags":I
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_d

    .line 396
    move/from16 v0, p4

    .line 398
    :cond_d
    and-int/lit16 v1, v12, 0x200

    if-eqz v1, :cond_15

    .line 399
    or-int/lit16 v0, v0, 0x200

    move v13, v0

    goto :goto_16

    .line 398
    :cond_15
    move v13, v0

    .line 401
    .end local v0    # "liteParseFlags":I
    .local v13, "liteParseFlags":I
    :goto_16
    nop

    .line 402
    move-object/from16 v14, p3

    invoke-static {v10, v11, v14, v13}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    .line 404
    .local v15, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 405
    invoke-interface {v10, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 408
    :cond_28
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/parsing/PackageLite;

    .line 409
    .local v9, "lite":Landroid/content/pm/parsing/PackageLite;
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v0, :cond_55

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v0

    if-nez v0, :cond_55

    .line 410
    const/16 v0, -0x7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a coreApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 415
    :cond_55
    const/4 v1, 0x0

    .line 417
    .local v1, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->isIsolatedSplits()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 419
    :try_start_66
    invoke-static {v9}, Lcom/android/server/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v1, v0

    .line 420
    new-instance v0, Lcom/android/server/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v0, v9, v1, v12}, Lcom/android/server/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/parsing/PackageLite;Landroid/util/SparseArray;I)V
    :try_end_70
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_66 .. :try_end_70} :catch_73

    .line 423
    .local v0, "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    move-object v8, v0

    move-object v6, v1

    goto :goto_86

    .line 421
    .end local v0    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    :catch_73
    move-exception v0

    .line 422
    .local v0, "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    const/16 v2, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 425
    .end local v0    # "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    :cond_7f
    new-instance v0, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v0, v9, v12}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    move-object v8, v0

    move-object v6, v1

    .line 429
    .end local v1    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v6, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v8, "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    :goto_86
    :try_start_86
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, "baseApk":Ljava/io/File;
    nop

    .line 431
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_94} :catch_144
    .catchall {:try_start_86 .. :try_end_94} :catchall_13d

    .line 430
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v8

    move-object v11, v6

    .end local v6    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local v11, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move/from16 v6, p4

    :try_start_9c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 432
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_a4} :catch_137
    .catchall {:try_start_9c .. :try_end_a4} :catchall_131

    if-eqz v1, :cond_bc

    .line 433
    :try_start_a6
    invoke-interface {v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_aa} :catch_b5
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_ae

    .line 462
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 433
    return-object v1

    .line 462
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v3    # "baseApk":Ljava/io/File;
    :catchall_ae
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    goto/16 :goto_163

    .line 458
    :catch_b5
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    goto/16 :goto_14a

    .line 436
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .restart local v3    # "baseApk":Ljava/io/File;
    :cond_bc
    :try_start_bc
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 437
    .local v1, "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 438
    nop

    .line 439
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v5

    .line 438
    invoke-interface {v1, v2, v4, v5, v11}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 444
    invoke-virtual {v9}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 446
    .local v2, "num":I
    const/4 v4, 0x0

    move v6, v4

    .local v6, "i":I
    :goto_e3
    if-ge v6, v2, :cond_115

    .line 447
    invoke-interface {v8, v6}, Lcom/android/server/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v4
    :try_end_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_e9} :catch_137
    .catchall {:try_start_bc .. :try_end_e9} :catchall_131

    move-object/from16 v16, v8

    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .local v16, "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    move-object v8, v4

    .line 448
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    nop

    .line 449
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    move-object v6, v1

    move/from16 v7, v17

    move-object/from16 v18, v9

    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .local v18, "lite":Landroid/content/pm/parsing/PackageLite;
    move/from16 v9, p4

    :try_start_fa
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 450
    .local v4, "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 451
    invoke-interface {v10, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_108
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fa .. :try_end_108} :catch_12f
    .catchall {:try_start_fa .. :try_end_108} :catchall_162

    .line 462
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 451
    return-object v5

    .line 446
    .end local v4    # "split":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    :cond_10c
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    .end local v17    # "i":I
    .restart local v6    # "i":I
    goto :goto_e3

    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .local v8, "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :cond_115
    move/from16 v17, v6

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v6    # "i":I
    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v17    # "i":I
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    goto :goto_120

    .line 437
    .end local v2    # "num":I
    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v17    # "i":I
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :cond_11c
    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .line 456
    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    :goto_120
    :try_start_120
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 457
    invoke-interface {v10, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_12b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_120 .. :try_end_12b} :catch_12f
    .catchall {:try_start_120 .. :try_end_12b} :catchall_162

    .line 462
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    return-object v2

    .line 458
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .end local v3    # "baseApk":Ljava/io/File;
    :catch_12f
    move-exception v0

    goto :goto_14a

    .line 462
    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :catchall_131
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    goto :goto_163

    .line 458
    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :catch_137
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    goto :goto_14a

    .line 462
    .end local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .local v6, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :catchall_13d
    move-exception v0

    move-object v11, v6

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .end local v6    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    goto :goto_163

    .line 458
    .end local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    .restart local v6    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    :catch_144
    move-exception v0

    move-object v11, v6

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    .line 459
    .end local v6    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v8    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .end local v9    # "lite":Landroid/content/pm/parsing/PackageLite;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local v16    # "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    .restart local v18    # "lite":Landroid/content/pm/parsing/PackageLite;
    :goto_14a
    :try_start_14a
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_154

    const/4 v1, -0x2

    goto :goto_156

    .line 460
    :cond_154
    const/16 v1, -0x64

    :goto_156
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-interface {v10, v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_15e
    .catchall {:try_start_14a .. :try_end_15e} :catchall_162

    .line 462
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 459
    return-object v1

    .line 462
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_162
    move-exception v0

    :goto_163
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 463
    throw v0
.end method

.method public static parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p4, "collectCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 289
    .local p3, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    new-instance v6, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;

    new-instance v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$1;

    invoke-direct {v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$1;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;-><init>(Z[Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    .line 309
    .local v0, "parser":Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 310
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 311
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 314
    :cond_1f
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 315
    .local v2, "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    if-eqz p4, :cond_40

    .line 316
    const/4 v3, 0x0

    .line 317
    invoke-static {p0, v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 318
    .local v3, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 319
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 321
    :cond_37
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 325
    .end local v3    # "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_40
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    .line 327
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static parseDefaultOneTime(Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "parseFlags"    # I
    .param p3, "collectCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 273
    .local p2, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    .line 274
    .local v0, "input":Landroid/content/pm/parsing/result/ParseInput;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "minExtensionVersions"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 1676
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestExtensionSdk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1678
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_8
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1679
    .local v1, "sdkVersion":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_85

    .line 1681
    .local v2, "minVersion":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1682
    nop

    .line 1684
    const/16 v3, -0x6c

    if-gez v1, :cond_20

    .line 1685
    const-string v4, "<extension-sdk> must specify an sdkVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1689
    :cond_20
    if-gez v2, :cond_29

    .line 1690
    const-string v4, "<extension-sdk> must specify minExtensionVersion >= 0"

    invoke-interface {p0, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1696
    :cond_29
    :try_start_29
    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    .line 1697
    .local v4, "version":I
    if-ge v4, v2, :cond_5d

    .line 1698
    const/16 v5, -0xc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extension version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which exceeds device version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_5c} :catch_66

    return-object v3

    .line 1707
    .end local v4    # "version":I
    :cond_5d
    nop

    .line 1708
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    invoke-interface {p0, p3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1703
    :catch_66
    move-exception v4

    .line 1704
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Specified sdkVersion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1681
    .end local v1    # "sdkVersion":I
    .end local v2    # "minVersion":I
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_85
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1682
    throw v1
.end method

.method private static parseFeatureGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1507
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1508
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v1, 0x0

    .line 1509
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1511
    .local v2, "depth":I
    :goto_a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6f

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1b

    .line 1513
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_6f

    .line 1514
    :cond_1b
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1f

    .line 1515
    goto :goto_a

    .line 1518
    :cond_1f
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1519
    .local v3, "innerTagName":Ljava/lang/String;
    const-string/jumbo v6, "uses-feature"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1520
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v6

    .line 1523
    .local v6, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget v7, v6, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v5, v7

    iput v5, v6, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1524
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1525
    .end local v6    # "featureInfo":Landroid/content/pm/FeatureInfo;
    goto :goto_6e

    .line 1526
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1528
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1529
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1526
    const-string v6, "PackageParsing"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    .end local v3    # "innerTagName":Ljava/lang/String;
    :goto_6e
    goto :goto_a

    .line 1533
    :cond_6f
    if-eqz v1, :cond_83

    .line 1534
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1535
    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1538
    :cond_83
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1539
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private static parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1484
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 1485
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1489
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 1490
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 1491
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    .line 1492
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 1495
    :cond_24
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1496
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_35

    .line 1498
    :cond_30
    nop

    .line 1500
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1498
    return-object v0

    .line 1500
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1501
    throw v2
.end method

.method private static parseInstrumentation(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2911
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationUtils;->parseInstrumentation(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2913
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2914
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2916
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseKeySets(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 25
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 1089
    .local v5, "outerDepth":I
    const/4 v0, -0x1

    .line 1091
    .local v0, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 1092
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 1093
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1094
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1095
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v6

    move v6, v0

    .line 1096
    .end local v0    # "currentKeySetDepth":I
    .local v6, "currentKeySetDepth":I
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "currentKeySet":Ljava/lang/String;
    :goto_24
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const-string v13, "PackageParsing"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_22e

    const/4 v0, 0x3

    if-ne v12, v0, :cond_40

    .line 1097
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_38

    goto :goto_40

    :cond_38
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    goto/16 :goto_234

    .line 1098
    :cond_40
    :goto_40
    if-ne v12, v0, :cond_51

    .line 1099
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_4b

    .line 1100
    const/4 v11, 0x0

    .line 1101
    const/4 v6, -0x1

    goto :goto_24

    .line 1099
    :cond_4b
    move/from16 v18, v5

    move/from16 v16, v6

    goto/16 :goto_16c

    .line 1105
    :cond_51
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1106
    .local v15, "tagName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_33e

    :cond_5c
    goto :goto_7d

    :sswitch_5d
    const-string/jumbo v14, "public-key"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    const/4 v14, 0x1

    goto :goto_7e

    :sswitch_68
    const-string v14, "key-set"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    const/4 v14, 0x0

    goto :goto_7e

    :sswitch_72
    const-string/jumbo v14, "upgrade-key-set"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    const/4 v14, 0x2

    goto :goto_7e

    :goto_7d
    const/4 v14, -0x1

    :goto_7e
    const-string v0, "Improperly nested \'key-set\' tag at "

    packed-switch v14, :pswitch_data_34c

    .line 1181
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .local v16, "currentKeySetDepth":I
    .local v18, "outerDepth":I
    .local v19, "type":I
    const-string v0, "<key-sets>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1183
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_228

    .line 1184
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 1169
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v16    # "currentKeySetDepth":I
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_9a
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1172
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_a1
    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_b7

    .line 1177
    .end local v0    # "name":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1178
    nop

    .line 1179
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    goto/16 :goto_228

    .line 1177
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    :catchall_b7
    move-exception v0

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1178
    throw v0

    .line 1124
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    :pswitch_bc
    if-nez v11, :cond_d8

    .line 1125
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_d8
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1131
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_df
    invoke-static {v0, v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_1d7

    .line 1133
    .local v0, "publicKeyName":Ljava/lang/String;
    move/from16 v18, v5

    const/4 v5, 0x1

    .end local v5    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :try_start_e6
    invoke-static {v5, v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v5
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1d1

    .line 1135
    .local v5, "encodedKey":Ljava/lang/String;
    if-nez v5, :cond_129

    :try_start_ec
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_129

    .line 1136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f7
    .catchall {:try_start_ec .. :try_end_f7} :catchall_122

    move/from16 v16, v6

    .end local v6    # "currentKeySetDepth":I
    .restart local v16    # "currentKeySetDepth":I
    :try_start_f9
    const-string v6, "\'public-key\' "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " must define a public-key value on first use at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1138
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1136
    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_119
    .catchall {:try_start_f9 .. :try_end_119} :catchall_11d

    .line 1165
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1136
    return-object v6

    .line 1165
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v5    # "encodedKey":Ljava/lang/String;
    :catchall_11d
    move-exception v0

    move/from16 v19, v12

    goto/16 :goto_1de

    .end local v16    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :catchall_122
    move-exception v0

    move/from16 v16, v6

    move/from16 v19, v12

    .end local v6    # "currentKeySetDepth":I
    .restart local v16    # "currentKeySetDepth":I
    goto/16 :goto_1de

    .line 1135
    .end local v16    # "currentKeySetDepth":I
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .restart local v5    # "encodedKey":Ljava/lang/String;
    .restart local v6    # "currentKeySetDepth":I
    :cond_129
    move/from16 v16, v6

    .line 1139
    .end local v6    # "currentKeySetDepth":I
    .restart local v16    # "currentKeySetDepth":I
    if-eqz v5, :cond_1ba

    .line 1140
    nop

    .line 1141
    :try_start_12e
    invoke-static {v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6

    .line 1142
    .local v6, "currentKey":Ljava/security/PublicKey;
    if-nez v6, :cond_172

    .line 1143
    move-object/from16 v17, v5

    .end local v5    # "encodedKey":Ljava/lang/String;
    .local v17, "encodedKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13b
    .catchall {:try_start_12e .. :try_end_13b} :catchall_1b6

    move/from16 v19, v12

    .end local v12    # "type":I
    .restart local v19    # "type":I
    :try_start_13d
    const-string v12, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " key-set "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1143
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1148
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_168
    .catchall {:try_start_13d .. :try_end_168} :catchall_1cf

    .line 1165
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1149
    nop

    .line 1096
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "currentKeySetDepth":I
    .end local v17    # "encodedKey":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .local v5, "outerDepth":I
    .local v6, "currentKeySetDepth":I
    :goto_16c
    move/from16 v6, v16

    move/from16 v5, v18

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .restart local v16    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    goto/16 :goto_24

    .line 1151
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .local v5, "encodedKey":Ljava/lang/String;
    .local v6, "currentKey":Ljava/security/PublicKey;
    .restart local v12    # "type":I
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_172
    move-object/from16 v17, v5

    move/from16 v19, v12

    .end local v5    # "encodedKey":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v17    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "type":I
    :try_start_176
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1b2

    .line 1152
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    goto :goto_1b2

    .line 1157
    :cond_189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1159
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1157
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_1ae
    .catchall {:try_start_176 .. :try_end_1ae} :catchall_1cf

    .line 1165
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1157
    return-object v5

    .line 1155
    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1be

    .line 1165
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v6    # "currentKey":Ljava/security/PublicKey;
    .end local v17    # "encodedKey":Ljava/lang/String;
    .end local v19    # "type":I
    .restart local v12    # "type":I
    :catchall_1b6
    move-exception v0

    move/from16 v19, v12

    .end local v12    # "type":I
    .restart local v19    # "type":I
    goto :goto_1de

    .line 1139
    .end local v19    # "type":I
    .restart local v0    # "publicKeyName":Ljava/lang/String;
    .restart local v5    # "encodedKey":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_1ba
    move-object/from16 v17, v5

    move/from16 v19, v12

    .line 1162
    .end local v5    # "encodedKey":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v17    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "type":I
    :goto_1be
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1163
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1ca
    .catchall {:try_start_1b2 .. :try_end_1ca} :catchall_1cf

    .line 1165
    .end local v0    # "publicKeyName":Ljava/lang/String;
    .end local v17    # "encodedKey":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1166
    nop

    .line 1167
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    goto :goto_228

    .line 1165
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    :catchall_1cf
    move-exception v0

    goto :goto_1de

    .end local v16    # "currentKeySetDepth":I
    .end local v19    # "type":I
    .local v6, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1d1
    move-exception v0

    move/from16 v16, v6

    move/from16 v19, v12

    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "currentKeySetDepth":I
    .restart local v19    # "type":I
    goto :goto_1de

    .end local v16    # "currentKeySetDepth":I
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .local v5, "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :catchall_1d7
    move-exception v0

    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "type":I
    :goto_1de
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1166
    throw v0

    .line 1108
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "currentKeySetDepth":I
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .restart local v5    # "outerDepth":I
    .restart local v6    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :pswitch_1e2
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "type":I
    if-eqz v11, :cond_204

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1110
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1112
    :cond_204
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1114
    .local v5, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_20b
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "keysetName":Ljava/lang/String;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    move-object v11, v0

    .line 1118
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_21c
    .catchall {:try_start_20b .. :try_end_21c} :catchall_223

    move v0, v6

    .line 1120
    .end local v16    # "currentKeySetDepth":I
    .local v0, "currentKeySetDepth":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1121
    nop

    .line 1122
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    move v6, v0

    goto :goto_22a

    .line 1120
    .end local v0    # "currentKeySetDepth":I
    .restart local v5    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "currentKeySetDepth":I
    :catchall_223
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1121
    throw v0

    .line 1188
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tagName":Ljava/lang/String;
    :cond_228
    :goto_228
    move/from16 v6, v16

    .end local v16    # "currentKeySetDepth":I
    .restart local v6    # "currentKeySetDepth":I
    :goto_22a
    move/from16 v5, v18

    goto/16 :goto_24

    .line 1096
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .local v5, "outerDepth":I
    .restart local v12    # "type":I
    :cond_22e
    move/from16 v18, v5

    move/from16 v16, v6

    move/from16 v19, v12

    .line 1189
    .end local v5    # "outerDepth":I
    .end local v6    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "currentKeySetDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "type":I
    :goto_234
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1191
    .local v5, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    const-string v12, "Package"

    if-eqz v6, :cond_264

    .line 1192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " AndroidManifest.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 1196
    :cond_264
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_30c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1197
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1198
    .local v15, "keySetName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v17

    const-string v3, " AndroidManifest.xml \'key-set\' "

    if-nez v17, :cond_2b3

    .line 1199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_26c

    .line 1203
    :cond_2b3
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e0

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_26c

    .line 1210
    :cond_2e0
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_306

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1211
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v2, v15, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1212
    .end local v4    # "s":Ljava/lang/String;
    move-object/from16 v3, v20

    goto :goto_2ea

    .line 1213
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v15    # "keySetName":Ljava/lang/String;
    :cond_306
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto/16 :goto_26c

    .line 1214
    :cond_30c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_322

    .line 1215
    invoke-interface {v2, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1221
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 1217
    :cond_322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AndroidManifest.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    :sswitch_data_33e
    .sparse-switch
        -0x519cd6bd -> :sswitch_72
        -0x30ac780c -> :sswitch_68
        0x717268fb -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_34c
    .packed-switch 0x0
        :pswitch_1e2
        :pswitch_bc
        :pswitch_9a
    .end packed-switch
.end method

.method private static parseLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2427
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2431
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2433
    .local v1, "lname":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 2434
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2435
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2436
    invoke-interface {p0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2439
    :cond_1f
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    .line 2441
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2439
    return-object v2

    .line 2441
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2442
    throw v1
.end method

.method public static parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 22
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedComponent;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "tagName"    # Ljava/lang/String;
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 3003
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3006
    .local v5, "sa":Landroid/content/res/TypedArray;
    nop

    .line 3007
    const/4 v0, 0x0

    :try_start_10
    invoke-static {v0, v0, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v6

    .line 3006
    invoke-static {v6}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3008
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_35

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " requires an android:name attribute"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_117

    .line 3052
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3009
    return-object v0

    .line 3012
    :cond_35
    :try_start_35
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 3013
    .local v13, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    if-eqz p1, :cond_42

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_43

    :cond_42
    move-object v8, v7

    :goto_43
    move-object v14, v8

    .line 3014
    .local v14, "className":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v15, v8

    .line 3015
    .local v15, "v":Landroid/util/TypedValue;
    if-eqz v15, :cond_5e

    iget v8, v15, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_5e

    .line 3016
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->resourceId:I

    const/4 v10, 0x1

    move-object v7, v0

    move-object v8, v6

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .local v0, "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_f4

    .line 3018
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_5e
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    move-object v15, v9

    .line 3019
    if-eqz v15, :cond_fc

    .line 3020
    iget v9, v15, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7d

    .line 3021
    invoke-virtual {v15}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3022
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3023
    .local v7, "stringValue":Ljava/lang/String;
    :cond_75
    new-instance v8, Landroid/content/pm/PackageManager$Property;

    invoke-direct {v8, v6, v7, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 3024
    .end local v7    # "stringValue":Ljava/lang/String;
    .local v0, "property":Landroid/content/pm/PackageManager$Property;
    goto/16 :goto_f4

    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_7d
    iget v7, v15, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x12

    if-ne v7, v9, :cond_8f

    .line 3025
    new-instance v7, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_8a

    move v0, v8

    :cond_8a
    invoke-direct {v7, v6, v0, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .restart local v0    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_f4

    .line 3026
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_8f
    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v0, v7, :cond_a8

    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v0, v7, :cond_a8

    .line 3028
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    iget v9, v15, Landroid/util/TypedValue;->data:I

    const/4 v10, 0x0

    move-object v7, v0

    move-object v8, v6

    move-object v11, v13

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_f4

    .line 3029
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_a8
    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_b7

    .line 3030
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v15}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    invoke-direct {v0, v6, v7, v13, v14}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "property":Landroid/content/pm/PackageManager$Property;
    goto :goto_f4

    .line 3033
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_b7
    const-string v0, "PackageParsing"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3036
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3037
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3038
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3033
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v0, 0x0

    .line 3050
    .restart local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :goto_f4
    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_f8
    .catchall {:try_start_35 .. :try_end_f8} :catchall_117

    .line 3052
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3050
    return-object v7

    .line 3046
    .end local v0    # "property":Landroid/content/pm/PackageManager$Property;
    :cond_fc
    :try_start_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " requires an android:value or android:resource attribute"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_113
    .catchall {:try_start_fc .. :try_end_113} :catchall_117

    .line 3052
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3046
    return-object v0

    .line 3052
    .end local v6    # "name":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "className":Ljava/lang/String;
    .end local v15    # "v":Landroid/util/TypedValue;
    :catchall_117
    move-exception v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3053
    throw v0
.end method

.method private parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "apkFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 474
    nop

    .line 475
    invoke-static {p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 476
    .local v0, "liteResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 477
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 480
    :cond_10
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/PackageLite;

    .line 481
    .local v1, "lite":Landroid/content/pm/parsing/PackageLite;
    iget-boolean v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mOnlyCoreApps:Z

    if-eqz v2, :cond_3a

    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->isCoreApp()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 482
    const/16 v2, -0x7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 486
    :cond_3a
    new-instance v7, Lcom/android/server/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v7, v1, p3}, Lcom/android/server/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/parsing/PackageLite;I)V

    .line 488
    .local v7, "assetLoader":Lcom/android/server/pm/split/SplitAssetLoader;
    nop

    .line 490
    :try_start_40
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 488
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseBaseApk(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/split/SplitAssetLoader;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 492
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 493
    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_56} :catch_72
    .catchall {:try_start_40 .. :try_end_56} :catchall_70

    .line 502
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 493
    return-object v3

    .line 496
    :cond_5a
    :try_start_5a
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 497
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->isUse32bitAbi()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 496
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6c} :catch_72
    .catchall {:try_start_5a .. :try_end_6c} :catchall_70

    .line 502
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 496
    return-object v3

    .line 502
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    :catchall_70
    move-exception v2

    goto :goto_90

    .line 498
    :catch_72
    move-exception v2

    .line 499
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, -0x66

    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_70

    .line 502
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 499
    return-object v3

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    :goto_90
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 503
    throw v2
.end method

.method private static parseOriginalPackage(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2921
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2923
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2926
    .local v1, "orig":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2927
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2929
    :cond_18
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 2931
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2929
    return-object v2

    .line 2931
    .end local v1    # "orig":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2932
    throw v1
.end method

.method private static parseOverlay(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2819
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2821
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2822
    .local v2, "target":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2824
    .local v4, "priority":I
    if-nez v2, :cond_1c

    .line 2825
    const-string v1, "<overlay> does not specify a target package"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_af

    .line 2854
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2825
    return-object v1

    .line 2826
    :cond_1c
    if-ltz v4, :cond_a5

    const/16 v5, 0x270f

    if-le v4, v5, :cond_24

    goto/16 :goto_a5

    .line 2831
    :cond_24
    const/4 v5, 0x5

    :try_start_25
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2833
    .local v5, "propName":Ljava/lang/String;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2835
    .local v6, "propValue":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 2836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping target and overlay pair "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2837
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": overlay ignored due to required system property: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2840
    .local v1, "message":Ljava/lang/String;
    const-string v3, "PackageParsing"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_25 .. :try_end_72} :catchall_af

    .line 2854
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2841
    return-object v3

    .line 2844
    .end local v1    # "message":Ljava/lang/String;
    :cond_76
    :try_start_76
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2845
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2846
    invoke-interface {v1, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x3

    .line 2848
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2847
    invoke-interface {v1, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x2

    .line 2850
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2849
    invoke-interface {v1, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    const/4 v7, 0x4

    .line 2852
    invoke-static {v3, v7, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v3

    .line 2851
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2844
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_af

    .line 2854
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2844
    return-object v1

    .line 2827
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "propValue":Ljava/lang/String;
    :cond_a5
    :goto_a5
    :try_start_a5
    const-string v1, "<overlay> priority must be between 0 and 9999"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_af

    .line 2854
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2827
    return-object v1

    .line 2854
    .end local v2    # "target":Ljava/lang/String;
    .end local v4    # "priority":I
    :catchall_af
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2855
    throw v1
.end method

.method private static parsePermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermission(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1251
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1252
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1254
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parsePermissionGroup(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1238
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionGroup(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1240
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1241
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1243
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parsePermissionTree(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/server/pm/pkg/component/ParsedPermissionUtils;->parsePermissionTree(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1262
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedPermission;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1263
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1265
    :cond_11
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermission;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseProcesses(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2626
    nop

    .line 2627
    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/component/ParsedProcessUtils;->parseProcesses([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2629
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2630
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 2633
    :cond_16
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseProfileable(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2639
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProfileable:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2641
    .local v0, "sa":Landroid/content/res/TypedArray;
    :try_start_6
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isProfileableByShell()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    .line 2642
    invoke-static {v2, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v3

    .line 2641
    :goto_18
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    .line 2643
    .local v1, "newPkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->isProfileable()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2644
    invoke-static {v3, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->bool(ZILandroid/content/res/TypedArray;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    nop

    .line 2643
    :goto_2b
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_37

    .line 2646
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2643
    return-object v2

    .line 2646
    .end local v1    # "newPkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2647
    throw v1
.end method

.method private static parseProtectedBroadcast(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2860
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2864
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonResString(ILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 2865
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 2866
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2868
    :cond_10
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 2870
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2868
    return-object v2

    .line 2870
    .end local v1    # "name":Ljava/lang/String;
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2871
    throw v1
.end method

.method private static parseQueries(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 24
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1742
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 1744
    .local v12, "depth":I
    :goto_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_1c6

    const/4 v0, 0x3

    if-ne v13, v0, :cond_1d

    .line 1746
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_1c6

    .line 1747
    :cond_1d
    const/4 v0, 0x2

    if-eq v13, v0, :cond_21

    .line 1748
    goto :goto_c

    .line 1750
    :cond_21
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 1751
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoUtils;->parseIntentInfo(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1754
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1755
    invoke-interface {v8, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 1758
    :cond_47
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1760
    .local v1, "intentInfo":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    .line 1761
    .local v2, "data":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1762
    .local v3, "dataType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1763
    .local v4, "host":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    .line 1764
    .local v5, "numActions":I
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v6

    .line 1765
    .local v6, "numSchemes":I
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v7

    .line 1766
    .local v7, "numTypes":I
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    .line 1767
    .local v15, "numHosts":I
    if-nez v6, :cond_72

    if-nez v7, :cond_72

    if-nez v5, :cond_72

    .line 1768
    const-string v14, "intent tags must contain either an action or data."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    .line 1770
    :cond_72
    if-le v5, v14, :cond_7b

    .line 1771
    const-string v14, "intent tag may have at most one action."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    .line 1773
    :cond_7b
    if-le v7, v14, :cond_84

    .line 1774
    const-string v14, "intent tag may have at most one data type."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    .line 1776
    :cond_84
    if-le v6, v14, :cond_8d

    .line 1777
    const-string v14, "intent tag may have at most one data scheme."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    .line 1779
    :cond_8d
    if-le v15, v14, :cond_96

    .line 1780
    const-string v14, "intent tag may have at most one data host."

    invoke-interface {v8, v14}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14

    return-object v14

    .line 1782
    :cond_96
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object/from16 v17, v16

    .line 1783
    .local v17, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .local v16, "i":I
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v14

    move-object/from16 v18, v0

    move/from16 v0, v16

    .end local v16    # "i":I
    .local v0, "i":I
    .local v14, "max":I
    .local v18, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    :goto_a7
    if-ge v0, v14, :cond_bd

    .line 1784
    move-object/from16 v16, v2

    .end local v2    # "data":Landroid/net/Uri;
    .local v16, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .local v19, "dataType":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    goto :goto_a7

    .end local v16    # "data":Landroid/net/Uri;
    .end local v19    # "dataType":Ljava/lang/String;
    .restart local v2    # "data":Landroid/net/Uri;
    .local v3, "dataType":Ljava/lang/String;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_bd
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .line 1786
    .end local v0    # "i":I
    .end local v2    # "data":Landroid/net/Uri;
    .end local v14    # "max":I
    .end local v17    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .restart local v16    # "data":Landroid/net/Uri;
    .restart local v19    # "dataType":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v15, v0, :cond_ce

    .line 1787
    invoke-virtual {v1}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    aget-object v4, v2, v14

    goto :goto_cf

    .line 1786
    :cond_ce
    const/4 v14, 0x0

    .line 1789
    :goto_cf
    const-string v2, "/*"

    if-ne v6, v0, :cond_ef

    .line 1790
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1791
    move/from16 v17, v6

    .end local v6    # "numSchemes":I
    .local v17, "numSchemes":I
    invoke-virtual {v1, v14}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1792
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1793
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1794
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .end local v16    # "data":Landroid/net/Uri;
    .local v0, "data":Landroid/net/Uri;
    goto :goto_f3

    .line 1789
    .end local v0    # "data":Landroid/net/Uri;
    .end local v17    # "numSchemes":I
    .restart local v6    # "numSchemes":I
    .restart local v16    # "data":Landroid/net/Uri;
    :cond_ef
    move/from16 v17, v6

    .end local v6    # "numSchemes":I
    .restart local v17    # "numSchemes":I
    move-object/from16 v0, v16

    .line 1796
    .end local v16    # "data":Landroid/net/Uri;
    .restart local v0    # "data":Landroid/net/Uri;
    :goto_f3
    const/4 v6, 0x1

    if-ne v7, v6, :cond_136

    .line 1797
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v14

    .line 1800
    .end local v19    # "dataType":Ljava/lang/String;
    .local v14, "dataType":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_115

    .line 1801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 1803
    :cond_115
    if-nez v0, :cond_133

    .line 1804
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 1805
    move-object/from16 v16, v0

    .end local v0    # "data":Landroid/net/Uri;
    .restart local v16    # "data":Landroid/net/Uri;
    const-string v0, "content"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1806
    const-string v6, "*"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1807
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1808
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .end local v16    # "data":Landroid/net/Uri;
    .restart local v0    # "data":Landroid/net/Uri;
    goto :goto_13a

    .line 1803
    :cond_133
    move-object/from16 v16, v0

    .end local v0    # "data":Landroid/net/Uri;
    .restart local v16    # "data":Landroid/net/Uri;
    goto :goto_13a

    .line 1796
    .end local v14    # "dataType":Ljava/lang/String;
    .end local v16    # "data":Landroid/net/Uri;
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v19    # "dataType":Ljava/lang/String;
    :cond_136
    move-object/from16 v16, v0

    .end local v0    # "data":Landroid/net/Uri;
    .restart local v16    # "data":Landroid/net/Uri;
    move-object/from16 v14, v19

    .line 1811
    .end local v16    # "data":Landroid/net/Uri;
    .end local v19    # "dataType":Ljava/lang/String;
    .restart local v0    # "data":Landroid/net/Uri;
    .restart local v14    # "dataType":Ljava/lang/String;
    :goto_13a
    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1812
    const/4 v2, 0x1

    if-ne v5, v2, :cond_148

    .line 1813
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    :cond_148
    invoke-interface {v9, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1816
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intentInfo":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "numActions":I
    .end local v7    # "numTypes":I
    .end local v14    # "dataType":Ljava/lang/String;
    .end local v15    # "numHosts":I
    .end local v17    # "numSchemes":I
    .end local v18    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;>;"
    goto/16 :goto_c

    :cond_14d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1817
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesPackage:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1819
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1821
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 1822
    const-string v2, "Package name is missing from package tag."

    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 1824
    :cond_172
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_1c4

    .line 1825
    :cond_17a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 1826
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestQueriesProvider:[I

    invoke-virtual {v10, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1829
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_18e
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, "authorities":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 1832
    const/16 v2, -0x6c

    const-string v3, "Authority missing from provider tag."

    invoke-interface {v8, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1a0
    .catchall {:try_start_18e .. :try_end_1a0} :catchall_1bf

    .line 1842
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1832
    return-object v2

    .line 1837
    :cond_1a4
    :try_start_1a4
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    .local v2, "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :goto_1ab
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 1839
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_1b8
    .catchall {:try_start_1a4 .. :try_end_1b8} :catchall_1bf

    goto :goto_1ab

    .line 1842
    .end local v0    # "authorities":Ljava/lang/String;
    .end local v2    # "authoritiesTokenizer":Ljava/util/StringTokenizer;
    :cond_1b9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    nop

    .line 1844
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    goto/16 :goto_c

    .line 1842
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :catchall_1bf
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1843
    throw v0

    .line 1825
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_1c4
    :goto_1c4
    goto/16 :goto_c

    .line 1846
    :cond_1c6
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1410
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1413
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1416
    const-string v2, "Feature name is missing from <required-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1417
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1419
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1415
    return-object v2

    .line 1419
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1420
    throw v1
.end method

.method private parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1425
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRequiredNotFeature:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1428
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1431
    const-string v2, "Feature name is missing from <required-not-feature> tag."

    invoke-interface {p1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    goto :goto_1c

    .line 1432
    :cond_18
    invoke-interface {p1, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 1434
    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1430
    return-object v2

    .line 1434
    .end local v1    # "featureName":Ljava/lang/String;
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1435
    throw v1
.end method

.method private static parseRestrictUpdateHash(ILandroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p0, "flags"    # I
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1714
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4d

    .line 1715
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1717
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, "hash":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 1722
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1723
    .local v2, "hashLength":I
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 1724
    .local v3, "hashBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_3b

    .line 1725
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v4, 0x1

    .line 1727
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1724
    add-int/lit8 v4, v4, 0x2

    goto :goto_1a

    .line 1729
    .end local v4    # "i":I
    :cond_3b
    invoke-interface {p2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1730
    nop

    .end local v2    # "hashLength":I
    .end local v3    # "hashBytes":[B
    goto :goto_44

    .line 1731
    :cond_40
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_48

    .line 1734
    .end local v1    # "hash":Ljava/lang/String;
    :goto_44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1735
    goto :goto_4d

    .line 1734
    :catchall_48
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1735
    throw v1

    .line 1737
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_4d
    :goto_4d
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseSdkLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2353
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSdkLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2356
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2358
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2363
    .local v2, "versionMajor":I
    if-eqz v1, :cond_66

    if-gez v2, :cond_16

    goto :goto_66

    .line 2366
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 2367
    const/16 v3, -0x6b

    const-string/jumbo v4, "sharedUserId not allowed in SDK library"

    invoke-interface {p3, v3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_8b

    .line 2380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2367
    return-object v3

    .line 2371
    :cond_29
    :try_start_29
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 2372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple SDKs for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2373
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2372
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_8b

    .line 2380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2372
    return-object v3

    .line 2376
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2377
    invoke-interface {v4, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2378
    invoke-interface {v4, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2376
    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_8b

    .line 2380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2376
    return-object v3

    .line 2364
    :cond_66
    :goto_66
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sdk-library declaration name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_8b

    .line 2380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2364
    return-object v3

    .line 2380
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "versionMajor":I
    :catchall_8b
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2381
    throw v1
.end method

.method private static parseSharedUser(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/TypedArray;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/TypedArray;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1055
    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->nonConfigString(IILandroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1057
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4f

    .line 1061
    invoke-static {p0, v1, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1063
    .local v2, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1064
    const/16 v0, -0x6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1066
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1064
    invoke-interface {p0, v0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 1070
    .end local v2    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_4f
    const/4 v2, 0x0

    .line 1071
    .local v2, "leaving":Z
    invoke-static {}, Lcom/android/server/pm/SharedUidMigration;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_64

    .line 1072
    const/16 v4, 0xd

    invoke-static {v0, v4, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInteger(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 1073
    .local v4, "max":I
    if-eqz v4, :cond_63

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v4, v5, :cond_63

    move v0, v3

    :cond_63
    move v2, v0

    .line 1076
    .end local v4    # "max":I
    :cond_64
    nop

    .line 1077
    invoke-interface {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 1078
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    const/4 v3, 0x3

    .line 1079
    invoke-static {v3, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->resId(ILandroid/content/res/TypedArray;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 1076
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;ILandroid/content/res/AssetManager;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "splitIndex"    # I
    .param p4, "assets"    # Landroid/content/res/AssetManager;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "I",
            "Landroid/content/res/AssetManager;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 600
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    .line 605
    .local v0, "apkPath":Ljava/lang/String;
    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, "cookie":I
    if-nez v1, :cond_26

    .line 607
    const/16 v2, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 610
    :cond_26
    :try_start_26
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p4, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_8e

    .line 612
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2c
    new-instance v6, Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    invoke-direct {v6, p4, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 613
    .local v6, "res":Landroid/content/res/Resources;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v2

    move v8, p5

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 615
    .local v3, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 616
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 617
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 618
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-interface {p1, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_75
    .catchall {:try_start_2c .. :try_end_75} :catchall_82

    .line 622
    if-eqz v2, :cond_7a

    :try_start_77
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 616
    :cond_7a
    return-object v4

    .line 621
    :cond_7b
    nop

    .line 622
    if-eqz v2, :cond_81

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_8e

    .line 621
    :cond_81
    return-object v3

    .line 610
    .end local v3    # "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v6    # "res":Landroid/content/res/Resources;
    :catchall_82
    move-exception v3

    if-eqz v2, :cond_8d

    :try_start_85
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v4

    :try_start_8a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "cookie":I
    .end local p0    # "this":Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
    .end local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p2    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .end local p3    # "splitIndex":I
    .end local p4    # "assets":Landroid/content/res/AssetManager;
    .end local p5    # "flags":I
    :cond_8d
    :goto_8d
    throw v3
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8e} :catch_8e

    .line 622
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "cookie":I
    .restart local p0    # "this":Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;
    .restart local p1    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p2    # "pkg":Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .restart local p3    # "splitIndex":I
    .restart local p4    # "assets":Landroid/content/res/AssetManager;
    .restart local p5    # "flags":I
    :catch_8e
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/Exception;
    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private parseSplitApk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    nop

    .line 693
    invoke-static {p1, p4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 694
    .local v0, "packageSplitResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 695
    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 700
    :cond_10
    const/4 v1, 0x0

    .line 702
    .local v1, "foundApp":Z
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 703
    .local v2, "outerDepth":I
    :cond_15
    :goto_15
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5c

    .line 704
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v3, v5, :cond_15

    const/4 v3, 0x2

    if-eq v4, v3, :cond_29

    .line 705
    goto :goto_15

    .line 709
    :cond_29
    invoke-interface {p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "application"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 711
    if-eqz v1, :cond_44

    .line 715
    const-string v5, "PackageParsing"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_50

    .line 719
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_44
    const/4 v1, 0x1

    .line 720
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_50

    .line 723
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_4a
    const-string v5, "<manifest>"

    invoke-static {v5, p2, p4, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 726
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_50
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 727
    invoke-interface {p1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 729
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_5b
    goto :goto_15

    .line 731
    :cond_5c
    if-nez v1, :cond_72

    .line 732
    const-wide/32 v5, 0x8fcab42

    const-string v3, "<manifest> does not contain an <application>"

    invoke-interface {p1, v3, v5, v6}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 734
    .local v3, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 735
    invoke-interface {p1, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 739
    .end local v3    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_72
    invoke-interface {p1, p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method private parseSplitApplication(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II)Landroid/content/pm/parsing/result/ParseResult;
    .registers 30
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "II)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    invoke-virtual {v12, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 754
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    const/4 v9, 0x1

    :try_start_14
    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-interface {v14, v13, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 757
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f6

    .line 759
    .local v0, "classLoaderName":Ljava/lang/String;
    if-eqz v0, :cond_4b

    :try_start_23
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_4b

    .line 763
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_45

    .line 766
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 763
    return-object v1

    .line 766
    .end local v0    # "classLoaderName":Ljava/lang/String;
    :catchall_45
    move-exception v0

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_1fa

    .line 761
    .restart local v0    # "classLoaderName":Ljava/lang/String;
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-interface {v14, v13, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_1f6

    .line 766
    .end local v0    # "classLoaderName":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 767
    nop

    .line 773
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v13

    .line 775
    .local v0, "defaultSplitName":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 777
    .local v8, "depth":I
    :goto_5c
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v6, v1

    .local v6, "type":I
    if-eq v1, v9, :cond_1ea

    const/4 v1, 0x3

    if-ne v6, v1, :cond_76

    .line 779
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_6d

    goto :goto_76

    :cond_6d
    move/from16 v19, v6

    move/from16 v20, v8

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_1f1

    .line 780
    :cond_76
    :goto_76
    const/4 v2, 0x2

    if-eq v6, v2, :cond_7a

    .line 781
    goto :goto_5c

    .line 784
    :cond_7a
    const/16 v16, 0x0

    .line 787
    .local v16, "mainComponent":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "tagName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 789
    .local v17, "isActivity":Z
    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1fe

    :cond_8a
    goto :goto_bf

    :sswitch_8b
    const-string/jumbo v1, "service"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v2

    goto :goto_c0

    :sswitch_96
    const-string v1, "activity-alias"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x4

    goto :goto_c0

    :sswitch_a0
    const-string/jumbo v1, "receiver"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v9

    goto :goto_c0

    :sswitch_ab
    const-string/jumbo v2, "provider"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto :goto_c0

    :sswitch_b5
    const-string v1, "activity"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x0

    goto :goto_c0

    :goto_bf
    move v1, v3

    :goto_c0
    packed-switch v1, :pswitch_data_214

    .line 842
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .local v18, "tagName":Ljava/lang/String;
    .local v19, "type":I
    .local v20, "depth":I
    .local v22, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    move-object v8, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto/16 :goto_1c1

    .line 831
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :pswitch_e2
    sget-boolean v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v18, v5

    .end local v5    # "tagName":Ljava/lang/String;
    .restart local v18    # "tagName":Ljava/lang/String;
    move-object v5, v0

    move/from16 v19, v6

    .end local v6    # "type":I
    .restart local v19    # "type":I
    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityAlias(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 833
    .local v1, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_106

    .line 834
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 835
    .local v2, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v14, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 836
    move-object/from16 v16, v2

    .line 839
    .end local v2    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_106
    move-object v2, v1

    .line 840
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v8, v15

    goto/16 :goto_1c1

    .line 820
    .end local v1    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :pswitch_110
    move-object/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v18    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    iget-object v1, v7, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 821
    move/from16 v20, v8

    .end local v8    # "depth":I
    .restart local v20    # "depth":I
    move-object v8, v1

    move/from16 v21, v9

    move-object/from16 v9, p2

    move-object/from16 v22, v10

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v13, v2

    move-object v6, v14

    move-object v14, v0

    move-object v5, v15

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/pkg/component/ParsedProviderUtils;->parseProvider([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 823
    .local v1, "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 824
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 825
    .local v2, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 826
    move-object/from16 v16, v2

    .line 828
    .end local v2    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_142
    move-object v2, v1

    .line 829
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v8, v5

    goto/16 :goto_1c1

    .line 809
    .end local v1    # "providerResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :pswitch_146
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "depth":I
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    iget-object v8, v7, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/pkg/component/ParsedServiceUtils;->parseService([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 812
    .local v1, "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_176

    .line 813
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 814
    .local v2, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 815
    move-object/from16 v16, v2

    .line 817
    .end local v2    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_176
    move-object v2, v1

    .line 818
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v8, v5

    goto :goto_1c1

    .line 789
    .end local v1    # "serviceResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :pswitch_179
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "depth":I
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    goto :goto_194

    .line 791
    .end local v18    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :pswitch_186
    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object v6, v14

    move-object v5, v15

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v20    # "depth":I
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    .line 794
    :goto_194
    iget-object v8, v7, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v13, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 795
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->parseActivityOrReceiver([Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;IZLjava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 797
    .local v1, "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 798
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 799
    .local v2, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-eqz v17, :cond_1b9

    .line 800
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_1bc

    .line 802
    :cond_1b9
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 804
    :goto_1bc
    move-object v3, v2

    move-object/from16 v16, v3

    .line 806
    .end local v2    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_1bf
    move-object v2, v1

    .line 807
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;
    move-object v8, v5

    .line 846
    .end local v1    # "activityResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    :goto_1c1
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 847
    invoke-interface {v8, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 850
    :cond_1cc
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->hasTooManyComponents(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)Z

    move-result v1

    if-eqz v1, :cond_1d9

    .line 851
    const-string v1, "Total number of components has exceeded the maximum number: 30000"

    invoke-interface {v8, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 853
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v16    # "mainComponent":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .end local v17    # "isActivity":Z
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_1d9
    move-object/from16 v14, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move/from16 v13, p6

    move-object v15, v8

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_5c

    .line 777
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v6    # "type":I
    .restart local v8    # "depth":I
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :cond_1ea
    move/from16 v19, v6

    move/from16 v20, v8

    move-object/from16 v22, v10

    move-object v8, v15

    .line 855
    .end local v6    # "type":I
    .end local v8    # "depth":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v19    # "type":I
    .restart local v20    # "depth":I
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    :goto_1f1
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 766
    .end local v0    # "defaultSplitName":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v20    # "depth":I
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :catchall_1f6
    move-exception v0

    move-object/from16 v22, v10

    move-object v8, v15

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    :goto_1fa
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 767
    throw v0

    :sswitch_data_1fe
    .sparse-switch
        -0x62b40cf1 -> :sswitch_b5
        -0x3adbfa0f -> :sswitch_ab
        -0x30341611 -> :sswitch_a0
        0x2f1ad612 -> :sswitch_96
        0x7643c6b5 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_186
        :pswitch_179
        :pswitch_146
        :pswitch_110
        :pswitch_e2
    .end packed-switch
.end method

.method private parseSplitBaseAppChildTags(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 14
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 870
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_be

    :cond_7
    goto :goto_55

    :sswitch_8
    const-string/jumbo v0, "uses-package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_56

    :sswitch_13
    const-string/jumbo v0, "uses-static-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_56

    :sswitch_1e
    const-string/jumbo v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_56

    :sswitch_29
    const-string/jumbo v0, "meta-data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_56

    :sswitch_34
    const-string/jumbo v0, "uses-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_56

    :sswitch_3f
    const-string/jumbo v0, "uses-sdk-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_56

    :sswitch_4a
    const-string/jumbo v0, "uses-native-library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_56

    :goto_55
    const/4 v0, -0x1

    :goto_56
    packed-switch v0, :pswitch_data_dc

    .line 901
    const-string v0, "<application>"

    invoke-static {v0, p3, p5, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 899
    :pswitch_60
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 895
    :pswitch_66
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 893
    :pswitch_6b
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 891
    :pswitch_70
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 889
    :pswitch_75
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 882
    :pswitch_7a
    const/4 v2, 0x0

    const-string v5, "<property>"

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 884
    .local v0, "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 885
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 887
    :cond_94
    return-object v0

    .line 875
    .end local v0    # "propertyResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    :pswitch_95
    const/4 v3, 0x0

    const-string v6, "<meta-data>"

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMetaData(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/android/server/pm/pkg/component/ParsedComponent;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 877
    .local v0, "metaDataResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageManager$Property;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 878
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$Property;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 880
    :cond_bd
    return-object v0

    :sswitch_data_be
    .sparse-switch
        -0x5fe67eda -> :sswitch_4a
        -0x5aaa6a59 -> :sswitch_3f
        -0x50de9846 -> :sswitch_34
        -0x4284098e -> :sswitch_29
        -0x3b32222b -> :sswitch_1e
        0x88b87d -> :sswitch_13
        0x751e7745 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_95
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_60
    .end packed-switch
.end method

.method private static parseStaticLibrary(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2388
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2392
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2394
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2396
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2401
    .local v1, "versionMajor":I
    if-eqz v2, :cond_6f

    if-gez v3, :cond_1b

    goto :goto_6f

    .line 2404
    :cond_1b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 2405
    const/16 v4, -0x6b

    const-string/jumbo v5, "sharedUserId not allowed in static shared library"

    invoke-interface {p3, v4, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_94

    .line 2419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2405
    return-object v4

    .line 2409
    :cond_2e
    :try_start_2e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_53

    .line 2410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple static-shared libs for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2411
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2410
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_94

    .line 2419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2410
    return-object v4

    .line 2414
    :cond_53
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2416
    invoke-static {v1, v3}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v6

    .line 2415
    invoke-interface {v5, v6, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v5

    .line 2417
    invoke-interface {v5, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v4

    .line 2414
    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_94

    .line 2419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2414
    return-object v4

    .line 2402
    :cond_6f
    :goto_6f
    :try_start_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad static-library declaration name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_94

    .line 2419
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2402
    return-object v4

    .line 2419
    .end local v1    # "versionMajor":I
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    :catchall_94
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2420
    throw v1
.end method

.method private static parseSupportScreens(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2876
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2878
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v1

    .line 2880
    .local v1, "requiresSmallestWidthDp":I
    const/4 v3, 0x7

    invoke-static {v2, v3, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v3

    .line 2882
    .local v3, "compatibleWidthLimitDp":I
    const/16 v4, 0x8

    invoke-static {v2, v4, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v4

    .line 2887
    .local v4, "largestWidthLimitDp":I
    nop

    .line 2889
    const/4 v5, 0x1

    invoke-static {v5, v5, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v6

    .line 2888
    invoke-interface {p1, v6}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x2

    .line 2891
    invoke-static {v5, v7, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 2890
    invoke-interface {v6, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x3

    .line 2893
    invoke-static {v5, v7, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 2892
    invoke-interface {v6, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x5

    .line 2895
    invoke-static {v5, v7, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 2894
    invoke-interface {v6, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    const/4 v7, 0x4

    .line 2897
    invoke-static {v5, v7, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v7

    .line 2896
    invoke-interface {v6, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v6

    .line 2899
    invoke-static {v5, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->anInt(IILandroid/content/res/TypedArray;)I

    move-result v2

    .line 2898
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2900
    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2901
    invoke-interface {v2, v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2902
    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    .line 2887
    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_8 .. :try_end_5d} :catchall_61

    .line 2904
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2887
    return-object v2

    .line 2904
    .end local v1    # "requiresSmallestWidthDp":I
    .end local v3    # "compatibleWidthLimitDp":I
    .end local v4    # "largestWidthLimitDp":I
    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2905
    throw v1
.end method

.method private static parseUsesConfiguration(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1440
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1441
    .local v0, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1443
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1446
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1449
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1452
    iget v5, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v5

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1454
    :cond_25
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1457
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1460
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1462
    :cond_38
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1463
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_43

    .line 1465
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1463
    return-object v2

    .line 1465
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1466
    throw v2
.end method

.method private static parseUsesFeature(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 1471
    invoke-static {p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseFeatureInfo(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 1472
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    invoke-interface {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1474
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1475
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1476
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1477
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 1480
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_17
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static parseUsesLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2564
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2568
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2569
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2571
    .local v2, "req":Z
    if-eqz v1, :cond_2e

    .line 2572
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2573
    if-eqz v2, :cond_21

    .line 2575
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2576
    invoke-interface {v3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_2e

    .line 2579
    :cond_21
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 2580
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2585
    :cond_2e
    :goto_2e
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 2587
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2585
    return-object v3

    .line 2587
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2588
    throw v1
.end method

.method private static parseUsesNativeLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 2594
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesNativeLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2598
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2600
    .local v1, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2603
    .local v2, "req":Z
    if-eqz v1, :cond_29

    .line 2604
    if-eqz v2, :cond_1c

    .line 2606
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v3

    .line 2607
    invoke-interface {v3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    goto :goto_29

    .line 2610
    :cond_1c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2611
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2616
    :cond_29
    :goto_29
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_31

    .line 2618
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2616
    return-object v3

    .line 2618
    .end local v1    # "lname":Ljava/lang/String;
    .end local v2    # "req":Z
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2619
    throw v1
.end method

.method private parseUsesPermission(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 27
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1271
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1275
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x200

    if-le v8, v9, :cond_29

    .line 1278
    const/16 v0, -0x6c

    const-string v8, "The name in the <uses-permission> is greater than 512"

    invoke-interface {v2, v0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_233

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1278
    return-object v0

    .line 1283
    :cond_29
    const/4 v8, 0x0

    .line 1284
    .local v8, "maxSdkVersion":I
    const/4 v9, 0x1

    :try_start_2b
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    .line 1286
    .local v10, "val":Landroid/util/TypedValue;
    if-eqz v10, :cond_40

    .line 1287
    iget v11, v10, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_40

    iget v11, v10, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x1f

    if-gt v11, v12, :cond_40

    .line 1288
    iget v11, v10, Landroid/util/TypedValue;->data:I

    move v8, v11

    .line 1292
    :cond_40
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1293
    .local v11, "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x2

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 1296
    .local v12, "feature":Ljava/lang/String;
    if-eqz v12, :cond_4f

    .line 1297
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1300
    :cond_4f
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1301
    .local v13, "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v14, 0x3

    invoke-virtual {v6, v14, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 1305
    if-eqz v12, :cond_5f

    .line 1306
    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_5f
    const/4 v15, 0x4

    invoke-virtual {v6, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v17, v16

    .line 1313
    .local v17, "usesPermissionFlags":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v18, v16

    .line 1315
    .local v18, "outerDepth":I
    :goto_6c
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v19, v0

    .local v19, "type":I
    if-eq v0, v9, :cond_101

    move/from16 v0, v19

    .end local v19    # "type":I
    .local v0, "type":I
    if-ne v0, v14, :cond_81

    .line 1317
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    move/from16 v15, v18

    .end local v18    # "outerDepth":I
    .local v15, "outerDepth":I
    if-le v9, v15, :cond_105

    goto :goto_83

    .line 1315
    .end local v15    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :cond_81
    move/from16 v15, v18

    .line 1318
    .end local v18    # "outerDepth":I
    .restart local v15    # "outerDepth":I
    :goto_83
    if-eq v0, v14, :cond_f9

    const/4 v9, 0x4

    if-ne v0, v9, :cond_8e

    .line 1319
    move/from16 v18, v15

    const/4 v0, 0x0

    move v15, v9

    const/4 v9, 0x1

    goto :goto_6c

    .line 1323
    :cond_8e
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_238

    :cond_99
    goto :goto_b0

    :sswitch_9a
    const-string/jumbo v14, "required-feature"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    const/4 v9, 0x0

    goto :goto_b1

    :sswitch_a5
    const-string/jumbo v14, "required-not-feature"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    const/4 v9, 0x1

    goto :goto_b1

    :goto_b0
    const/4 v9, -0x1

    :goto_b1
    packed-switch v9, :pswitch_data_242

    .line 1339
    const-string v9, "<uses-permission>"

    goto :goto_df

    .line 1332
    :pswitch_b7
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredNotFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1333
    .local v9, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 1334
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 1325
    .end local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :pswitch_cb
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseRequiredFeature(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1326
    .restart local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 1327
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 1339
    .end local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :goto_df
    invoke-static {v9, v3, v5, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9

    .line 1343
    .restart local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_e3
    :goto_e3
    invoke-interface {v9}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_f1

    .line 1344
    invoke-interface {v2, v9}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v14
    :try_end_ed
    .catchall {:try_start_2b .. :try_end_ed} :catchall_233

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1344
    return-object v14

    .line 1346
    .end local v9    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_f1
    move/from16 v18, v15

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x4

    goto/16 :goto_6c

    .line 1318
    :cond_f9
    move/from16 v18, v15

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x4

    goto/16 :goto_6c

    .line 1315
    .end local v0    # "type":I
    .end local v15    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    .restart local v19    # "type":I
    :cond_101
    move/from16 v15, v18

    move/from16 v0, v19

    .line 1349
    .end local v18    # "outerDepth":I
    .end local v19    # "type":I
    .restart local v0    # "type":I
    .restart local v15    # "outerDepth":I
    :cond_105
    :try_start_105
    invoke-interface/range {p1 .. p2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v9
    :try_end_109
    .catchall {:try_start_105 .. :try_end_109} :catchall_233

    .line 1351
    .local v9, "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    if-nez v7, :cond_110

    .line 1352
    nop

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1352
    return-object v9

    .line 1355
    :cond_110
    if-eqz v8, :cond_11b

    :try_start_112
    sget v14, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I
    :try_end_114
    .catchall {:try_start_112 .. :try_end_114} :catchall_233

    if-ge v8, v14, :cond_11b

    .line 1356
    nop

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1356
    return-object v9

    .line 1359
    :cond_11b
    :try_start_11b
    iget-object v14, v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    if-eqz v14, :cond_167

    .line 1362
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_127
    if-ltz v14, :cond_147

    .line 1363
    move/from16 v16, v0

    .end local v0    # "type":I
    .local v16, "type":I
    iget-object v0, v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_139
    .catchall {:try_start_11b .. :try_end_139} :catchall_233

    if-nez v0, :cond_140

    .line 1364
    nop

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1364
    return-object v9

    .line 1362
    :cond_140
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v4, p3

    move/from16 v0, v16

    goto :goto_127

    .end local v16    # "type":I
    .restart local v0    # "type":I
    :cond_147
    move/from16 v16, v0

    .line 1370
    .end local v0    # "type":I
    .end local v14    # "i":I
    .restart local v16    # "type":I
    :try_start_149
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_14f
    if-ltz v0, :cond_169

    .line 1371
    iget-object v4, v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->mCallback:Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v4, v14}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_15d
    .catchall {:try_start_149 .. :try_end_15d} :catchall_233

    if-eqz v4, :cond_164

    .line 1372
    nop

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1372
    return-object v9

    .line 1370
    :cond_164
    add-int/lit8 v0, v0, -0x1

    goto :goto_14f

    .line 1359
    .end local v16    # "type":I
    .local v0, "type":I
    :cond_167
    move/from16 v16, v0

    .line 1379
    .end local v0    # "type":I
    .restart local v16    # "type":I
    :cond_169
    const/4 v0, 0x0

    .line 1380
    .local v0, "found":Z
    :try_start_16a
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v4

    .line 1381
    .local v4, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 1382
    .local v14, "size":I
    const/16 v18, 0x0

    move/from16 v19, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v19, "found":Z
    :goto_178
    if-ge v0, v14, :cond_21a

    .line 1383
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 1384
    .local v18, "usesPermission":Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204

    .line 1385
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getUsesPermissionFlags()I

    move-result v1
    :try_end_18e
    .catchall {:try_start_16a .. :try_end_18e} :catchall_233

    move-object/from16 v20, v4

    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .local v20, "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    const-string v4, " at: "

    const-string v5, " in package: "

    move/from16 v21, v8

    move/from16 v8, v17

    .end local v17    # "usesPermissionFlags":I
    .local v8, "usesPermissionFlags":I
    .local v21, "maxSdkVersion":I
    if-eq v1, v8, :cond_1cf

    .line 1386
    :try_start_19a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    .end local v10    # "val":Landroid/util/TypedValue;
    .local v17, "val":Landroid/util/TypedValue;
    const-string v10, "Conflicting uses-permissions flags: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1387
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1388
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-interface {v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1cb
    .catchall {:try_start_19a .. :try_end_1cb} :catchall_233

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1386
    return-object v1

    .line 1390
    .end local v17    # "val":Landroid/util/TypedValue;
    .restart local v10    # "val":Landroid/util/TypedValue;
    :cond_1cf
    move-object/from16 v17, v10

    .end local v10    # "val":Landroid/util/TypedValue;
    .restart local v17    # "val":Landroid/util/TypedValue;
    :try_start_1d1
    const-string v1, "PackageParsing"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1391
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1392
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1390
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const/4 v1, 0x1

    .line 1395
    .end local v19    # "found":Z
    .local v1, "found":Z
    move v0, v1

    goto :goto_224

    .line 1384
    .end local v1    # "found":Z
    .end local v20    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v21    # "maxSdkVersion":I
    .restart local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .local v8, "maxSdkVersion":I
    .restart local v10    # "val":Landroid/util/TypedValue;
    .local v17, "usesPermissionFlags":I
    .restart local v19    # "found":Z
    :cond_204
    move-object/from16 v20, v4

    move/from16 v21, v8

    move/from16 v8, v17

    move-object/from16 v17, v10

    .line 1382
    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v10    # "val":Landroid/util/TypedValue;
    .end local v18    # "usesPermission":Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
    .local v8, "usesPermissionFlags":I
    .local v17, "val":Landroid/util/TypedValue;
    .restart local v20    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v21    # "maxSdkVersion":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v17, v8

    move/from16 v8, v21

    goto/16 :goto_178

    .end local v20    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v21    # "maxSdkVersion":I
    .restart local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .local v8, "maxSdkVersion":I
    .restart local v10    # "val":Landroid/util/TypedValue;
    .local v17, "usesPermissionFlags":I
    :cond_21a
    move-object/from16 v20, v4

    move/from16 v21, v8

    move/from16 v8, v17

    move-object/from16 v17, v10

    .end local v4    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v10    # "val":Landroid/util/TypedValue;
    .local v8, "usesPermissionFlags":I
    .local v17, "val":Landroid/util/TypedValue;
    .restart local v20    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .restart local v21    # "maxSdkVersion":I
    move/from16 v0, v19

    .line 1399
    .end local v19    # "found":Z
    .local v0, "found":Z
    :goto_224
    if-nez v0, :cond_22e

    .line 1400
    new-instance v1, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    invoke-direct {v1, v7, v8}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_22e
    .catchall {:try_start_1d1 .. :try_end_22e} :catchall_233

    .line 1402
    :cond_22e
    nop

    .line 1404
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1402
    return-object v9

    .line 1404
    .end local v0    # "found":Z
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "usesPermissionFlags":I
    .end local v9    # "success":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Lcom/android/server/pm/pkg/parsing/ParsingPackage;>;"
    .end local v11    # "requiredFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "feature":Ljava/lang/String;
    .end local v13    # "requiredNotFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "size":I
    .end local v15    # "outerDepth":I
    .end local v16    # "type":I
    .end local v17    # "val":Landroid/util/TypedValue;
    .end local v20    # "usesPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedUsesPermission;>;"
    .end local v21    # "maxSdkVersion":I
    :catchall_233
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1405
    throw v0

    :sswitch_data_238
    .sparse-switch
        0x341a4cce -> :sswitch_a5
        0x64ee7ac8 -> :sswitch_9a
    .end sparse-switch

    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_b7
    .end packed-switch
.end method

.method private static parseUsesSdk(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 28
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1545
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_VERSION:I

    if-lez v0, :cond_18b

    .line 1546
    move/from16 v5, p4

    and-int/lit16 v6, v5, 0x200

    const/4 v7, 0x0

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_16

    :cond_15
    move v6, v7

    .line 1547
    .local v6, "isApkInApex":Z
    :goto_16
    sget-object v9, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1549
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    .line 1550
    .local v10, "minVers":I
    const/4 v11, 0x0

    .line 1551
    .local v11, "minCode":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1552
    .local v12, "minAssigned":Z
    const/4 v13, 0x0

    .line 1553
    .local v13, "targetVers":I
    const/4 v14, 0x0

    .line 1554
    .local v14, "targetCode":Ljava/lang/String;
    const v15, 0x7fffffff

    .line 1556
    .local v15, "maxVers":I
    :try_start_24
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_184

    .line 1557
    .local v7, "val":Landroid/util/TypedValue;
    if-eqz v7, :cond_4c

    .line 1558
    :try_start_2a
    iget v8, v7, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v8, v5, :cond_42

    iget-object v5, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_42

    .line 1559
    iget-object v5, v7, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 1560
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    move v12, v5

    goto :goto_4c

    .line 1563
    :cond_42
    iget v5, v7, Landroid/util/TypedValue;->data:I
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_47

    move v10, v5

    .line 1564
    const/4 v12, 0x1

    goto :goto_4c

    .line 1653
    .end local v7    # "val":Landroid/util/TypedValue;
    .end local v10    # "minVers":I
    .end local v11    # "minCode":Ljava/lang/String;
    .end local v12    # "minAssigned":Z
    .end local v13    # "targetVers":I
    .end local v14    # "targetCode":Ljava/lang/String;
    .end local v15    # "maxVers":I
    :catchall_47
    move-exception v0

    move/from16 v22, v6

    goto/16 :goto_187

    .line 1568
    .restart local v7    # "val":Landroid/util/TypedValue;
    .restart local v10    # "minVers":I
    .restart local v11    # "minCode":Ljava/lang/String;
    .restart local v12    # "minAssigned":Z
    .restart local v13    # "targetVers":I
    .restart local v14    # "targetCode":Ljava/lang/String;
    .restart local v15    # "maxVers":I
    :cond_4c
    :goto_4c
    const/4 v5, 0x1

    :try_start_4d
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_184

    move-object v5, v8

    .line 1569
    .end local v7    # "val":Landroid/util/TypedValue;
    .local v5, "val":Landroid/util/TypedValue;
    if-eqz v5, :cond_6c

    .line 1570
    :try_start_54
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_68

    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_68

    .line 1571
    iget-object v7, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 1572
    if-nez v12, :cond_6e

    .line 1573
    move-object v11, v14

    goto :goto_6e

    .line 1577
    :cond_68
    iget v7, v5, Landroid/util/TypedValue;->data:I

    move v13, v7

    goto :goto_6e

    .line 1580
    :cond_6c
    move v13, v10

    .line 1581
    move-object v14, v11

    .line 1584
    :cond_6e
    :goto_6e
    if-eqz v6, :cond_7b

    .line 1585
    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    move-object v5, v7

    .line 1586
    if-eqz v5, :cond_7b

    .line 1588
    iget v7, v5, Landroid/util/TypedValue;->data:I
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_47

    move v15, v7

    .line 1592
    :cond_7b
    :try_start_7b
    sget-object v7, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->SDK_CODENAMES:[Ljava/lang/String;

    .line 1593
    invoke-static {v13, v14, v7, v1, v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 1595
    .local v8, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v16
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_184

    if-eqz v16, :cond_8f

    .line 1596
    :try_start_87
    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_47

    .line 1653
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1596
    return-object v0

    .line 1599
    :cond_8f
    :try_start_8f
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v17, v16

    .line 1601
    .local v17, "targetSdkVersion":I
    nop

    .line 1602
    move-object/from16 v16, v5

    .end local v5    # "val":Landroid/util/TypedValue;
    .local v16, "val":Landroid/util/TypedValue;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v8

    move/from16 v8, v17

    .end local v17    # "targetSdkVersion":I
    .local v8, "targetSdkVersion":I
    .local v18, "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v1, v5, v8}, Landroid/content/pm/parsing/result/ParseInput;->enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 1603
    .local v5, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_184

    if-eqz v17, :cond_b8

    .line 1604
    :try_start_b0
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_47

    .line 1653
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1604
    return-object v0

    .line 1607
    :cond_b8
    nop

    .line 1608
    :try_start_b9
    invoke-static {v10, v11, v0, v7, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 1609
    .local v7, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v17
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_184

    if-eqz v17, :cond_cb

    .line 1610
    :try_start_c3
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_47

    .line 1653
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1610
    return-object v0

    .line 1613
    :cond_cb
    :try_start_cb
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v19, v17

    .line 1615
    .local v19, "minSdkVersion":I
    move-object/from16 v17, v5

    move/from16 v5, v19

    move-object/from16 v19, v7

    .end local v7    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .local v5, "minSdkVersion":I
    .local v17, "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .local v19, "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v7

    .line 1616
    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_e4
    .catchall {:try_start_cb .. :try_end_e4} :catchall_184

    .line 1617
    if-eqz v6, :cond_106

    .line 1618
    nop

    .line 1619
    :try_start_e7
    invoke-static {v15, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMaxSdkVersion(IILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1620
    .local v0, "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 1621
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_f5
    .catchall {:try_start_e7 .. :try_end_f5} :catchall_47

    .line 1653
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1621
    return-object v7

    .line 1623
    :cond_f9
    :try_start_f9
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1624
    .local v7, "maxSdkVersion":I
    invoke-interface {v2, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_106
    .catchall {:try_start_f9 .. :try_end_106} :catchall_47

    .line 1628
    .end local v0    # "maxSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v7    # "maxSdkVersion":I
    :cond_106
    :try_start_106
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1629
    .local v0, "innerDepth":I
    const/4 v7, 0x0

    .line 1630
    .local v7, "minExtensionVersions":Landroid/util/SparseIntArray;
    :goto_10b
    move/from16 v20, v5

    .end local v5    # "minSdkVersion":I
    .local v20, "minSdkVersion":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5
    :try_end_111
    .catchall {:try_start_106 .. :try_end_111} :catchall_184

    move/from16 v21, v5

    move/from16 v22, v6

    const/4 v6, 0x1

    .end local v6    # "isApkInApex":Z
    .local v21, "type":I
    .local v22, "isApkInApex":Z
    if-eq v5, v6, :cond_172

    move/from16 v5, v21

    const/4 v6, 0x3

    .end local v21    # "type":I
    .local v5, "type":I
    if-ne v5, v6, :cond_127

    .line 1631
    :try_start_11d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_124

    goto :goto_127

    :cond_124
    move/from16 v21, v0

    goto :goto_176

    .line 1632
    :cond_127
    :goto_127
    const/4 v6, 0x3

    if-eq v5, v6, :cond_169

    const/4 v6, 0x4

    if-ne v5, v6, :cond_130

    .line 1633
    move/from16 v21, v0

    goto :goto_16b

    .line 1637
    :cond_130
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v21, v0

    .end local v0    # "innerDepth":I
    .local v21, "innerDepth":I
    const-string v0, "extension-sdk"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 1638
    if-nez v7, :cond_146

    .line 1639
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v7, v0

    .line 1641
    :cond_146
    invoke-static {v1, v3, v4, v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseExtensionSdk(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1642
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_154

    .line 1644
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_14e
    const-string v0, "<uses-sdk>"

    invoke-static {v0, v2, v4, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 1647
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_154
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_162

    .line 1648
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6
    :try_end_15e
    .catchall {:try_start_11d .. :try_end_15e} :catchall_182

    .line 1653
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1648
    return-object v6

    .line 1650
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_162
    move/from16 v5, v20

    move/from16 v0, v21

    move/from16 v6, v22

    goto :goto_10b

    .line 1632
    .end local v21    # "innerDepth":I
    .local v0, "innerDepth":I
    :cond_169
    move/from16 v21, v0

    .line 1630
    .end local v0    # "innerDepth":I
    .end local v5    # "type":I
    .restart local v21    # "innerDepth":I
    :goto_16b
    move/from16 v5, v20

    move/from16 v0, v21

    move/from16 v6, v22

    goto :goto_10b

    .restart local v0    # "innerDepth":I
    .local v21, "type":I
    :cond_172
    move/from16 v5, v21

    move/from16 v21, v0

    .line 1651
    .end local v0    # "innerDepth":I
    .restart local v5    # "type":I
    .local v21, "innerDepth":I
    :goto_176
    :try_start_176
    invoke-static {v7}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->exactSizedCopyOfSparseArray(Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    :try_end_17d
    .catchall {:try_start_176 .. :try_end_17d} :catchall_182

    .line 1653
    nop

    .end local v5    # "type":I
    .end local v7    # "minExtensionVersions":Landroid/util/SparseIntArray;
    .end local v8    # "targetSdkVersion":I
    .end local v10    # "minVers":I
    .end local v11    # "minCode":Ljava/lang/String;
    .end local v12    # "minAssigned":Z
    .end local v13    # "targetVers":I
    .end local v14    # "targetCode":Ljava/lang/String;
    .end local v15    # "maxVers":I
    .end local v16    # "val":Landroid/util/TypedValue;
    .end local v17    # "deferResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    .end local v18    # "targetSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v19    # "minSdkVersionResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v20    # "minSdkVersion":I
    .end local v21    # "innerDepth":I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1654
    goto :goto_18b

    .line 1653
    :catchall_182
    move-exception v0

    goto :goto_187

    .end local v22    # "isApkInApex":Z
    .restart local v6    # "isApkInApex":Z
    :catchall_184
    move-exception v0

    move/from16 v22, v6

    .end local v6    # "isApkInApex":Z
    .restart local v22    # "isApkInApex":Z
    :goto_187
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1654
    throw v0

    .line 1656
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "isApkInApex":Z
    :cond_18b
    :goto_18b
    invoke-interface/range {p0 .. p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseUsesSdkLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2449
    const-string v0, ""

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdkLibrary:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2452
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 2454
    .local v3, "lname":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2456
    .local v4, "versionMajor":I
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2461
    .local v6, "certSha256Digest":Ljava/lang/String;
    if-eqz v3, :cond_97

    if-ltz v4, :cond_97

    if-nez v6, :cond_20

    goto/16 :goto_97

    .line 2467
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v7

    .line 2468
    .local v7, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Depending on multiple versions of SDK library "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_c6

    .line 2503
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2469
    return-object v0

    .line 2473
    :cond_45
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 2476
    const-string v8, ":"

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 2478
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 2480
    const-string v8, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_c6

    move-object v6, v8

    .line 2484
    :try_start_62
    invoke-static {v6, v2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_c6

    .line 2487
    goto :goto_68

    .line 2485
    :catch_66
    move-exception v8

    .line 2486
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move-object v6, v0

    .line 2490
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_68
    :goto_68
    :try_start_68
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 2491
    .local v0, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 2492
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_c6

    .line 2503
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2492
    return-object v2

    .line 2494
    :cond_7a
    :try_start_7a
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2496
    .local v8, "additionalCertSha256Digests":[Ljava/lang/String;
    array-length v9, v8

    add-int/2addr v9, v5

    new-array v9, v9, [Ljava/lang/String;

    .line 2497
    .local v9, "certSha256Digests":[Ljava/lang/String;
    aput-object v6, v9, v2

    .line 2498
    array-length v10, v8

    invoke-static {v8, v2, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2501
    int-to-long v10, v4

    invoke-interface {p1, v3, v10, v11, v9}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_93
    .catchall {:try_start_7a .. :try_end_93} :catchall_c6

    .line 2503
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2501
    return-object v2

    .line 2462
    .end local v0    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    .end local v7    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v9    # "certSha256Digests":[Ljava/lang/String;
    :cond_97
    :goto_97
    :try_start_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " certDigest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_c2
    .catchall {:try_start_97 .. :try_end_c2} :catchall_c6

    .line 2503
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2462
    return-object v0

    .line 2503
    .end local v3    # "lname":Ljava/lang/String;
    .end local v4    # "versionMajor":I
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    :catchall_c6
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2504
    throw v0
.end method

.method private static parseUsesStaticLibrary(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 15
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2511
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2514
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2516
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2518
    .local v3, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2523
    .local v5, "certSha256Digest":Ljava/lang/String;
    if-eqz v2, :cond_8e

    if-ltz v3, :cond_8e

    if-nez v5, :cond_1d

    goto :goto_8e

    .line 2529
    :cond_1d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    .line 2530
    .local v6, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Depending on multiple versions of static library "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_bd

    .line 2557
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2531
    return-object v1

    .line 2535
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 2538
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 2541
    sget-object v7, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2542
    .local v7, "additionalCertSha256Digests":[Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1b

    if-lt v8, v9, :cond_77

    .line 2543
    invoke-static {p0, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 2544
    .local v8, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 2545
    invoke-interface {p0, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_bd

    .line 2557
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2545
    return-object v1

    .line 2547
    :cond_70
    :try_start_70
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v7, v9

    .line 2550
    .end local v8    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    :cond_77
    array-length v8, v7

    add-int/2addr v8, v4

    new-array v8, v8, [Ljava/lang/String;

    .line 2551
    .local v8, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v8, v1

    .line 2552
    array-length v9, v7

    invoke-static {v7, v1, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2555
    int-to-long v9, v3

    invoke-interface {p1, v2, v9, v10, v8}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_bd

    .line 2557
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2555
    return-object v1

    .line 2524
    .end local v6    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v8    # "certSha256Digests":[Ljava/lang/String;
    :cond_8e
    :goto_8e
    :try_start_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uses-static-library declaration name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " certDigest"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_b9
    .catchall {:try_start_8e .. :try_end_b9} :catchall_bd

    .line 2557
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2524
    return-object v1

    .line 2557
    .end local v2    # "lname":Ljava/lang/String;
    .end local v3    # "version":I
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    :catchall_bd
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2558
    throw v1
.end method

.method public static readConfigUseRoundIcon(Landroid/content/res/Resources;)V
    .registers 16
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 3160
    const v0, 0x11101ec

    if-eqz p0, :cond_c

    .line 3161
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3162
    return-void

    .line 3167
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android"

    const-wide/16 v3, 0x0

    .line 3169
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 3167
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_44

    .line 3172
    .local v1, "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 3173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3176
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

    .line 3185
    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    .line 3186
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const/4 v14, 0x0

    .line 3176
    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3189
    .local v3, "overlayableRes":Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    .line 3190
    return-void

    .line 3170
    .end local v1    # "androidAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "systemResources":Landroid/content/res/Resources;
    .end local v3    # "overlayableRes":Landroid/content/res/Resources;
    :catch_44
    move-exception v0

    .line 3171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .registers 11
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

    .line 3285
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3286
    .local v0, "N":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 3287
    return-object v1

    .line 3290
    :cond_9
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3291
    .local v3, "keySetMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v0, :cond_39

    .line 3292
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3293
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3294
    .local v6, "M":I
    if-ne v6, v2, :cond_1f

    .line 3295
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    goto :goto_36

    .line 3299
    :cond_1f
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 3300
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_25
    if-ge v8, v6, :cond_33

    .line 3301
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/security/PublicKey;

    .line 3302
    .local v9, "pk":Ljava/security/PublicKey;
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3300
    .end local v9    # "pk":Ljava/security/PublicKey;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 3305
    .end local v8    # "j":I
    :cond_33
    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3291
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "M":I
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3308
    .end local v4    # "i":I
    :cond_39
    return-object v3
.end method

.method private static resId(ILandroid/content/res/TypedArray;)I
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3234
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1
    .param p0, "compatibilityModeEnabled"    # Z

    .line 3153
    sput-boolean p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    .line 3154
    return-void
.end method

.method private static setMaxAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 10
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2747
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    const v0, 0x3fee147b    # 1.86f

    goto :goto_e

    :cond_d
    move v0, v1

    .line 2749
    .local v0, "maxAspectRatio":F
    :goto_e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMaxAspectRatio()F

    move-result v2

    .line 2750
    .local v2, "packageMaxAspectRatio":F
    cmpl-float v1, v2, v1

    const-string v3, "android.max_aspect"

    if-eqz v1, :cond_1a

    .line 2752
    move v0, v2

    goto :goto_2a

    .line 2754
    :cond_1a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 2755
    .local v1, "appMetaData":Landroid/os/Bundle;
    if-eqz v1, :cond_2a

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2756
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2760
    .end local v1    # "appMetaData":Landroid/os/Bundle;
    :cond_2a
    :goto_2a
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 2761
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2762
    .local v4, "activitiesSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_33
    if-ge v5, v4, :cond_58

    .line 2763
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2765
    .local v6, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_46

    .line 2766
    goto :goto_55

    .line 2774
    :cond_46
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    .line 2775
    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 2777
    .local v7, "activityAspectRatio":F
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v8

    invoke-static {v6, v8, v7}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMaxAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    .line 2762
    .end local v6    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v7    # "activityAspectRatio":F
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2780
    .end local v5    # "index":I
    :cond_58
    return-void
.end method

.method private setMinAspectRatio(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2788
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMinAspectRatio()F

    move-result v0

    .line 2790
    .local v0, "minAspectRatio":F
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 2791
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2792
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_d
    if-ge v3, v2, :cond_29

    .line 2793
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2794
    .local v4, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_26

    .line 2795
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v5

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setMinAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V

    .line 2792
    .end local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2799
    .end local v3    # "index":I
    :cond_29
    return-void
.end method

.method private setSupportsSizeChanges(Lcom/android/server/pm/pkg/parsing/ParsingPackage;)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 2802
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 2803
    .local v0, "appMetaData":Landroid/os/Bundle;
    const-string v1, "android.supports_size_changes"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    .line 2804
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 2806
    .local v4, "supportsSizeChanges":Z
    :goto_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->getActivities()Ljava/util/List;

    move-result-object v5

    .line 2807
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2808
    .local v6, "activitiesSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1c
    if-ge v7, v6, :cond_36

    .line 2809
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2810
    .local v8, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_30

    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v9

    .line 2811
    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2812
    :cond_30
    invoke-static {v8, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setSupportsSizeChanges(Lcom/android/server/pm/pkg/component/ParsedActivity;Z)V

    .line 2808
    .end local v8    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 2815
    .end local v7    # "index":I
    :cond_36
    return-void
.end method

.method private static string(ILandroid/content/res/TypedArray;)Ljava/lang/String;
    .registers 3
    .param p0, "attribute"    # I
    .param p1, "sa"    # Landroid/content/res/TypedArray;

    .line 3238
    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V
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

    .line 3255
    .local p1, "keySetMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    const/4 v0, -0x1

    if-nez p1, :cond_7

    .line 3256
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    return-void

    .line 3260
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3261
    .local v1, "N":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
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

    .line 3264
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3265
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 3266
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v4, :cond_31

    .line 3267
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    goto :goto_16

    .line 3271
    :cond_31
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 3272
    .local v5, "M":I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3273
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 3274
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Serializable;

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3273
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 3276
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_47
    goto :goto_16

    .line 3277
    :cond_48
    return-void
.end method


# virtual methods
.method public parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p1, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p2, "packageFile"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .line 365
    .local p4, "frameworkSplits":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_1b

    .line 366
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 367
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/framework-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 368
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 369
    :cond_1b
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseClusterPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/util/List;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 372
    :cond_27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseMonolithicPackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method
