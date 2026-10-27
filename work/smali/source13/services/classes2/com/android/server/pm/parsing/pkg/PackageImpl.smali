.class public Lcom/android/server/pm/parsing/pkg/PackageImpl;
.super Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field private mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field private mBaseAppInfoFlags:I

.field private mBaseAppInfoPrivateFlags:I

.field private mBaseAppInfoPrivateFlagsExt:I

.field private mBooleans:I

.field private final manifestPackageName:Ljava/lang/String;

.field protected nativeLibraryDir:Ljava/lang/String;

.field protected nativeLibraryRootDir:Ljava/lang/String;

.field private nativeLibraryRootRequiresIsa:Z

.field protected primaryCpuAbi:Ljava/lang/String;

.field protected seInfo:Ljava/lang/String;

.field protected secondaryCpuAbi:Ljava/lang/String;

.field protected secondaryNativeLibraryDir:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 551
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 535
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;-><init>(Landroid/os/Parcel;)V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 536
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 540
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 541
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    .line 547
    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseApkPath"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p5, "isCoreApp"    # Z

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 190
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 192
    return-void
.end method

.method private assignDerivedFields()V
    .registers 5

    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    .line 209
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    .line 210
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "baseAppDataDir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "systemUserSuffix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "user_de"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public static buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 77
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 80
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public static forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p4, "isCoreApp"    # Z

    .line 62
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 86
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object v0

    return-object v0
.end method

.method public static forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 92
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method private getBoolean(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 176
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 5
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 167
    if-eqz p2, :cond_8

    .line 168
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    goto :goto_e

    .line 170
    :cond_8
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    .line 172
    :goto_e
    return-object p0
.end method


# virtual methods
.method public addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 241
    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 5
    .param p1, "index"    # I
    .param p2, "libraryName"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 234
    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 5

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 440
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_8
    if-ltz v1, :cond_19

    .line 442
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;I)V

    .line 440
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 444
    .end local v1    # "index":I
    :cond_19
    return-object p0
.end method

.method public bridge synthetic capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    return-object p0
.end method

.method public bridge synthetic clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    return-object p0
.end method

.method public bridge synthetic clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    return-object p0
.end method

.method public bridge synthetic clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLongVersionCode()J
    .registers 3

    .line 221
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManifestPackageName()Ljava/lang/String;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryRootDir()Ljava/lang/String;
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryNativeLibraryDir()Ljava/lang/String;
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 669
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 204
    return-object p0
.end method

.method public hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 1

    .line 196
    invoke-super {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->hideAsParsed()Ljava/lang/Object;

    .line 197
    return-object p0
.end method

.method public bridge synthetic hideAsParsed()Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public isCoreApp()Z
    .registers 2

    .line 616
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFactoryTest()Z
    .registers 2

    .line 626
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNativeLibraryRootRequiresIsa()Z
    .registers 2

    .line 587
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public isOdm()Z
    .registers 2

    .line 656
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isOem()Z
    .registers 2

    .line 641
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPrivileged()Z
    .registers 2

    .line 636
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isProduct()Z
    .registers 2

    .line 651
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSignedWithPlatformKey()Z
    .registers 2

    .line 661
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isStub()Z
    .registers 2

    .line 570
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .registers 2

    .line 621
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSystemExt()Z
    .registers 2

    .line 631
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVendor()Z
    .registers 2

    .line 646
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 9

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 451
    .local v0, "receiversSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_21

    .line 452
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 453
    .local v4, "receiver":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_1e

    .line 454
    invoke-static {v4, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 451
    .end local v4    # "receiver":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 459
    .end local v1    # "index":I
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 460
    .local v1, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_28
    if-ge v4, v1, :cond_3f

    .line 461
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 462
    .local v5, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedService;->getFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_3c

    .line 463
    invoke-static {v5, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 460
    .end local v5    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 468
    .end local v4    # "index":I
    :cond_3f
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 469
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_46
    if-ge v5, v4, :cond_5d

    .line 470
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 471
    .local v6, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_5a

    .line 472
    invoke-static {v6, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 469
    .end local v6    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 476
    .end local v5    # "index":I
    :cond_5d
    return-object p0
.end method

.method public bridge synthetic markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "index"    # I

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    return-object p0
.end method

.method public bridge synthetic removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 247
    return-object p0
.end method

.method public bridge synthetic removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "libraryName"    # Ljava/lang/String;

    .line 252
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 253
    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 8
    .param p1, "allComponentsDirectBootAware"    # Z

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 357
    .local v0, "activitiesSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 358
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 362
    .end local v1    # "index":I
    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 363
    .local v1, "receiversSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1e
    if-ge v2, v1, :cond_2e

    .line 364
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 368
    .end local v2    # "index":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 369
    .local v2, "providersSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_35
    if-ge v3, v2, :cond_45

    .line 370
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v4, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 374
    .end local v3    # "index":I
    :cond_45
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 375
    .local v3, "servicesSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_4c
    if-ge v4, v3, :cond_5c

    .line 376
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v5, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 375
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 380
    .end local v4    # "index":I
    :cond_5c
    return-object p0
.end method

.method public bridge synthetic setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "baseApkPath"    # Ljava/lang/String;

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public bridge synthetic setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 3
    .param p1, "coreApp"    # Z

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 276
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 277
    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 282
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 283
    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 692
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 693
    return-object p0
.end method

.method public bridge synthetic setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "nativeLibraryRootDir"    # Ljava/lang/String;

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 680
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 681
    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 728
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 729
    return-object p0
.end method

.method public bridge synthetic setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 710
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 711
    return-object p0
.end method

.method public bridge synthetic setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 317
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    if-ge v1, v0, :cond_1f

    .line 318
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 321
    .end local v1    # "index":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 322
    .local v1, "permissionGroupsSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_26
    if-ge v2, v1, :cond_38

    .line 323
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 326
    .end local v2    # "index":I
    :cond_38
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 327
    .local v2, "activitiesSize":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3f
    if-ge v3, v2, :cond_51

    .line 328
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 331
    .end local v3    # "index":I
    :cond_51
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 332
    .local v3, "receiversSize":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_58
    if-ge v4, v3, :cond_6a

    .line 333
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 336
    .end local v4    # "index":I
    :cond_6a
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 337
    .local v4, "providersSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_71
    if-ge v5, v4, :cond_83

    .line 338
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 341
    .end local v5    # "index":I
    :cond_83
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 342
    .local v5, "servicesSize":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_8a
    if-ge v6, v5, :cond_9c

    .line 343
    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 342
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 346
    .end local v6    # "index":I
    :cond_9c
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 347
    .local v6, "instrumentationsSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_a3
    if-ge v7, v6, :cond_b5

    .line 348
    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v9, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 351
    .end local v7    # "index":I
    :cond_b5
    return-object p0
.end method

.method public bridge synthetic setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 270
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 271
    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "primaryCpuAbi"    # Ljava/lang/String;

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 404
    return-object p0
.end method

.method public bridge synthetic setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 704
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 705
    return-object p0
.end method

.method public bridge synthetic setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 722
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 723
    return-object p0
.end method

.method public bridge synthetic setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # [B

    .line 264
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 265
    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "seInfo"    # Ljava/lang/String;

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public bridge synthetic setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "secondaryCpuAbi"    # Ljava/lang/String;

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 410
    return-object p0
.end method

.method public bridge synthetic setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "secondaryNativeLibraryDir"    # Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 416
    return-object p0
.end method

.method public bridge synthetic setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 734
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 735
    return-object p0
.end method

.method public bridge synthetic setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # Landroid/content/pm/SigningDetails;

    .line 258
    invoke-super {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    .line 259
    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 6
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 427
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 428
    if-eqz p1, :cond_17

    .line 429
    array-length v0, p1

    .line 430
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    if-ge v1, v0, :cond_17

    .line 431
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 434
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_17
    return-object p0
.end method

.method public bridge synthetic setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 674
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 675
    return-object p0
.end method

.method public bridge synthetic setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 686
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 687
    return-object p0
.end method

.method public bridge synthetic setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 698
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 699
    return-object p0
.end method

.method public bridge synthetic setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 2
    .param p1, "value"    # I

    .line 740
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 741
    return-object p0
.end method

.method public bridge synthetic setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .registers 3
    .param p1, "value"    # Z

    .line 716
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 717
    return-object p0
.end method

.method public bridge synthetic setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .param p1, "versionCode"    # I

    .line 486
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 487
    return-object p0
.end method

.method public setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .registers 2
    .param p1, "versionCodeMajor"    # I

    .line 492
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 493
    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 498
    invoke-super {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 499
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 500
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 501
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 502
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 503
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 504
    iget-boolean v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 505
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 509
    const-string v1, ":complete"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 510
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 511
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 521
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 522
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 527
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    return-void
.end method
