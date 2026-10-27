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

.field public static final whitelist MODE_FULL_INSTALL:I = 0x1

.field public static final whitelist MODE_INHERIT_EXISTING:I = 0x2

.field public static final greylist-max-o MODE_INVALID:I = -0x1

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

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist dataLoaderParams:Landroid/content/pm/DataLoaderParams;

.field public blacklist forceQueryableOverride:Z

.field public greylist-max-o grantedRuntimePermissions:[Ljava/lang/String;

.field public greylist installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public greylist-max-o installerPackageName:Ljava/lang/String;

.field public blacklist isAutoUpdate:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isRemoveDmAfterInstall:Z

.field public blacklist isStaged:Z

.field public greylist-max-p mode:I

.field public greylist-max-r originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public blacklist requiredInstalledVersionCode:J

.field public blacklist rollbackDataPolicy:I

.field public greylist-max-r sizeBytes:J

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

    .line 1958
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    .line 2730
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 2079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2001
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2004
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2006
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2014
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2016
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2028
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2032
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2045
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2051
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2055
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2059
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2063
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2080
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2081
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1998
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2001
    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2004
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2006
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2014
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2016
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2028
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 2032
    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2045
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2051
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2055
    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2059
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2063
    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2090
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2091
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2092
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2094
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2096
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2097
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2098
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2099
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2100
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 2103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2104
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 2106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2107
    const-class v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2108
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2107
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderParamsParcel;

    .line 2109
    .local v0, "dataLoaderParamsParcel":Landroid/content/pm/DataLoaderParamsParcel;
    if-eqz v0, :cond_cd

    .line 2110
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2112
    :cond_cd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    .line 2117
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    .line 2119
    return-void
.end method


# virtual methods
.method public greylist-max-o areHiddenOptionsSet()Z
    .registers 3

    .line 2167
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x11d880

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public blacklist copy()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 4

    .line 2123
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2124
    .local v0, "ret":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2125
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2126
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2127
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2128
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2129
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2130
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2131
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2132
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2133
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2134
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2135
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2136
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2137
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2138
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2139
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2140
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 2141
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2142
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2143
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 2144
    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2145
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2146
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2147
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2148
    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2150
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    .line 2151
    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    .line 2153
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2688
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2657
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2658
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const-string v1, "installFlags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2659
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installLocation"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2660
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installReason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2661
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installScenario"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2662
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "sizeBytes"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2663
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-string v1, "appPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2664
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

    .line 2665
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const-string v1, "appLabel"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2666
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    const-string/jumbo v1, "originatingUri"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2667
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "originatingUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2668
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    const-string/jumbo v1, "referrerUri"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2669
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    const-string v1, "abiOverride"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2670
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v1, "volumeUuid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2671
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    const-string v1, "grantedRuntimePermissions"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2672
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "packageSource"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2673
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    const-string/jumbo v1, "whitelistedRestrictedPermissions"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2674
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "autoRevokePermissions"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2675
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    const-string v1, "installerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2676
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isMultiPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2677
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isStaged"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2678
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forceQueryable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2679
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-static {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->-$$Nest$smuserActionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "requireUserAction"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2680
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "requiredInstalledVersionCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2681
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const-string v1, "dataLoaderParams"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2682
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rollbackDataPolicy"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2683
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2684
    return-void
.end method

.method public blacklist getEnableRollback()Z
    .registers 3

    .line 2566
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

.method public whitelist setAllocateAggressive(Z)V
    .registers 4
    .param p1, "allocateAggressive"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2479
    if-eqz p1, :cond_b

    .line 2480
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_13

    .line 2482
    :cond_b
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2484
    :goto_13
    return-void
.end method

.method public whitelist setAllowDowngrade(Z)V
    .registers 2
    .param p1, "allowDowngrade"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2396
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 2397
    return-void
.end method

.method public whitelist setAppIcon(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .line 2218
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 2219
    return-void
.end method

.method public whitelist setAppLabel(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "appLabel"    # Ljava/lang/CharSequence;

    .line 2227
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 2228
    return-void
.end method

.method public whitelist setAppPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 2209
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2210
    return-void
.end method

.method public whitelist setAutoRevokePermissionsMode(Z)V
    .registers 3
    .param p1, "shouldAutoRevoke"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2339
    xor-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 2340
    return-void
.end method

.method public blacklist setAutoUpdate()V
    .registers 2

    .line 2531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    .line 2532
    return-void
.end method

.method public whitelist setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V
    .registers 2
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2583
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 2584
    return-void
.end method

.method public whitelist setDontKillApp(Z)V
    .registers 3
    .param p1, "dontKillApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2430
    if-eqz p1, :cond_9

    .line 2431
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 2433
    :cond_9
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2435
    :goto_f
    return-void
.end method

.method public whitelist setEnableRollback(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2355
    if-eqz p1, :cond_a

    .line 2356
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_12

    .line 2358
    :cond_a
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2360
    :goto_12
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2361
    return-void
.end method

.method public whitelist setEnableRollback(ZI)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "dataPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2380
    if-eqz p1, :cond_a

    .line 2381
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_12

    .line 2383
    :cond_a
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2385
    :goto_12
    iput p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 2386
    return-void
.end method

.method public blacklist setForceQueryable()V
    .registers 2

    .line 2591
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 2592
    return-void
.end method

.method public whitelist setGrantedRuntimePermissions([Ljava/lang/String;)V
    .registers 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2269
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2270
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 2271
    return-void
.end method

.method public whitelist setInstallAsApex()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2561
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2562
    return-void
.end method

.method public whitelist setInstallAsInstantApp(Z)V
    .registers 3
    .param p1, "isInstantApp"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2440
    if-eqz p1, :cond_d

    .line 2441
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2442
    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_17

    .line 2444
    :cond_d
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2445
    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2447
    :goto_17
    return-void
.end method

.method public whitelist setInstallAsVirtualPreload()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2456
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2457
    return-void
.end method

.method public blacklist setInstallFlagAllowTest()V
    .registers 2

    .line 2491
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2492
    return-void
.end method

.method public greylist-max-o setInstallFlagsForcePermissionPrompt()V
    .registers 2

    .line 2424
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2425
    return-void
.end method

.method public whitelist setInstallLocation(I)V
    .registers 2
    .param p1, "installLocation"    # I

    .line 2183
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2184
    return-void
.end method

.method public whitelist setInstallReason(I)V
    .registers 2
    .param p1, "installReason"    # I

    .line 2472
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 2473
    return-void
.end method

.method public whitelist setInstallScenario(I)V
    .registers 2
    .param p1, "installScenario"    # I

    .line 2652
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    .line 2653
    return-void
.end method

.method public greylist-max-o setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 2504
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 2505
    return-void
.end method

.method public whitelist setMultiPackage()V
    .registers 2

    .line 2516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 2517
    return-void
.end method

.method public whitelist setOriginatingUid(I)V
    .registers 2
    .param p1, "originatingUid"    # I

    .line 2245
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 2246
    return-void
.end method

.method public whitelist setOriginatingUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "originatingUri"    # Landroid/net/Uri;

    .line 2237
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2238
    return-void
.end method

.method public whitelist setPackageSource(I)V
    .registers 2
    .param p1, "packageSource"    # I

    .line 2283
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    .line 2284
    return-void
.end method

.method public whitelist setReferrerUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "referrerUri"    # Landroid/net/Uri;

    .line 2255
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2256
    return-void
.end method

.method public blacklist setRemoveDmAfterInstall()V
    .registers 2

    .line 2524
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    .line 2525
    return-void
.end method

.method public whitelist setRequestDowngrade(Z)V
    .registers 3
    .param p1, "requestDowngrade"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2402
    if-eqz p1, :cond_9

    .line 2403
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_f

    .line 2405
    :cond_9
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2407
    :goto_f
    return-void
.end method

.method public whitelist setRequireUserAction(I)V
    .registers 5
    .param p1, "requireUserAction"    # I

    .line 2637
    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_29

    .line 2640
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireUserAction set as invalid value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but must be one of [USER_ACTION_UNSPECIFIED, USER_ACTION_REQUIRED, USER_ACTION_NOT_REQUIRED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2645
    :cond_29
    :goto_29
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    .line 2646
    return-void
.end method

.method public blacklist setRequiredInstalledVersionCode(J)V
    .registers 3
    .param p1, "versionCode"    # J

    .line 2419
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    .line 2420
    return-void
.end method

.method public whitelist setSize(J)V
    .registers 3
    .param p1, "sizeBytes"    # J

    .line 2196
    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 2197
    return-void
.end method

.method public whitelist setStaged()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2550
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 2551
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

    .line 2313
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    .line 2314
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2315
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    goto :goto_22

    .line 2317
    :cond_f
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2318
    if-eqz p1, :cond_1f

    .line 2319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 2321
    :goto_22
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2693
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2694
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2696
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2699
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2701
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2702
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2703
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2705
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2706
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2709
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2711
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2712
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2713
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2714
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2715
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_7a

    .line 2716
    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_7e

    .line 2718
    :cond_7a
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2720
    :goto_7e
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2722
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2724
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isRemoveDmAfterInstall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2725
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isAutoUpdate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2727
    return-void
.end method
