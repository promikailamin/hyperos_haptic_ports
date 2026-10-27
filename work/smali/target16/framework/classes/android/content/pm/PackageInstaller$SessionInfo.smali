.class public Landroid/content/pm/PackageInstaller$SessionInfo;
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
    name = "SessionInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_ID:I = -0x1

.field private static final blacklist NO_SESSIONS:[I

.field public static final whitelist SESSION_ACTIVATION_FAILED:I = 0x2

.field public static final whitelist SESSION_CONFLICT:I = 0x4

.field public static final whitelist SESSION_NO_ERROR:I = 0x0

.field public static final whitelist SESSION_UNKNOWN_ERROR:I = 0x3

.field public static final whitelist SESSION_VERIFICATION_FAILED:I = 0x1

.field public static final whitelist STAGED_SESSION_ACTIVATION_FAILED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_CONFLICT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_NO_ERROR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_UNKNOWN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_VERIFICATION_FAILED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public greylist-max-p active:Z

.field public greylist-max-p appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-p appLabel:Ljava/lang/CharSequence;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist childSessionIds:[I

.field public blacklist createdMillis:J

.field public blacklist forceQueryable:Z

.field public greylist-max-o grantedRuntimePermissions:[Ljava/lang/String;

.field public greylist-max-o installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public blacklist installerAttributionTag:Ljava/lang/String;

.field public greylist-max-p installerPackageName:Ljava/lang/String;

.field public blacklist installerUid:I

.field public blacklist isAutoInstallingDependenciesEnabled:Z

.field public blacklist isCommitted:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isPreapprovalRequested:Z

.field public blacklist isSessionApplied:Z

.field public blacklist isSessionFailed:Z

.field public blacklist isSessionReady:Z

.field public blacklist isStaged:Z

.field private blacklist mSessionErrorCode:I

.field private blacklist mSessionErrorMessage:Ljava/lang/String;

.field public greylist-max-p mode:I

.field public greylist-max-o originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public blacklist parentSessionId:I

.field public blacklist pendingUserActionReason:I

.field public greylist-max-p progress:F

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public greylist-max-r resolvedBaseCodePath:Ljava/lang/String;

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public greylist-max-r sealed:Z

.field public greylist-max-p sessionId:I

.field public greylist-max-p sizeBytes:J

.field public blacklist updatedMillis:J

.field public blacklist userId:I

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
.method static bridge synthetic blacklist -$$Nest$smuserActionToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->userActionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4171
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    .line 5074
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 4363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4299
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 4309
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 4311
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 4347
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 4364
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 4367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4299
    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 4309
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 4311
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 4347
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 4368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 4369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 4370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 4371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 4372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 4373
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 4374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_3d
    move v1, v0

    :goto_3e
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 4375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_47

    move v0, v2

    :cond_47
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 4377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 4378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 4379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 4380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 4381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 4382
    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 4383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 4385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    .line 4386
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 4387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    .line 4388
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 4389
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 4390
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 4391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 4393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 4394
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 4395
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 4396
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    .line 4397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 4398
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 4399
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v0, :cond_d6

    .line 4400
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 4402
    :cond_d6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 4403
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 4404
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 4405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    .line 4406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    .line 4407
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 4408
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 4409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 4410
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    .line 4411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    .line 4412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 4413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 4414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 4415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 4416
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    .line 4417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    .line 4418
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    .line 4419
    return-void
.end method

.method private blacklist checkSessionIsStaged()V
    .registers 3

    .line 4855
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_5

    .line 4858
    return-void

    .line 4856
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not marked as staged."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist userActionToString(I)Ljava/lang/String;
    .registers 1

    .line 4233
    packed-switch p0, :pswitch_data_c

    .line 4239
    const-string p0, "UNSPECIFIED"

    return-object p0

    .line 4237
    :pswitch_6
    const-string p0, "NOT_REQUIRED"

    return-object p0

    .line 4235
    :pswitch_9
    const-string p0, "REQUIRED"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist createDetailsIntent()Landroid/content/Intent;
    .registers 4

    .line 4550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4551
    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4552
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4553
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4554
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5019
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllocateAggressive()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4755
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist getAllowDowngrade()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4674
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getRequestDowngrade()Z

    move-result v0

    return v0
.end method

.method public whitelist getAppIcon()Landroid/graphics/Bitmap;
    .registers 3

    .line 4518
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 4522
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 4523
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 4524
    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1b

    .line 4527
    goto :goto_21

    .line 4525
    :catch_1b
    move-exception v0

    .line 4526
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4529
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getAppLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 4537
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 4510
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutoRevokePermissionsMode()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4662
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    return v0
.end method

.method public whitelist getChildSessionIds()[I
    .registers 2

    .line 4851
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    return-object v0
.end method

.method public whitelist getCreatedMillis()J
    .registers 3

    .line 4924
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    return-wide v0
.end method

.method public greylist-max-o getDetailsIntent()Landroid/content/Intent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4762
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->createDetailsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDontKillApp()Z
    .registers 2

    .line 4691
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getEnableRollback()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4745
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

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

.method public whitelist getGrantedRuntimePermissions()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4627
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallAsFullApp(Z)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4725
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist getInstallAsInstantApp(Z)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4708
    iget p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist getInstallAsVirtualPreload()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4735
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist getInstallLocation()I
    .registers 2

    .line 4571
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    return v0
.end method

.method public whitelist getInstallReason()I
    .registers 2

    .line 4496
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    return v0
.end method

.method public whitelist getInstallerAttributionTag()Ljava/lang/String;
    .registers 2

    .line 4447
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 4439
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerUid()I
    .registers 2

    .line 4956
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    return v0
.end method

.method public whitelist getMode()I
    .registers 2

    .line 4564
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    return v0
.end method

.method public whitelist getOriginatingUid()I
    .registers 2

    .line 4595
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    return v0
.end method

.method public whitelist getOriginatingUri()Landroid/net/Uri;
    .registers 2

    .line 4588
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPackageSource()I
    .registers 2

    .line 4770
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    return v0
.end method

.method public whitelist getParentSessionId()I
    .registers 2

    .line 4835
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    return v0
.end method

.method public whitelist getPendingUserActionReason()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4990
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    return v0
.end method

.method public whitelist getProgress()F
    .registers 2

    .line 4460
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    return v0
.end method

.method public whitelist getReferrerUri()Landroid/net/Uri;
    .registers 2

    .line 4603
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRequestDowngrade()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4684
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getRequireUserAction()I
    .registers 2

    .line 4949
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    return v0
.end method

.method public whitelist getResolvedBaseApkPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4617
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRollbackDataPolicy()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4796
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    return v0
.end method

.method public whitelist getSessionId()I
    .registers 2

    .line 4425
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    return v0
.end method

.method public whitelist getSize()J
    .registers 3

    .line 4580
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    return-wide v0
.end method

.method public whitelist getStagedSessionErrorCode()I
    .registers 2

    .line 4893
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4894
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    return v0
.end method

.method public whitelist getStagedSessionErrorMessage()Ljava/lang/String;
    .registers 2

    .line 4902
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4903
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUpdatedMillis()J
    .registers 3

    .line 4933
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    return-wide v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 3

    .line 4432
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4639
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 4640
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    return-object v0

    .line 4642
    :cond_a
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v0, :cond_16

    .line 4643
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 4645
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasParentSessionId()Z
    .registers 3

    .line 4842
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 4477
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    return v0
.end method

.method public whitelist isApplicationEnabledSettingPersistent()Z
    .registers 2

    .line 4964
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    return v0
.end method

.method public whitelist isAutoInstallDependenciesEnabled()Z
    .registers 2

    .line 5014
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    return v0
.end method

.method public whitelist isCommitted()Z
    .registers 2

    .line 4917
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .registers 2

    .line 4804
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    return v0
.end method

.method public whitelist isMultiPackage()Z
    .registers 2

    .line 4778
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    return v0
.end method

.method public greylist-max-o isOpen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4502
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method public whitelist isPreApprovalRequested()Z
    .registers 2

    .line 4971
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    return v0
.end method

.method public whitelist isRequestUpdateOwnership()Z
    .registers 3

    .line 4981
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isSealed()Z
    .registers 2

    .line 4487
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    return v0
.end method

.method public whitelist isStaged()Z
    .registers 2

    .line 4785
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    return v0
.end method

.method public whitelist isStagedSessionActive()Z
    .registers 2

    .line 4826
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v0, :cond_18

    .line 4827
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 4826
    :goto_19
    return v0
.end method

.method public whitelist isStagedSessionApplied()Z
    .registers 2

    .line 4866
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4867
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    return v0
.end method

.method public whitelist isStagedSessionFailed()Z
    .registers 2

    .line 4884
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4885
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    return v0
.end method

.method public whitelist isStagedSessionReady()Z
    .registers 2

    .line 4875
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    .line 4876
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    return v0
.end method

.method public whitelist isUnarchival()Z
    .registers 3

    .line 5000
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist setSessionErrorCode(ILjava/lang/String;)V
    .registers 3

    .line 4908
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    .line 4909
    iput-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    .line 4910
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 5024
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5025
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5026
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5027
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5028
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5029
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5030
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5031
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5033
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5034
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5035
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5036
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5037
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5038
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5039
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5041
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5043
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5044
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5045
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5046
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5047
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5048
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5049
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5050
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5051
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5052
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5053
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5054
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5055
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5056
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5057
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5058
    iget-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5059
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5060
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5061
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5062
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5063
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5064
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5065
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5066
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5067
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5068
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5069
    iget p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5070
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isAutoInstallingDependenciesEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5071
    return-void
.end method
