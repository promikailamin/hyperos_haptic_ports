.class public Lcom/android/server/companion/BackupRestoreProcessor;
.super Ljava/lang/Object;
.source "BackupRestoreProcessor.java"


# instance fields
.field public final mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;


# direct methods
.method public static synthetic $r8$lambda$DyV-WVlS-Kk4PIRN0FrbMj0nlWE(Landroid/companion/AssociationInfo;Landroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .registers 2

    .line 203
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JIdOXdUl_K6TEHMMcvRCDJvcUDo(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/BackupRestoreProcessor;->lambda$restorePendingAssociations$2(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaaBuRoJlP5hxFXWvNSfy9Fph8Y(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)Z
    .registers 6

    .line 276
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 279
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 280
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/companion/DeviceId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    move p0, v3

    goto :goto_25

    :cond_24
    move p0, v2

    :goto_25
    if-nez v0, :cond_2b

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    return v2

    :cond_2b
    :goto_2b
    return v3
.end method

.method public static synthetic $r8$lambda$ZI_ky7rF-P1GL62m8KHTAW0h5-o(Landroid/companion/datatransfer/SystemDataTransferRequest;Landroid/companion/datatransfer/SystemDataTransferRequest;)Z
    .registers 2

    .line 301
    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getDataType()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ge7zP4zZ0ZlLddnXsQ-WJKdBIhk(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 224
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/datasync/LocalMetadataStore;)V
    .registers 8

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 77
    iput-object p3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 78
    iput-object p4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 79
    iput-object p5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 80
    iput-object p6, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 81
    iput-object p7, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload([BI)V
    .registers 11

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRestoredPayload() userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payload size=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    array-length v0, p1

    if-nez v0, :cond_2d

    .line 129
    const-string p0, "CDM backup payload was empty."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_2d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 138
    const-string p0, "Unsupported backup payload version"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v0, v0, [B

    .line 150
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v2, v2, [B

    .line 154
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4f} :catch_10e

    .line 166
    :try_start_4f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-array v3, v3, [B

    .line 167
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 170
    iget-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {p1, p2}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getMetadataForUser(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 171
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    .line 172
    invoke-virtual {v4, v3}, Lcom/android/server/companion/datasync/LocalMetadataStore;->readMetadataFromPayload([B)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 173
    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 174
    iget-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {p1, p2, v3}, Lcom/android/server/companion/datasync/LocalMetadataStore;->setMetadataForUser(ILandroid/os/PersistableBundle;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6c} :catch_6d

    goto :goto_73

    :catch_6d
    move-exception p1

    .line 176
    const-string v3, "Metadata payload was malformatted or missing."

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_73
    invoke-static {v0, p2}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromPayload([BI)Lcom/android/server/companion/association/Associations;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 184
    invoke-virtual {v0, v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromPayload([BI)Ljava/util/List;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 187
    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/android/server/companion/association/Associations;->getAssociations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_91
    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 197
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v3

    if-eqz v3, :cond_a4

    goto :goto_91

    .line 202
    :cond_a4
    new-instance v3, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v3

    .line 207
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/companion/BackupRestoreProcessor;->handleCollision(ILandroid/companion/AssociationInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b4

    goto :goto_91

    .line 212
    :cond_b4
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5}, Lcom/android/server/companion/association/AssociationStore;->getNextId()I

    move-result v5

    .line 214
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v6, v5, p2, v4, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V

    .line 215
    invoke-virtual {v6}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v2

    .line 223
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 226
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v6}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->maybeGrantRoleAndStoreAssociation(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    goto :goto_f0

    .line 229
    :cond_dd
    new-instance v4, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v4, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v2

    .line 231
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v2}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 235
    :goto_f0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 236
    invoke-virtual {v3, v5}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v3

    .line 237
    invoke-virtual {v3, p2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 238
    iget-object v4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_f4

    :cond_10d
    return-void

    :catch_10e
    move-exception p0

    .line 156
    const-string p1, "CDM backup payload was mal-formatted."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getBackupPayload(I)[B
    .registers 8

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackupPayload() userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getBackupPayload(I)[B

    move-result-object v0

    .line 95
    array-length v1, v0

    .line 98
    iget-object v2, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getBackupPayload(I)[B

    move-result-object v2

    .line 99
    array-length v3, v2

    .line 102
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mLocalMetadataStore:Lcom/android/server/companion/datasync/LocalMetadataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datasync/LocalMetadataStore;->getBackupPayload(I)[B

    move-result-object p0

    .line 103
    array-length p1, p0

    add-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v3

    add-int/2addr v4, p1

    .line 110
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public final handleCollision(ILandroid/companion/AssociationInfo;Ljava/util/List;)Z
    .registers 9

    .line 272
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 273
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda3;-><init>(Landroid/companion/AssociationInfo;)V

    .line 283
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    if-nez p2, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 290
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflict detected with association id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while restoring CDM backup. Keeping local association."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_BackupRestoreProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 294
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 300
    new-instance v3, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda4;-><init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V

    invoke-static {v0, v3}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_4a

    .line 308
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to an existing association id=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    move-result-object v2

    .line 313
    invoke-virtual {v2, p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 314
    iget-object v3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    goto :goto_4a

    :cond_a0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$restorePendingAssociations$2(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;Ljava/lang/Boolean;)V
    .registers 5

    .line 255
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v0, "CDM_BackupRestoreProcessor"

    if-eqz p3, :cond_27

    .line 256
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Association=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is restored."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 259
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to restore association=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restorePendingAssociations(ILjava/lang/String;)V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getPendingAssociations(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found pending associations for package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]. Restoring..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CDM_BackupRestoreProcessor"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    .line 251
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/BackupRestoreProcessor;Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    goto :goto_2b

    :cond_50
    return-void
.end method
