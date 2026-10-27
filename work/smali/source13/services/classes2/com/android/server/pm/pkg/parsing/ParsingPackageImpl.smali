.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.super Ljava/lang/Object;
.source "ParsingPackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$Booleans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field protected static sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field protected activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private anyDensity:Ljava/lang/Boolean;

.field protected apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field private appComponentFactory:Ljava/lang/String;

.field private attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field private autoRevokePermissions:I

.field private backupAgentName:Ljava/lang/String;

.field private banner:I

.field private baseRevisionCode:I

.field private category:I

.field private classLoaderName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private compatibleWidthLimitDp:I

.field private compileSdkVersion:I

.field private compileSdkVersionCodeName:Ljava/lang/String;

.field private configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dataExtractionRules:I

.field private descriptionRes:I

.field private featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fullBackupContent:I

.field private gwpAsanMode:I

.field private iconRes:I

.field private implicitPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installLocation:I

.field protected instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private labelRes:I

.field private largestWidthLimitDp:I

.field private libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logo:I

.field protected mBaseApkPath:Ljava/lang/String;

.field private mBooleans:J

.field private mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleConfigRes:I

.field private mLongVersionCode:J

.field protected mPath:Ljava/lang/String;

.field private mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageUuid:Ljava/util/UUID;

.field private manageSpaceActivityName:Ljava/lang/String;

.field private maxAspectRatio:F

.field private maxSdkVersion:I

.field private memtagMode:I

.field private metaData:Landroid/os/Bundle;

.field private mimeGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private minAspectRatio:F

.field private minExtensionVersions:Landroid/util/SparseIntArray;

.field private minSdkVersion:I

.field private nativeHeapZeroInitialized:I

.field private networkSecurityConfigRes:I

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field protected originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overlayCategory:Ljava/lang/String;

.field private overlayPriority:I

.field private overlayTarget:Ljava/lang/String;

.field private overlayTargetOverlayableName:Ljava/lang/String;

.field private overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected packageName:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field protected permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field private preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private processName:Ljava/lang/String;

.field private processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field protected protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field protected requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private requiredAccountType:Ljava/lang/String;

.field private requiresSmallestWidthDp:I

.field private resizeable:Ljava/lang/Boolean;

.field private resizeableActivity:Ljava/lang/Boolean;

.field private restrictUpdateHash:[B

.field private restrictedAccountType:Ljava/lang/String;

.field private roundIconRes:I

.field private sdkLibName:Ljava/lang/String;

.field private sdkLibVersionMajor:I

.field protected services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field private sharedUserId:Ljava/lang/String;

.field private sharedUserLabel:I

.field private signingDetails:Landroid/content/pm/SigningDetails;

.field private splitClassLoaderNames:[Ljava/lang/String;

.field protected splitCodePaths:[Ljava/lang/String;

.field private splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private splitFlags:[I

.field private splitNames:[Ljava/lang/String;

.field private splitRevisionCodes:[I

.field private staticSharedLibName:Ljava/lang/String;

.field private staticSharedLibVersion:J

.field private supportsExtraLargeScreens:Ljava/lang/Boolean;

.field private supportsLargeScreens:Ljava/lang/Boolean;

.field private supportsNormalScreens:Ljava/lang/Boolean;

.field private supportsSmallScreens:Ljava/lang/Boolean;

.field private targetSandboxVersion:I

.field private targetSdkVersion:I

.field private taskAffinity:Ljava/lang/String;

.field private theme:I

.field private uiOptions:I

.field private upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field private usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private usesSdkLibrariesVersionsMajor:[J

.field private usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private usesStaticLibrariesVersions:[J

.field protected versionCode:I

.field protected versionCodeMajor:I

.field private versionName:Ljava/lang/String;

.field protected volumeUuid:Ljava/lang/String;

.field private zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    .line 109
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 110
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 112
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 114
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 116
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 117
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 118
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 119
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 120
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 121
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    .line 124
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 1494
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    nop

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 195
    nop

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 198
    nop

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 201
    nop

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 205
    nop

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 208
    nop

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 212
    nop

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 220
    nop

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 233
    nop

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 235
    nop

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 237
    nop

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 243
    nop

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 246
    nop

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 253
    nop

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 258
    nop

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 261
    nop

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 265
    nop

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 267
    nop

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 270
    nop

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 274
    nop

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 277
    nop

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 280
    nop

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 283
    nop

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 286
    nop

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 289
    nop

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 295
    nop

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 298
    nop

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 301
    nop

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 308
    nop

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 314
    nop

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 327
    nop

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 331
    nop

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 335
    nop

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 374
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    .line 386
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    .line 439
    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 1345
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1346
    .local v0, "boot":Ljava/lang/ClassLoader;
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 1347
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 1348
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 1349
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 1350
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 1351
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 1352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    .line 1353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    .line 1355
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 1358
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    .line 1359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 1360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 1362
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    .line 1366
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 1367
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    .line 1368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    .line 1369
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    .line 1371
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 1372
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 1373
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 1374
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 1375
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 1377
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 1378
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    .line 1380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1381
    .local v1, "digestsSize":I
    if-ltz v1, :cond_20c

    .line 1382
    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 1383
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1fd
    if-ge v2, v1, :cond_20c

    .line 1384
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fd

    .line 1390
    .end local v1    # "digestsSize":I
    .end local v2    # "index":I
    :cond_20c
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 1391
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 1393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1394
    .restart local v1    # "digestsSize":I
    if-ltz v1, :cond_234

    .line 1395
    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 1396
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_225
    if-ge v2, v1, :cond_234

    .line 1397
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1396
    add-int/lit8 v2, v2, 0x1

    goto :goto_225

    .line 1402
    .end local v1    # "digestsSize":I
    .end local v2    # "index":I
    :cond_234
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    .line 1404
    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 1405
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 1406
    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 1409
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 1410
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 1411
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 1413
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 1414
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 1415
    invoke-static {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 1416
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 1418
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 1419
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 1421
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 1422
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 1423
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 1424
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 1426
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 1427
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 1429
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 1431
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 1432
    const-class v1, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 1433
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    .line 1434
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    .line 1435
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    .line 1437
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 1438
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 1439
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    .line 1440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    .line 1442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    .line 1443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 1444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    .line 1449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    .line 1453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    .line 1454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    .line 1459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    .line 1463
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    .line 1464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    .line 1465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    .line 1466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    .line 1467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    .line 1468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    .line 1469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    .line 1470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    .line 1471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 1472
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1473
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 1474
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 1475
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    .line 1476
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    .line 1477
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    .line 1478
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 1480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    .line 1481
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    .line 1482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    .line 1483
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 1484
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 1485
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 1486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    .line 1487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    .line 1488
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 1489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    .line 1490
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 1491
    invoke-direct {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    .line 1492
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseApkPath"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "manifestArray"    # Landroid/content/res/TypedArray;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    nop

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 195
    nop

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 198
    nop

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 201
    nop

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 205
    nop

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 208
    nop

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 212
    nop

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 220
    nop

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 233
    nop

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 235
    nop

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 237
    nop

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 243
    nop

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 246
    nop

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 253
    nop

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 258
    nop

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 261
    nop

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 265
    nop

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 267
    nop

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 270
    nop

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 274
    nop

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 277
    nop

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 280
    nop

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 283
    nop

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 286
    nop

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 289
    nop

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 295
    nop

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 298
    nop

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 301
    nop

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 308
    nop

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 314
    nop

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 327
    nop

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 331
    nop

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 335
    nop

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 374
    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    .line 385
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    .line 386
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    .line 399
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    .line 439
    const-wide v2, 0x100000000000L

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    .line 581
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 582
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    .line 584
    if-eqz p4, :cond_14c

    .line 585
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    .line 586
    const/16 v0, 0xb

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    .line 588
    const/4 v0, 0x5

    .line 589
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 590
    const/4 v0, 0x2

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 593
    const/16 v0, 0x9

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 595
    const/16 v0, 0xa

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 598
    const/4 v0, 0x6

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 602
    :cond_14c
    return-void
.end method

.method private addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .registers 7
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 1856
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_49

    .line 1857
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 1858
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "groupIndex":I
    :goto_20
    if-ltz v2, :cond_46

    .line 1859
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_2f

    goto :goto_37

    .line 1860
    :cond_2f
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Max limit on number of MIME Groups reached"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1862
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    .line 1858
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 1856
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "groupIndex":I
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1865
    .end local v0    # "i":I
    :cond_49
    return-void
.end method

.method private assignDerivedFields()V
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    .line 676
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    .line 677
    return-void
.end method

.method private buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_a

    .line 1177
    const/4 v0, 0x0

    return-object v0

    .line 1179
    :cond_a
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1180
    .local v0, "ret":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1181
    .local v2, "processName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 1182
    .local v3, "process":Lcom/android/server/pm/pkg/component/ParsedProcess;
    nop

    .line 1183
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1185
    .local v4, "appClassesByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    .line 1186
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1188
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1189
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1190
    .local v7, "appClassName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_57

    .line 1191
    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "appClassName":Ljava/lang/String;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 1195
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "process":Lcom/android/server/pm/pkg/component/ParsedProcess;
    .end local v4    # "appClassesByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    :cond_5a
    goto :goto_1a

    .line 1196
    :cond_5b
    return-object v0
.end method

.method private getBoolean(J)Z
    .registers 7
    .param p1, "flag"    # J

    .line 564
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .registers 4
    .param p0, "first"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p1, "second"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 125
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 8
    .param p1, "flag"    # J
    .param p3, "value"    # Z

    .line 555
    if-eqz p3, :cond_8

    .line 556
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    goto :goto_e

    .line 558
    :cond_8
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    .line 560
    :goto_e
    return-object p0
.end method


# virtual methods
.method public bridge synthetic addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "parsedActivity"    # Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 786
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 788
    return-object p0
.end method

.method public bridge synthetic addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "adoptPermission"    # Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    .line 738
    return-object p0
.end method

.method public bridge synthetic addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "parsedApexSystemService"    # Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 794
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    .line 796
    return-object p0
.end method

.method public bridge synthetic addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "attribution"    # Lcom/android/server/pm/pkg/component/ParsedAttribution;

    .line 822
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    .line 823
    return-object p0
.end method

.method public bridge synthetic addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "configPreference"    # Landroid/content/pm/ConfigurationInfo;

    .line 681
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    .line 682
    return-object p0
.end method

.method public bridge synthetic addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "featureGroup"    # Landroid/content/pm/FeatureGroupInfo;

    .line 693
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    .line 694
    return-object p0
.end method

.method public bridge synthetic addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 767
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 768
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 769
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    .line 770
    return-object p0
.end method

.method public bridge synthetic addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "instrumentation"    # Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    .line 718
    return-object p0
.end method

.method public bridge synthetic addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 5
    .param p1, "keySetName"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .line 775
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 776
    .local v0, "publicKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-nez v0, :cond_10

    .line 777
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 779
    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    .line 781
    return-object p0
.end method

.method public bridge synthetic addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 828
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    .line 830
    return-object p0
.end method

.method public bridge synthetic addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "originalPackage"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    .line 724
    return-object p0
.end method

.method public addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5
    .param p1, "overlayableName"    # Ljava/lang/String;
    .param p2, "actorName"    # Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 730
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    .line 731
    return-object p0
.end method

.method public bridge synthetic addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/pkg/component/ParsedPermission;

    .line 743
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    .line 744
    return-object p0
.end method

.method public bridge synthetic addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "permissionGroup"    # Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 749
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    .line 750
    return-object p0
.end method

.method public bridge synthetic addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "intentInfo"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 901
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 902
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 901
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 903
    return-object p0
.end method

.method public bridge synthetic addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "property"    # Landroid/content/pm/PackageManager$Property;

    .line 699
    if-nez p1, :cond_3

    .line 700
    return-object p0

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    .line 703
    return-object p0
.end method

.method public bridge synthetic addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "protectedBroadcast"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 709
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 712
    :cond_14
    return-object p0
.end method

.method public bridge synthetic addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "parsedProvider"    # Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 815
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 817
    return-object p0
.end method

.method public bridge synthetic addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 908
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    .line 909
    return-object p0
.end method

.method public bridge synthetic addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 915
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    .line 916
    return-object p0
.end method

.method public bridge synthetic addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    .line 922
    return-object p0
.end method

.method public bridge synthetic addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "parsedReceiver"    # Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 801
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    .line 802
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 803
    return-object p0
.end method

.method public bridge synthetic addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "reqFeature"    # Landroid/content/pm/FeatureInfo;

    .line 687
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    .line 688
    return-object p0
.end method

.method public bridge synthetic addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "parsedService"    # Lcom/android/server/pm/pkg/component/ParsedService;

    .line 808
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 810
    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    .line 844
    return-object p0
.end method

.method public bridge synthetic addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 864
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 865
    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 836
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 837
    return-object p0
.end method

.method public bridge synthetic addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public final addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 857
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 858
    return-object p0
.end method

.method public bridge synthetic addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/pkg/component/ParsedUsesPermission;

    .line 755
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    .line 759
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 760
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    .line 762
    return-object p0
.end method

.method public bridge synthetic addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 8
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "versionMajor"    # J
    .param p4, "certSha256Digests"    # [Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 879
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 881
    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    .line 883
    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 8
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "version"    # J
    .param p4, "certSha256Digests"    # [Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 890
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 891
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    .line 893
    const-class v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v0, v2, p4, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 895
    return-object p0
.end method

.method public areAttributionsUserVisible()Z
    .registers 3

    .line 2390
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 5

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 7
    .param p1, "splitNames"    # [Ljava/lang/String;
    .param p2, "splitCodePaths"    # [Ljava/lang/String;
    .param p3, "splitRevisionCodes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 988
    .local p4, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    .line 989
    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 990
    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    .line 991
    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 993
    array-length v0, p1

    .line 994
    .local v0, "count":I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    .line 995
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 996
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    .line 1201
    const/4 v0, 0x0

    return v0
.end method

.method public getActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1786
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getAdoptPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1733
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .line 1792
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    return-object v0
.end method

.method public getAppComponentFactory()Ljava/lang/String;
    .registers 2

    .line 1963
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object v0
.end method

.method public getAutoRevokePermissions()I
    .registers 2

    .line 2375
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return v0
.end method

.method public getBackupAgentName()Ljava/lang/String;
    .registers 2

    .line 1969
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()I
    .registers 2

    .line 1974
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    return v0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .registers 2

    .line 1553
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseRevisionCode()I
    .registers 2

    .line 1524
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return v0
.end method

.method public getCategory()I
    .registers 2

    .line 1979
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    return v0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .registers 2

    .line 1985
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 1991
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibleWidthLimitDp()I
    .registers 2

    .line 1996
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return v0
.end method

.method public getCompileSdkVersion()I
    .registers 2

    .line 1535
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return v0
.end method

.method public getCompileSdkVersionCodeName()Ljava/lang/String;
    .registers 2

    .line 1541
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object v0
.end method

.method public getDataExtractionRules()I
    .registers 2

    .line 2021
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    return v0
.end method

.method public getDescriptionRes()I
    .registers 2

    .line 2001
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    return v0
.end method

.method public getFeatureGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1715
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object v0
.end method

.method public getFullBackupContent()I
    .registers 2

    .line 2016
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    return v0
.end method

.method public getGwpAsanMode()I
    .registers 2

    .line 2302
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return v0
.end method

.method public getIconRes()I
    .registers 2

    .line 2026
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    return v0
.end method

.method public getImplicitPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getInstallLocation()I
    .registers 2

    .line 2031
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    return v0
.end method

.method public getInstrumentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object v0
.end method

.method public getKeySetMapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    .line 1774
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2401
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 2402
    :cond_9
    nop

    .line 2401
    :goto_a
    return-object v0
.end method

.method public getLabelRes()I
    .registers 2

    .line 2036
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    return v0
.end method

.method public getLargestWidthLimitDp()I
    .registers 2

    .line 2041
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return v0
.end method

.method public getLibraryNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object v0
.end method

.method public getLocaleConfigRes()I
    .registers 2

    .line 2319
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    return v0
.end method

.method public getLogo()I
    .registers 2

    .line 2046
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    return v0
.end method

.method public getLongVersionCode()J
    .registers 3

    .line 1519
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    return-wide v0
.end method

.method public getManageSpaceActivityName()Ljava/lang/String;
    .registers 2

    .line 2052
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAspectRatio()F
    .registers 2

    .line 2057
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return v0
.end method

.method public getMaxSdkVersion()I
    .registers 2

    .line 2078
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    return v0
.end method

.method public getMemtagMode()I
    .registers 2

    .line 2308
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    return v0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 2

    .line 1852
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMimeGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1870
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getMinAspectRatio()F
    .registers 2

    .line 2062
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    return v0
.end method

.method public getMinExtensionVersions()Landroid/util/SparseIntArray;
    .registers 2

    .line 2068
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .registers 2

    .line 2073
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    return v0
.end method

.method public getNativeHeapZeroInitialized()I
    .registers 2

    .line 2314
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public getNetworkSecurityConfigRes()I
    .registers 2

    .line 2083
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 2089
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOriginalPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object v0
.end method

.method public getOverlayCategory()Ljava/lang/String;
    .registers 2

    .line 1588
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayPriority()I
    .registers 2

    .line 1593
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    return v0
.end method

.method public getOverlayTarget()Ljava/lang/String;
    .registers 2

    .line 1576
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTargetOverlayableName()Ljava/lang/String;
    .registers 2

    .line 1582
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayables()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1547
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1888
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    .line 2095
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    .line 1828
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    .line 1822
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredActivityFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 1840
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 1052
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    :goto_7
    return-object v0
.end method

.method public getProcesses()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    .line 1846
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    .line 1762
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getProtectedBroadcasts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1915
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1921
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public getRequestedFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 1709
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1744
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredAccountType()Ljava/lang/String;
    .registers 2

    .line 1570
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresSmallestWidthDp()I
    .registers 2

    .line 2100
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return v0
.end method

.method public getResizeableActivity()Ljava/lang/Boolean;
    .registers 2

    .line 2241
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRestrictUpdateHash()[B
    .registers 2

    .line 1721
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object v0
.end method

.method public getRestrictedAccountType()Ljava/lang/String;
    .registers 2

    .line 1564
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundIconRes()I
    .registers 2

    .line 2105
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    return v0
.end method

.method public getSdkLibName()Ljava/lang/String;
    .registers 2

    .line 1610
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkLibVersionMajor()I
    .registers 2

    .line 1615
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    return v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    return-object v0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .registers 2

    .line 1692
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserLabel()I
    .registers 2

    .line 1697
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 1882
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getSplitClassLoaderNames()[Ljava/lang/String;
    .registers 2

    .line 1927
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .registers 2

    .line 1933
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getSplitDependencies()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    :cond_6
    return-object v0
.end method

.method public getSplitFlags()[I
    .registers 2

    .line 1945
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .registers 2

    .line 1951
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getSplitRevisionCodes()[I
    .registers 2

    .line 1957
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :cond_6
    return-object v0
.end method

.method public getStaticSharedLibName()Ljava/lang/String;
    .registers 2

    .line 1621
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticSharedLibVersion()J
    .registers 3

    .line 1626
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public getTargetSandboxVersion()I
    .registers 2

    .line 2115
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return v0
.end method

.method public getTargetSdkVersion()I
    .registers 2

    .line 2110
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return v0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 2

    .line 2121
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    .line 2126
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    return v0
.end method

.method public getUiOptions()I
    .registers 2

    .line 2131
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    return v0
.end method

.method public getUpgradeKeySets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object v0
.end method

.method public getUsesLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1638
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesOptionalLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesOptionalNativeLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    .line 1750
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getUsesSdkLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1687
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .registers 2

    .line 1683
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object v0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1662
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    .line 1674
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 2

    .line 1668
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .line 1509
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    return v0
.end method

.method public getVersionCodeMajor()I
    .registers 2

    .line 1514
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .line 1530
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 1876
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getZygotePreloadName()Ljava/lang/String;
    .registers 2

    .line 2137
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object v0
.end method

.method public hasPreserveLegacyExternalStorage()Z
    .registers 3

    .line 2380
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public hasRequestForegroundServiceExemption()Z
    .registers 3

    .line 2385
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .registers 2

    .line 2325
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hideAsParsed()Ljava/lang/Object;
    .registers 1

    .line 670
    invoke-direct {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    .line 671
    return-object p0
.end method

.method public isAllowAudioPlaybackCapture()Z
    .registers 3

    .line 2345
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAllowBackup()Z
    .registers 3

    .line 2152
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAllowClearUserData()Z
    .registers 3

    .line 2197
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAllowClearUserDataOnFailedRestore()Z
    .registers 3

    .line 2340
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAllowNativeHeapPointerTagging()Z
    .registers 3

    .line 2370
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAllowTaskReparenting()Z
    .registers 3

    .line 2192
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isAnyDensity()Z
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 642
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 645
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isBackupInForeground()Z
    .registers 3

    .line 2281
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isBaseHardwareAccelerated()Z
    .registers 3

    .line 2147
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isCantSaveState()Z
    .registers 3

    .line 2365
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isCrossProfile()Z
    .registers 3

    .line 2011
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isDebuggable()Z
    .registers 3

    .line 2177
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .registers 3

    .line 2291
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isDirectBootAware()Z
    .registers 3

    .line 2296
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 2006
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isExternalStorage()Z
    .registers 3

    .line 2142
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isExtractNativeLibs()Z
    .registers 3

    .line 2227
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isForceQueryable()Z
    .registers 3

    .line 1903
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isFullBackupOnly()Z
    .registers 3

    .line 2167
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isGame()Z
    .registers 3

    .line 2232
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isHasCode()Z
    .registers 3

    .line 2187
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isHasDomainUrls()Z
    .registers 3

    .line 2266
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isHasFragileUserData()Z
    .registers 3

    .line 2360
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isIsolatedSplitLoading()Z
    .registers 3

    .line 2261
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isKillAfterRestore()Z
    .registers 3

    .line 2157
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isLargeHeap()Z
    .registers 3

    .line 2202
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isLeavingSharedUid()Z
    .registers 3

    .line 2412
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isMultiArch()Z
    .registers 3

    .line 2222
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isOnBackInvokedCallbackEnabled()Z
    .registers 3

    .line 2407
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isOverlay()Z
    .registers 3

    .line 2256
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isOverlayIsStatic()Z
    .registers 3

    .line 1598
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isPartiallyDirectBootAware()Z
    .registers 3

    .line 2330
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .registers 3

    .line 2172
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isProfileable()Z
    .registers 3

    .line 2276
    const-wide v0, 0x200000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isProfileableByShell()Z
    .registers 3

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isRequestLegacyExternalStorage()Z
    .registers 3

    .line 2350
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isRequiredForAllUsers()Z
    .registers 3

    .line 1558
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isResetEnabledSettingsOnAppDataCleared()Z
    .registers 3

    .line 2395
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isResizeable()Z
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 634
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 637
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isResizeableActivityViaSdkVersion()Z
    .registers 3

    .line 2335
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isRestoreAnyVersion()Z
    .registers 3

    .line 2162
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isSdkLibrary()Z
    .registers 3

    .line 2251
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isStaticSharedLibrary()Z
    .registers 3

    .line 2246
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isSupportsExtraLargeScreens()Z
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 626
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 629
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportsLargeScreens()Z
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 618
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 621
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportsNormalScreens()Z
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isSupportsRtl()Z
    .registers 3

    .line 2212
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isSupportsSmallScreens()Z
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 606
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 609
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTestOnly()Z
    .registers 3

    .line 2217
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isUse32BitAbi()Z
    .registers 3

    .line 1893
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isUseEmbeddedDex()Z
    .registers 3

    .line 2286
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isUsesCleartextTraffic()Z
    .registers 3

    .line 2207
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isUsesNonSdkApi()Z
    .registers 3

    .line 2355
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isVisibleToInstantApps()Z
    .registers 3

    .line 1898
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public isVmSafeMode()Z
    .registers 3

    .line 2182
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 851
    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 871
    return-object p0
.end method

.method public bridge synthetic setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2870
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2670
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2715
    const-wide/16 v0, 0x800

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2865
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2895
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2710
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "anyDensity"    # I

    .line 977
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 978
    return-object p0

    .line 981
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 982
    return-object p0
.end method

.method public bridge synthetic setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "appComponentFactory"    # Ljava/lang/String;

    .line 2948
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 2949
    return-object p0
.end method

.method public setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "attributionsAreUserVisible"    # Z

    .line 2996
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 2997
    return-object p0
.end method

.method public bridge synthetic setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2900
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    .line 2901
    return-object p0
.end method

.method public bridge synthetic setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "backupAgentName"    # Ljava/lang/String;

    .line 2954
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    .line 2955
    return-object p0
.end method

.method public bridge synthetic setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2811
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2502
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    .line 2503
    return-object p0
.end method

.method public bridge synthetic setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2665
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2417
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    .line 2418
    return-object p0
.end method

.method public bridge synthetic setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2890
    const-wide v0, 0x800000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2508
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    .line 2509
    return-object p0
.end method

.method public bridge synthetic setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .line 2960
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    .line 2961
    return-object p0
.end method

.method public bridge synthetic setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 2966
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    .line 2967
    return-object p0
.end method

.method public bridge synthetic setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2514
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    .line 2515
    return-object p0
.end method

.method public bridge synthetic setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2423
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    .line 2424
    return-object p0
.end method

.method public setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p1, "compileSdkVersionCodeName"    # Ljava/lang/String;

    .line 2917
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 2918
    return-object p0
.end method

.method public bridge synthetic setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2531
    const-wide v0, 0x80000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2542
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    .line 2543
    return-object p0
.end method

.method public bridge synthetic setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2695
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2821
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2520
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    .line 2521
    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2826
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2526
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2660
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2745
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2497
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2536
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    .line 2537
    return-object p0
.end method

.method public bridge synthetic setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2685
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2750
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2831
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    .line 2832
    return-object p0
.end method

.method public bridge synthetic setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2705
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2796
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2885
    const-wide v0, 0x400000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2548
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    .line 2549
    return-object p0
.end method

.method public bridge synthetic setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2554
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    .line 2555
    return-object p0
.end method

.method public bridge synthetic setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2791
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2675
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    .line 3017
    .local p1, "knownEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3018
    return-object p0
.end method

.method public bridge synthetic setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2565
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    .line 2566
    return-object p0
.end method

.method public bridge synthetic setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2720
    const-wide/16 v0, 0x1000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2571
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    .line 2572
    return-object p0
.end method

.method public bridge synthetic setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2560
    const-wide/high16 v0, 0x8000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 3010
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    .line 3011
    return-object p0
.end method

.method public bridge synthetic setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2577
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    .line 2578
    return-object p0
.end method

.method public bridge synthetic setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "manageSpaceActivityName"    # Ljava/lang/String;

    .line 2972
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 2973
    return-object p0
.end method

.method public bridge synthetic setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # F

    .line 2583
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    .line 2584
    return-object p0
.end method

.method public bridge synthetic setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2607
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    .line 2608
    return-object p0
.end method

.method public bridge synthetic setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2837
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    .line 2838
    return-object p0
.end method

.method public bridge synthetic setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/os/Bundle;

    .line 2475
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    .line 2476
    return-object p0
.end method

.method public bridge synthetic setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # F

    .line 2589
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    .line 2590
    return-object p0
.end method

.method public bridge synthetic setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/util/SparseIntArray;

    .line 2595
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 2596
    return-object p0
.end method

.method public bridge synthetic setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2601
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    .line 2602
    return-object p0
.end method

.method public bridge synthetic setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2740
    const-wide/32 v0, 0x10000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2844
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    .line 2845
    return-object p0
.end method

.method public bridge synthetic setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2613
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    .line 2614
    return-object p0
.end method

.method public bridge synthetic setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 1045
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1046
    return-object p0
.end method

.method public setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "value"    # Z

    .line 3023
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 3024
    return-object p0
.end method

.method public bridge synthetic setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2786
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "overlayCategory"    # Ljava/lang/String;

    .line 2942
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    .line 2943
    return-object p0
.end method

.method public bridge synthetic setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2440
    const-wide v0, 0x8000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2434
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    .line 2435
    return-object p0
.end method

.method public bridge synthetic setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "overlayTarget"    # Ljava/lang/String;

    .line 1021
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    .line 1022
    return-object p0
.end method

.method public bridge synthetic setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "overlayTargetOverlayableName"    # Ljava/lang/String;

    .line 2936
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 2937
    return-object p0
.end method

.method public bridge synthetic setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2855
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 2978
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    .line 2979
    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2690
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2906
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 2923
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    .line 2924
    return-object p0
.end method

.method public bridge synthetic setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 2469
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    .line 2470
    return-object p0
.end method

.method public bridge synthetic setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 5
    .param p1, "value"    # Z

    .line 2806
    xor-int/lit8 v0, p1, 0x1

    const-wide v1, 0x200000000000L

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2801
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2649
    const-wide v0, 0x400000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2875
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 2850
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 2851
    return-object p0
.end method

.method public bridge synthetic setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "requiredAccountType"    # Ljava/lang/String;

    .line 1015
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 1016
    return-object p0
.end method

.method public bridge synthetic setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2429
    const-wide v0, 0x4000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2619
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    .line 2620
    return-object p0
.end method

.method public setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 4
    .param p1, "resetEnabledSettingsOnAppDataCleared"    # Z

    .line 3003
    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 3005
    return-object p0
.end method

.method public bridge synthetic setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "resizeable"    # I

    .line 967
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 968
    return-object p0

    .line 971
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 972
    return-object p0
.end method

.method public bridge synthetic setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 2758
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 2759
    return-object p0
.end method

.method public bridge synthetic setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2860
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2680
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # [B

    .line 2457
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    .line 2458
    return-object p0
.end method

.method public bridge synthetic setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "restrictedAccountType"    # Ljava/lang/String;

    .line 2929
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 2930
    return-object p0
.end method

.method public bridge synthetic setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2625
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    .line 2626
    return-object p0
.end method

.method public bridge synthetic setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "sdkLibName"    # Ljava/lang/String;

    .line 2764
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    .line 2765
    return-object p0
.end method

.method public bridge synthetic setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "sdkLibVersionMajor"    # I

    .line 2770
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    .line 2771
    return-object p0
.end method

.method public bridge synthetic setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2776
    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "sharedUserId"    # Ljava/lang/String;

    .line 1039
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    .line 1040
    return-object p0
.end method

.method public bridge synthetic setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2451
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    .line 2452
    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/content/pm/SigningDetails;

    .line 2481
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 2482
    return-object p0
.end method

.method public bridge synthetic setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "splitIndex"    # I
    .param p2, "classLoaderName"    # Ljava/lang/String;

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 1010
    return-object p0
.end method

.method public bridge synthetic setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 5
    .param p1, "splitIndex"    # I
    .param p2, "splitHasCode"    # Z

    .line 1001
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    if-eqz p2, :cond_9

    .line 1002
    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    goto :goto_d

    .line 1003
    :cond_9
    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    :goto_d
    aput v1, v0, p1

    .line 1004
    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "staticSharedLibName"    # Ljava/lang/String;

    .line 1033
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    .line 1034
    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "value"    # J

    .line 2445
    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    .line 2446
    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2781
    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "supportsExtraLargeScreens"    # I

    .line 957
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 958
    return-object p0

    .line 961
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 962
    return-object p0
.end method

.method public bridge synthetic setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "supportsLargeScreens"    # I

    .line 947
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 948
    return-object p0

    .line 951
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 952
    return-object p0
.end method

.method public bridge synthetic setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "supportsNormalScreens"    # I

    .line 937
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 938
    return-object p0

    .line 941
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 942
    return-object p0
.end method

.method public bridge synthetic setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2730
    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "supportsSmallScreens"    # I

    .line 927
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 928
    return-object p0

    .line 931
    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 932
    return-object p0
.end method

.method public bridge synthetic setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2631
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    .line 2632
    return-object p0
.end method

.method public bridge synthetic setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2637
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    .line 2638
    return-object p0
.end method

.method public bridge synthetic setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "taskAffinity"    # Ljava/lang/String;

    .line 2984
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    .line 2985
    return-object p0
.end method

.method public bridge synthetic setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2735
    const-wide/32 v0, 0x8000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2643
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    .line 2644
    return-object p0
.end method

.method public bridge synthetic setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 2654
    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    .line 2655
    return-object p0
.end method

.method public bridge synthetic setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    .line 2463
    .local p1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2464
    return-object p0
.end method

.method public bridge synthetic setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2487
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2816
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2725
    const-wide/16 v0, 0x2000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2880
    const-wide v0, 0x200000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 2911
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    .line 2912
    return-object p0
.end method

.method public bridge synthetic setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2492
    const-wide v0, 0x20000000000L

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 4
    .param p1, "value"    # Z

    .line 2700
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1027
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    .line 1028
    return-object p0
.end method

.method public bridge synthetic setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2
    .param p1, "zygotePreloadName"    # Ljava/lang/String;

    .line 2990
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 2991
    return-object p0
.end method

.method public bridge synthetic sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 651
    return-object p0
.end method

.method public bridge synthetic sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 657
    return-object p0
.end method

.method public bridge synthetic sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 3

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 663
    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1066
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1067
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1068
    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 1069
    return-object v0
.end method

.method public toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 1073
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1078
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 1079
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1080
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 1081
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1082
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 1083
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1084
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1085
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 1086
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 1090
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1092
    const-wide v1, 0x100000000000L

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1094
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 1095
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 1099
    nop

    .line 1100
    sget-boolean v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_50

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    if-eqz v1, :cond_50

    goto :goto_52

    :cond_50
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    :goto_52
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1101
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 1102
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 1103
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1104
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1105
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1106
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 1107
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1108
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 1109
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1110
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 1111
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1112
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1116
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 1117
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1118
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1119
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1122
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1131
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1132
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_b1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_ae

    goto :goto_b1

    .line 1133
    :cond_ae
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_b2

    :cond_b1
    :goto_b1
    move-object v1, v2

    :goto_b2
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1134
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1135
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1136
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 1137
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1138
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1139
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1141
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 1142
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 1144
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    .line 1145
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    .line 1146
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    .line 1147
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    .line 1148
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 1150
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_10a

    move-object v1, v2

    goto :goto_10c

    :cond_10a
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_10c
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_118

    goto :goto_11a

    :cond_118
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_11a
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 1154
    iget-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1155
    invoke-direct {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    .line 1156
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    .line 1157
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v1, :cond_135

    .line 1158
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    .line 1161
    :cond_135
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1058
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1206
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1207
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1208
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1209
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1210
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1211
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1212
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1216
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1222
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1225
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    .line 1227
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1228
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1230
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1231
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1232
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1233
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1234
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1235
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1237
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_cd

    .line 1240
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_df

    .line 1242
    :cond_cd
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_d2
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_df

    .line 1244
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 1248
    .end local v0    # "index":I
    :cond_df
    :goto_df
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1249
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_f3

    .line 1251
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_105

    .line 1253
    :cond_f3
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_f8
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_105

    .line 1255
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    .line 1259
    .end local v0    # "index":I
    :cond_105
    :goto_105
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1260
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1264
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1266
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1267
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1268
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1269
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1270
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 1272
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1279
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1280
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1281
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 1282
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1283
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1285
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1289
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 1290
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1293
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1297
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1307
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1308
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1309
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1320
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 1326
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1329
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1330
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 1332
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 1334
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1336
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 1339
    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 1341
    return-void
.end method
