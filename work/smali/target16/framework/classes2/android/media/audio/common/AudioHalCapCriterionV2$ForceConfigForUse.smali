.class public Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForceConfigForUse"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

.field public blacklist logic:B

.field public blacklist values:[Landroid/media/audio/common/AudioPolicyForceUse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 277
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 328
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 329
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 330
    nop

    .line 331
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 332
    invoke-direct {p0, v3}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 334
    :cond_19
    return v2

    .line 336
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 337
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 339
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 322
    nop

    .line 323
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 324
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 325
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 307
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 317
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 307
    return-void

    .line 315
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioPolicyForceUse;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 317
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 309
    return-void

    .line 315
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_44
    :try_start_44
    sget-object v2, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioPolicyForceUse;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 317
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    return-void

    .line 315
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_63
    :try_start_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_78

    .line 314
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 317
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 318
    nop

    .line 319
    return-void

    .line 315
    :cond_72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 306
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 314
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 315
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_8b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 318
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->values:[Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 294
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->defaultValue:Landroid/media/audio/common/AudioPolicyForceUse;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    iget-byte p2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$ForceConfigForUse;->logic:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 298
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 300
    return-void
.end method
