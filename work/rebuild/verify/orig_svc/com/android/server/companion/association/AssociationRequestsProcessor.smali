.class public Lcom/android/server/companion/association/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "AssociationRequestsProcessor.java"


# static fields
.field public static final DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAssociationActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$5cHcmgOU5-M7Ixh1vBBnUKnb5XQ(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$willAddRoleHolder$2(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CgqfujjRwuEbyDGRHVoyUJ7mJww(Lcom/android/server/companion/association/AssociationRequestsProcessor;Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$maybeGrantRoleAndStoreAssociation$1(Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cG0UJrFrYGi05qxlHW0uB_bcn7s(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$createPendingIntent$3(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eimnE-Eo3AocyFnmHvXx98pMczo(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->lambda$createAssociationAndNotifyApplication$0(ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 142
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v2, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
    .registers 6

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    .line 503
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    .line 156
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 158
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    const p2, 0x104023b

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".CompanionAssociationActivity"

    .line 159
    invoke-static {p1, p2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 6

    .line 249
    const-string v0, "Package name MUST NOT be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    .line 255
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string v0, "cancel_confirmation"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 260
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V
    .registers 18

    move-object v0, p9

    .line 316
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v1}, Lcom/android/server/companion/association/AssociationStore;->getNextId()I

    move-result v1

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 321
    const-string v4, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-virtual {v4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 326
    new-instance v5, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v5, v1, p1, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;)V

    .line 328
    invoke-virtual {v5, p3}, Landroid/companion/AssociationInfo$Builder;->setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p4}, Landroid/companion/AssociationInfo$Builder;->setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1, p5}, Landroid/companion/AssociationInfo$Builder;->setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 331
    invoke-virtual {p1, p6}, Landroid/companion/AssociationInfo$Builder;->setAssociatedDevice(Landroid/companion/AssociatedDevice;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 332
    invoke-virtual {p1, p7}, Landroid/companion/AssociationInfo$Builder;->setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 333
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setRevoked(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1, v2, v3}, Landroid/companion/AssociationInfo$Builder;->setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    const-wide p3, 0x7fffffffffffffffL

    .line 337
    invoke-virtual {p1, p3, p4}, Landroid/companion/AssociationInfo$Builder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 338
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 339
    invoke-virtual {p1, v4}, Landroid/companion/AssociationInfo$Builder;->setTransportFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    move-object/from16 p2, p10

    .line 340
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 341
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setPackagesToNotify(Ljava/util/List;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    new-instance p2, Landroid/os/PersistableBundle;

    invoke-direct {p2}, Landroid/os/PersistableBundle;-><init>()V

    .line 343
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setMetadata(Landroid/os/PersistableBundle;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p11, :cond_aa

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Created association for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and userId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " without granting role"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 347
    const-string p3, "CDM_AssociationRequestsProcessor"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 351
    invoke-virtual {p0, p1, p8, p9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    .line 354
    :cond_aa
    invoke-virtual {p0, p1, p8, p9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 299
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v2, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 4

    .line 490
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method

.method public disableSystemDataSync(II)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 408
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 409
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result p1

    not-int p2, p2

    and-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 410
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public enableSystemDataSync(II)V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 397
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 398
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result p1

    or-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 399
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public final synthetic lambda$createAssociationAndNotifyApplication$0(ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .registers 19

    .line 300
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 301
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getAssociatedDevice()Landroid/companion/AssociatedDevice;

    move-result-object v6

    .line 302
    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 300
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method

.method public final synthetic lambda$createPendingIntent$3(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 9

    .line 491
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 494
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v1, 0x1

    .line 495
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x54000000

    move v1, p1

    move-object v2, p2

    .line 491
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$maybeGrantRoleAndStoreAssociation$1(Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Ljava/lang/Boolean;)V
    .registers 8

    .line 376
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const-string v0, "CDM_AssociationRequestsProcessor"

    if-eqz p5, :cond_3d

    .line 377
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role to userId="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 381
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    .line 383
    :cond_3d
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to add u"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to the list of "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " holders."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 386
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final synthetic lambda$willAddRoleHolder$2(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 476
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/utils/RolesUtils;->isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final mayAssociateWithoutPrompt(Ljava/lang/String;I)Z
    .registers 11

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 539
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 540
    invoke-virtual {v2, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 543
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 545
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-gez v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_10

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many associations: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already associated "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " devices within the last "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_AssociationRequestsProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 556
    :cond_5b
    iget-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2, p0, p1}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .registers 11

    .line 364
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 367
    invoke-static {v2}, Lcom/android/server/companion/utils/RolesUtils;->isRolelessProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_20

    .line 375
    :cond_11
    iget-object v6, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Ljava/lang/String;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v6, v3, v0}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    return-void

    .line 368
    :goto_20
    iget-object p0, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, v3}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 369
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public final processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 12

    .line 268
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getUserId()I

    move-result v3

    .line 270
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 275
    :try_start_10
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_15} :catch_1e

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    :catch_1e
    move-exception v0

    move-object v5, p2

    move-object p0, v0

    .line 281
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {v5, p1, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method

.method public processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V
    .registers 15

    .line 172
    const-string v0, "Request MUST NOT be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 174
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "AssociationRequest.displayName MUST NOT be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    :cond_14
    const-string v0, "Package name MUST NOT be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    const-string v0, "Callback MUST NOT be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processNewAssociationRequest() request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", package=u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_AssociationRequestsProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V

    .line 186
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, p2}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isForceConfirmation()Z

    move-result v1

    if-nez v1, :cond_8d

    sget-object v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->DEVICE_PROFILES_WITH_REQUIRED_CONFIRMATION:Ljava/util/Set;

    .line 191
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8d

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .line 194
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    return-void

    :cond_8d
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    .line 201
    iget-object p0, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.type.watch"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_aa

    .line 203
    const-string p0, "3p apps are not allowed to create associations on watch."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 206
    :try_start_a6
    invoke-interface {v8, p1, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_f5

    return-void

    .line 219
    :cond_aa
    invoke-virtual {v4, v5}, Landroid/companion/AssociationRequest;->setPackageName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v4, v6}, Landroid/companion/AssociationRequest;->setUserId(I)V

    .line 221
    invoke-virtual {v3, v5, v6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mayAssociateWithoutPrompt(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {v4, p0}, Landroid/companion/AssociationRequest;->setSkipPrompt(Z)V

    .line 222
    invoke-virtual {v4}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/companion/utils/RolesUtils;->getPermsForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/companion/AssociationRequest;->setRequestedPerms(Ljava/util/List;)V

    .line 225
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string p1, "association_request"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 227
    const-string p1, "application_callback"

    invoke-interface {v8}, Landroid/companion/IAssociationRequestCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 228
    iget-object p1, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lcom/android/server/companion/utils/Utils;->prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string/jumbo p2, "result_receiver"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 231
    iget-object p2, v3, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 235
    invoke-virtual {v3, v0, p1}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 239
    :try_start_f2
    invoke-interface {v8, p0}, Landroid/companion/IAssociationRequestCallback;->onAssociationPending(Landroid/app/PendingIntent;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f5} :catch_f5

    :catch_f5
    return-void
.end method

.method public final sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .registers 4

    if-eqz p1, :cond_18

    if-eqz p2, :cond_7

    .line 440
    :try_start_4
    invoke-interface {p2, p1}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    if-eqz p3, :cond_2a

    .line 448
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 449
    const-string p2, "association"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2a

    :cond_18
    const/4 p0, 0x3

    if-eqz p2, :cond_20

    .line 456
    :try_start_1b
    const-string p1, "Association doesn\'t exist."

    invoke-interface {p2, p0, p1}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    if-eqz p3, :cond_2a

    .line 464
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 465
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;
    .registers 6

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting DeviceId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] to id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_AssociationRequestsProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p2, :cond_3d

    .line 424
    new-instance v0, Landroid/companion/DeviceId;

    .line 425
    invoke-virtual {p2}, Landroid/companion/DeviceId;->getCustomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/companion/DeviceId;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p2

    invoke-static {}, Lcom/android/server/companion/utils/Utils;->generateRandom128BitKey()[B

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Landroid/companion/DeviceId;-><init>(Ljava/lang/String;Landroid/net/MacAddress;[B)V

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    .line 427
    :goto_3e
    new-instance p2, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p2, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p2, v0}, Landroid/companion/AssociationInfo$Builder;->setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 428
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    return-object v0
.end method

.method public final willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z
    .registers 5

    .line 472
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 473
    invoke-static {p1}, Lcom/android/server/companion/utils/RolesUtils;->isRolelessProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    .line 475
    :cond_d
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method
