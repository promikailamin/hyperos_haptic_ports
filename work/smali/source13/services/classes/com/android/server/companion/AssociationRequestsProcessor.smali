.class Lcom/android/server/companion/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "AssociationRequestsProcessor.java"


# static fields
.field private static final ASSOCIATE_WITHOUT_PROMPT_MAX_PER_TIME_WINDOW:I = 0x5

.field private static final ASSOCIATE_WITHOUT_PROMPT_WINDOW_MS:J = 0x36ee80L

.field private static final ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

.field private static final EXTRA_APPLICATION_CALLBACK:Ljava/lang/String; = "application_callback"

.field private static final EXTRA_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final EXTRA_ASSOCIATION_REQUEST:Ljava/lang/String; = "association_request"

.field private static final EXTRA_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final RESULT_CODE_ASSOCIATION_APPROVED:I = 0x0

.field private static final RESULT_CODE_ASSOCIATION_CREATED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_AssociationRequestsProcessor"


# instance fields
.field private final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field private final mContext:Landroid/content/Context;

.field private final mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

.field private final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field private final mService:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method static bridge synthetic -$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/companion/AssociationRequestsProcessor;->processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 112
    nop

    .line 113
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".CompanionDeviceActivity"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/AssociationRequestsProcessor;->ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p2, "associationStore"    # Lcom/android/server/companion/AssociationStore;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/android/server/companion/AssociationRequestsProcessor$1;

    .line 290
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    .line 138
    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 139
    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 140
    iget-object v0, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 141
    iput-object p2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 142
    return-void
.end method

.method private createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;
    .registers 15
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "macAddress"    # Landroid/net/MacAddress;
    .param p5, "callback"    # Landroid/companion/IAssociationRequestCallback;

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 265
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v8

    .line 264
    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_24

    .line 267
    .local v2, "association":Landroid/companion/AssociationInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    nop

    .line 271
    :try_start_1d
    invoke-interface {p5, v2}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 272
    :goto_20
    goto :goto_23

    :catch_21
    move-exception v3

    goto :goto_20

    .line 274
    :goto_23
    return-object v2

    .line 267
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    throw v2
.end method

.method private mayAssociateWithoutPrompt(Ljava/lang/String;I)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 340
    const v3, 0x1070031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "allowlistedPackages":[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 347
    return v4

    .line 351
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 352
    .local v5, "now":J
    iget-object v3, v0, Lcom/android/server/companion/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 353
    move/from16 v7, p2

    invoke-interface {v3, v7, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 355
    .local v3, "associationForPackage":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    const/4 v8, 0x0

    .line 356
    .local v8, "recent":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "CompanionDevice_AssociationRequestsProcessor"

    if-eqz v10, :cond_83

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/companion/AssociationInfo;

    .line 357
    .local v10, "association":Landroid/companion/AssociationInfo;
    nop

    .line 358
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v12

    sub-long v12, v5, v12

    const-wide/32 v14, 0x36ee80

    cmp-long v12, v12, v14

    if-gez v12, :cond_48

    const/4 v12, 0x1

    goto :goto_49

    :cond_48
    move v12, v4

    .line 359
    .local v12, "isRecent":Z
    :goto_49
    if-eqz v12, :cond_82

    .line 360
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x5

    if-lt v8, v13, :cond_82

    .line 361
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Too many associations: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " already associated "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " devices within the last "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, "ms"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return v4

    .line 367
    .end local v10    # "association":Landroid/companion/AssociationInfo;
    .end local v12    # "isRecent":Z
    :cond_82
    goto :goto_2a

    .line 369
    :cond_83
    iget-object v9, v0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070030

    .line 370
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, "allowlistedPackagesSignatureDigests":[Ljava/lang/String;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 372
    .local v10, "allowlistedSignatureDigestsForRequestingPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_96
    array-length v13, v2

    if-ge v12, v13, :cond_b1

    .line 373
    aget-object v13, v2, v12

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 374
    aget-object v13, v9, v12

    const-string v14, ":"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "digest":Ljava/lang/String;
    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v13    # "digest":Ljava/lang/String;
    :cond_ae
    add-int/lit8 v12, v12, 0x1

    goto :goto_96

    .line 379
    .end local v12    # "i":I
    :cond_b1
    iget-object v12, v0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 380
    invoke-interface {v12}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v12

    .line 381
    .local v12, "requestingPackageSignatures":[Landroid/content/pm/Signature;
    nop

    .line 382
    invoke-static {v12}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, "requestingPackageSignatureDigests":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 385
    .local v14, "requestingPackageSignatureAllowlisted":Z
    array-length v15, v13

    :goto_c6
    if-ge v4, v15, :cond_d7

    aget-object v0, v13, v4

    .line 386
    .local v0, "signatureDigest":Ljava/lang/String;
    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d2

    .line 387
    const/4 v14, 0x1

    .line 388
    goto :goto_d7

    .line 385
    .end local v0    # "signatureDigest":Ljava/lang/String;
    :cond_d2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_c6

    .line 392
    :cond_d7
    :goto_d7
    if-nez v14, :cond_ef

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate mismatch for allowlisted package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_ef
    return v14
.end method

.method private static prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    .line 412
    .local p0, "resultReceiver":Landroid/os/ResultReceiver;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 416
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 417
    .local v1, "ipcFriendly":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    return-object v1
.end method

.method private processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 14
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/IAssociationRequestCallback;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "macAddress"    # Landroid/net/MacAddress;

    .line 223
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getUserId()I

    move-result v7

    .line 225
    .local v7, "userId":I
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    .line 237
    .local v8, "packageUid":I
    :try_start_10
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v8}, Lcom/android/server/companion/PermissionsUtils;->enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_15} :catch_2f

    .line 245
    nop

    .line 248
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v3, v7

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 253
    .local v0, "association":Landroid/companion/AssociationInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "association"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 256
    return-void

    .line 238
    .end local v0    # "association":Landroid/companion/AssociationInfo;
    .end local v1    # "data":Landroid/os/Bundle;
    :catch_2f
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/companion/IAssociationRequestCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_39

    .line 243
    :catch_38
    move-exception v1

    :goto_39
    nop

    .line 244
    return-void
.end method

.method private willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 279
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "deviceProfile":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 282
    :cond_8
    new-instance v1, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 286
    .local v1, "isRoleHolder":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method


# virtual methods
.method synthetic lambda$willAddRoleHolder$0$com-android-server-companion-AssociationRequestsProcessor(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/companion/RolesUtils;->isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V
    .registers 16
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/companion/IAssociationRequestCallback;

    .line 151
    const-string v0, "Request MUST NOT be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 153
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "AssociationRequest.displayName MUST NOT be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    :cond_14
    const-string v0, "Package name MUST NOT be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    const-string v0, "Callback MUST NOT be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 167
    .local v0, "packageUid":I
    iget-object v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/PermissionsUtils;->enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V

    .line 168
    iget-object v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, p2}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isForceConfirmation()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 175
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/companion/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;

    .line 177
    return-void

    .line 183
    :cond_4c
    invoke-virtual {p1, p2}, Landroid/companion/AssociationRequest;->setPackageName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1, p3}, Landroid/companion/AssociationRequest;->setUserId(I)V

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->mayAssociateWithoutPrompt(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/companion/AssociationRequest;->setSkipPrompt(Z)V

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "association_request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-interface {p4}, Landroid/companion/IAssociationRequestCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "application_callback"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    invoke-static {v2}, Lcom/android/server/companion/AssociationRequestsProcessor;->prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    const-string/jumbo v3, "result_receiver"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/companion/AssociationRequestsProcessor;->ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 206
    .local v9, "token":J
    :try_start_89
    iget-object v3, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v4, v0

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_a1

    .line 211
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    nop

    .line 216
    :try_start_9a
    invoke-interface {p4, v3}, Landroid/companion/IAssociationRequestCallback;->onAssociationPending(Landroid/app/PendingIntent;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 217
    :goto_9d
    goto :goto_a0

    :catch_9e
    move-exception v4

    goto :goto_9d

    .line 218
    :goto_a0
    return-void

    .line 211
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_a1
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    throw v3
.end method
