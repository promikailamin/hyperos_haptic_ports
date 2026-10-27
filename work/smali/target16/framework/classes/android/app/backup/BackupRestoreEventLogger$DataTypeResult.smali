.class public final Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupRestoreEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataTypeResult"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataType:Ljava/lang/String;

.field private final blacklist mErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailCount:I

.field private blacklist mMetadataHash:[B

.field private blacklist mSuccessCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataType(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I
    .registers 1

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)[B
    .registers 1

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I
    .registers 1

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V
    .registers 2

    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V
    .registers 2

    iput-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V
    .registers 2

    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 422
    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;

    invoke-direct {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;-><init>()V

    sput-object v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    .line 357
    iput-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataType()Ljava/lang/String;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getErrors()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getFailCount()I
    .registers 2

    .line 378
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    return v0
.end method

.method public whitelist getMetadataHash()[B
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    return-object v0
.end method

.method public whitelist getSuccessCount()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 406
    iget-object p2, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget p2, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mSuccessCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget p2, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mFailCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 413
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mErrors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    goto :goto_1e

    .line 416
    :cond_3e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 418
    iget-object p2, p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->mMetadataHash:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 419
    return-void
.end method
