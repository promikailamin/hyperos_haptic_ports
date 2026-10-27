.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$PermissionState;,
        Landroid/content/pm/PackageInstaller$SessionParams$UserActionRequirement;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xff

.field public static final blacklist MAX_PERMISSION_STATES_SIZE:I = 0x4000

.field public static final blacklist MAX_URI_LENGTH:I = 0x800

.field public static final whitelist MODE_FULL_INSTALL:I = 0x1

.field public static final whitelist MODE_INHERIT_EXISTING:I = 0x2

.field public static final greylist-max-o MODE_INVALID:I = -0x1

.field public static final whitelist PERMISSION_STATE_DEFAULT:I = 0x0

.field public static final whitelist PERMISSION_STATE_DENIED:I = 0x2

.field public static final whitelist PERMISSION_STATE_GRANTED:I = 0x1

.field public static final whitelist RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UID_UNKNOWN:I = -0x1

.field public static final whitelist USER_ACTION_NOT_REQUIRED:I = 0x2

.field public static final whitelist USER_ACTION_REQUIRED:I = 0x1

.field public static final whitelist USER_ACTION_UNSPECIFIED:I


# instance fields
.field public greylist-max-o abiOverride:Ljava/lang/String;

.field public greylist-max-r appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-o appIconLastModified:J

.field public greylist-max-p appLabel:Ljava/lang/String;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist dataLoaderParams:Landroid/content/pm/DataLoaderParams;

.field public blacklist developmentInstallFlags:I

.field public blacklist dexoptCompilerFilter:Ljava/lang/String;

.field public blacklist extensionParams:Landroid/os/PersistableBundle;

.field public blacklist forceQueryableOverride:Z

.field public blacklist forceVerification:Z

.field public greylist installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public greylist-max-o installerPackageName:Ljava/lang/String;

.field public blacklist isAutoInstallDependenciesEnabled:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isStaged:Z

.field private final blacklist mPermissionStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mode:I

.field public greylist-max-r originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public blacklist requiredInstalledVersionCode:J

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public greylist-max-r sizeBytes:J

.field public blacklist unarchiveId:I

.field public greylist-max-o volumeUuid:Ljava/lang/String;

.field public blacklist whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3018
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    .line 4148
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 8

    .line 3190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3092
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3095
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3098
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3100
    const/4 v2, 0x0

    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3108
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3110
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3122
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 3126
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3137
    const/4 v5, 0x3

    iput v5, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3143
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3147
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3151
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3153
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3155
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3159
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3161
    iput-boolean v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3163
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 3165
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3171
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 3191
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3192
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 3193
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 3196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3092
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3095
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3098
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3100
    const/4 v2, 0x0

    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3108
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3110
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3122
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 3126
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3137
    const/4 v5, 0x3

    iput v5, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3143
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3147
    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3151
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3153
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3155
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3159
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3161
    iput-boolean v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3163
    iput v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 3165
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3171
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 3197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 3198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3204
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 3205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 3206
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 3207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3208
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 3210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 3211
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 3212
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3213
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 3216
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 3217
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3218
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 3219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3220
    const-class v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 3221
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/DataLoaderParamsParcel;

    .line 3220
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 3222
    if-eqz v0, :cond_e7

    .line 3223
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3225
    :cond_e7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3226
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3230
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 3232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3234
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    .line 3235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 3236
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    .line 3237
    return-void
.end method

.method private blacklist validatePermissionStates(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3476
    nop

    .line 3477
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3478
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 3479
    goto :goto_d

    .line 3480
    :cond_1f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 3482
    goto :goto_23

    .line 3483
    :cond_35
    const/16 p1, 0x4000

    if-gt v2, p1, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method


# virtual methods
.method public greylist-max-o areHiddenOptionsSet()Z
    .registers 3

    .line 3290
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x11d880

    and-int/2addr v0, v1

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public blacklist copy()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 4

    .line 3241
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 3242
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3243
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3244
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3245
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3246
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3247
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3248
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 3249
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 3250
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 3251
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3252
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3253
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 3254
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 3255
    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3256
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3257
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3258
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 3259
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 3260
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3261
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 3262
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3263
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3264
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3265
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3266
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3267
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3268
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3269
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3270
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 3271
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3272
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3273
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    .line 3274
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 3275
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    .line 3276
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4101
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 4060
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4061
    const-string v0, "installFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4062
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installLocation"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4063
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installReason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4064
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installScenario"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4065
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "sizeBytes"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4066
    const-string v0, "appPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4067
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "appIcon"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4068
    const-string v0, "appLabel"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4069
    const-string/jumbo v0, "originatingUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4070
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "originatingUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4071
    const-string/jumbo v0, "referrerUri"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4072
    const-string v0, "abiOverride"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4073
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4074
    const-string/jumbo v0, "mPermissionStates"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4075
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "packageSource"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4076
    const-string/jumbo v0, "whitelistedRestrictedPermissions"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4077
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "autoRevokePermissions"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4078
    const-string v0, "installerPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4079
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4080
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4081
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forceQueryable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4082
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-static {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->-$$Nest$smuserActionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireUserAction"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4083
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "requiredInstalledVersionCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4084
    const-string v0, "dataLoaderParams"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4085
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rollbackDataPolicy"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4086
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "rollbackLifetimeMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4087
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rollbackImpactLevel"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4088
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 4089
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4088
    const-string v1, "applicationEnabledSettingPersistent"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4090
    const-string v0, "developmentInstallFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4091
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "unarchiveId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4092
    const-string v0, "dexoptCompilerFilter"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4093
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forceVerification"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4094
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isAutoInstallDependenciesEnabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4095
    const-string v0, "extensionParams"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4096
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4097
    return-void
.end method

.method public blacklist getEnableRollback()Z
    .registers 3

    .line 3837
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist getLegacyGrantedRuntimePermissions()[Ljava/lang/String;
    .registers 6

    .line 4003
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 4004
    const/4 v0, 0x0

    return-object v0

    .line 4007
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4008
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 4009
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4010
    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4011
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    .line 4012
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4008
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4016
    :cond_33
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermissionStates()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3997
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist setAllocateAggressive(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3762
    if-eqz p1, :cond_b

    .line 3763
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_13

    .line 3765
    :cond_b
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3767
    :goto_13
    return-void
.end method

.method public whitelist setAllowDowngrade(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3670
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 3671
    return-void
.end method

.method public whitelist setAppIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 3341
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 3342
    return-void
.end method

.method public whitelist setAppLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 3350
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 3351
    return-void
.end method

.method public whitelist setAppPackageName(Ljava/lang/String;)V
    .registers 2

    .line 3332
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 3333
    return-void
.end method

.method public whitelist setApplicationEnabledSettingPersistent()V
    .registers 2

    .line 3950
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    .line 3951
    return-void
.end method

.method public whitelist setAutoInstallDependenciesEnabled(Z)V
    .registers 2

    .line 4043
    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    .line 4044
    return-void
.end method

.method public whitelist setAutoRevokePermissionsMode(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3570
    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 3571
    return-void
.end method

.method public whitelist setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3854
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 3855
    return-void
.end method

.method public blacklist setDexoptCompilerFilter(Ljava/lang/String;)V
    .registers 2

    .line 3991
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 3992
    return-void
.end method

.method public whitelist setDontKillApp(Z)V
    .registers 2

    .line 3713
    if-eqz p1, :cond_9

    .line 3714
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 3716
    :cond_9
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3718
    :goto_f
    return-void
.end method

.method public whitelist setEnableRollback(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setEnableRollback(ZI)V

    .line 3587
    return-void
.end method

.method public whitelist setEnableRollback(ZI)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3606
    if-eqz p1, :cond_a

    .line 3607
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_16

    .line 3609
    :cond_a
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v0, -0x40001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3610
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3612
    :goto_16
    iput p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 3613
    return-void
.end method

.method public whitelist setExtensionParams(Landroid/os/PersistableBundle;)V
    .registers 2

    .line 4055
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    .line 4056
    return-void
.end method

.method public blacklist setForceQueryable()V
    .registers 2

    .line 3862
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 3863
    return-void
.end method

.method public blacklist setForceVerification()V
    .registers 2

    .line 4024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    .line 4025
    return-void
.end method

.method public whitelist setGrantedRuntimePermissions([Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3404
    if-nez p1, :cond_e

    .line 3406
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3407
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_21

    .line 3409
    :cond_e
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3411
    array-length v0, p1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_21

    aget-object v2, p1, v1

    .line 3412
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;

    .line 3411
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 3415
    :cond_21
    :goto_21
    return-void
.end method

.method public whitelist setInstallAsApex()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3832
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3833
    return-void
.end method

.method public whitelist setInstallAsInstantApp(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3723
    if-eqz p1, :cond_f

    .line 3724
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3725
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1b

    .line 3727
    :cond_f
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3728
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3730
    :goto_1b
    return-void
.end method

.method public whitelist setInstallAsVirtualPreload()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3739
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3740
    return-void
.end method

.method public blacklist setInstallFlagAllowTest()V
    .registers 2

    .line 3774
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3775
    return-void
.end method

.method public greylist-max-o setInstallFlagsForcePermissionPrompt()V
    .registers 2

    .line 3698
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3699
    return-void
.end method

.method public whitelist setInstallLocation(I)V
    .registers 2

    .line 3306
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 3307
    return-void
.end method

.method public whitelist setInstallReason(I)V
    .registers 2

    .line 3755
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 3756
    return-void
.end method

.method public whitelist setInstallScenario(I)V
    .registers 2

    .line 3942
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 3943
    return-void
.end method

.method public whitelist setInstallerPackageName(Ljava/lang/String;)V
    .registers 2

    .line 3791
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 3792
    return-void
.end method

.method public whitelist setMultiPackage()V
    .registers 2

    .line 3803
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 3804
    return-void
.end method

.method public whitelist setOriginatingUid(I)V
    .registers 2

    .line 3373
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 3374
    return-void
.end method

.method public whitelist setOriginatingUri(Landroid/net/Uri;)V
    .registers 4

    .line 3360
    if-eqz p1, :cond_17

    .line 3361
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-gt v0, v1, :cond_f

    goto :goto_17

    .line 3362
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Originating URI exceeds 2048 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3365
    :cond_17
    :goto_17
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 3366
    return-void
.end method

.method public whitelist setPackageSource(I)V
    .registers 2

    .line 3514
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 3515
    return-void
.end method

.method public whitelist setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 5

    .line 3449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3450
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provided permissionName cannot be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3451
    if-nez p1, :cond_19

    const-string/jumbo p1, "null"

    goto :goto_1b

    :cond_19
    const-string p1, "empty"

    :goto_1b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3453
    :cond_27
    if-eqz p2, :cond_3c

    .line 3454
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->validatePermissionStates(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_3c

    .line 3455
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Permissions states exceeds size limits total size limit of 16384 in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3460
    :cond_3c
    :goto_3c
    packed-switch p2, :pswitch_data_6a

    .line 3469
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected permission state int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3466
    :pswitch_58
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    goto :goto_68

    .line 3462
    :pswitch_62
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    nop

    .line 3472
    :goto_68
    return-object p0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_62
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method public blacklist setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3489
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3490
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3491
    invoke-direct {p0, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->validatePermissionStates(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3496
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3497
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    goto :goto_12

    .line 3499
    :cond_29
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3500
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    goto :goto_2d

    .line 3502
    :cond_44
    return-void

    .line 3492
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Permissions states exceeds size limits total size limit of 16384 in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setReferrerUri(Landroid/net/Uri;)V
    .registers 4

    .line 3383
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-gt v0, v1, :cond_f

    goto :goto_17

    .line 3384
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Referrer URI exceeds 2048 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3387
    :cond_17
    :goto_17
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 3388
    return-void
.end method

.method public whitelist setRequestDowngrade(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3676
    if-eqz p1, :cond_9

    .line 3677
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 3679
    :cond_9
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3681
    :goto_f
    return-void
.end method

.method public whitelist setRequestUpdateOwnership(Z)V
    .registers 3

    .line 3969
    if-eqz p1, :cond_a

    .line 3970
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_12

    .line 3972
    :cond_a
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v0, -0x2000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3974
    :goto_12
    return-void
.end method

.method public whitelist setRequireUserAction(I)V
    .registers 5

    .line 3927
    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_29

    .line 3930
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireUserAction set as invalid value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", but must be one of [USER_ACTION_UNSPECIFIED, USER_ACTION_REQUIRED, USER_ACTION_NOT_REQUIRED]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3935
    :cond_29
    :goto_29
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 3936
    return-void
.end method

.method public blacklist setRequiredInstalledVersionCode(J)V
    .registers 3

    .line 3693
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 3694
    return-void
.end method

.method public whitelist setRollbackImpactLevel(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3656
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 3660
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    .line 3661
    return-void

    .line 3657
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setRollbackLifetimeMillis(J)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3632
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    .line 3635
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 3639
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    .line 3640
    return-void

    .line 3636
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3633
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "rollbackLifetimeMillis can\'t be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSize(J)V
    .registers 3

    .line 3319
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 3320
    return-void
.end method

.method public whitelist setStaged()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3821
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 3822
    return-void
.end method

.method public whitelist setUnarchiveId(I)V
    .registers 2

    .line 3986
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    .line 3987
    return-void
.end method

.method public whitelist setWhitelistedRestrictedPermissions(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3544
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    .line 3545
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3546
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    goto :goto_22

    .line 3548
    :cond_f
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 3549
    if-eqz p1, :cond_1f

    .line 3550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 3552
    :goto_22
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 4106
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4107
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4109
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4110
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4111
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4112
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4113
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4114
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4115
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4116
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4117
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4118
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4119
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4120
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 4121
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4122
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4123
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4124
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4125
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4126
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4127
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4128
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_7c

    .line 4129
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_80

    .line 4131
    :cond_7c
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4133
    :goto_80
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4134
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4135
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4136
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4137
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4138
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4139
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4140
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4141
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4142
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceVerification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4143
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoInstallDependenciesEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4144
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->extensionParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 4145
    return-void
.end method
