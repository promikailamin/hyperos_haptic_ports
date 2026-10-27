.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel$SoundModelType;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_GENERIC_SOUND:I = 0x1

.field public static final whitelist TYPE_KEYPHRASE:I = 0x0

.field public static final greylist-max-o TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mData:[B

.field private final blacklist mType:I

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVendorUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;I[BI)V
    .registers 8

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    .line 491
    if-eqz p2, :cond_e

    goto :goto_15

    :cond_e
    new-instance p2, Ljava/util/UUID;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    :goto_15
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    .line 492
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    .line 493
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    .line 494
    if-eqz p4, :cond_1e

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    new-array p4, p1, [B

    :goto_21
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    .line 495
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 540
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 541
    return v0

    .line 543
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 544
    return v1

    .line 546
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v2, :cond_d

    .line 547
    return v1

    .line 549
    :cond_d
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 550
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1a

    .line 551
    return v1

    .line 553
    :cond_1a
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_27

    .line 554
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 555
    return v1

    .line 557
    :cond_27
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 558
    return v1

    .line 560
    :cond_36
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_43

    .line 561
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 562
    return v1

    .line 564
    :cond_43
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 565
    return v1

    .line 567
    :cond_52
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_61

    .line 568
    return v1

    .line 570
    :cond_61
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result p1

    if-eq v2, p1, :cond_6c

    .line 571
    return v1

    .line 573
    :cond_6c
    return v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 523
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mData:[B

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 506
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mType:I

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 500
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVendorUuid()Ljava/util/UUID;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVendorUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 517
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 529
    nop

    .line 530
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVersion()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 531
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 532
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v2

    add-int/2addr v0, v2

    .line 533
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_22

    move v2, v3

    goto :goto_2a

    :cond_22
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2a
    add-int/2addr v0, v2

    .line 534
    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_3b

    :cond_33
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3b
    add-int/2addr v0, v3

    .line 535
    return v0
.end method
