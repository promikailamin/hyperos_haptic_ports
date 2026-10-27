.class public final Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mLimiterInUse:Z

.field private greylist-max-o mMbcBandCount:I

.field private greylist-max-o mMbcInUse:Z

.field private greylist-max-o mPostEqBandCount:I

.field private greylist-max-o mPostEqInUse:Z

.field private greylist-max-o mPreEqBandCount:I

.field private greylist-max-o mPreEqInUse:Z

.field private greylist-max-o mPreferredFrameDuration:F

.field private greylist-max-o mVariant:I


# direct methods
.method public constructor whitelist <init>(IIZIZIZIZ)V
    .registers 19

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    .line 1643
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    .line 1644
    iput p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    .line 1645
    iput-boolean p3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    .line 1646
    iput p4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    .line 1647
    iput-boolean p5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    .line 1648
    iput p6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    .line 1649
    move/from16 p1, p7

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    .line 1650
    move/from16 p1, p8

    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    .line 1651
    move/from16 p1, p9

    iput-boolean p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    .line 1652
    iget p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    new-array p1, p1, [Landroid/media/audiofx/DynamicsProcessing$Channel;

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    .line 1653
    const/4 p1, 0x0

    :goto_26
    iget p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    if-ge p1, p2, :cond_45

    .line 1654
    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Channel;

    iget-boolean v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    iget v7, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v8, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(FZIZIZIZ)V

    aput-object v0, p2, p1

    .line 1653
    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    .line 1660
    :cond_45
    return-void
.end method

.method private greylist-max-o checkChannel(I)V
    .registers 3

    .line 1663
    if-ltz p1, :cond_8

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 1666
    return-void

    .line 1664
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ChannelIndex out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist build()Landroid/media/audiofx/DynamicsProcessing$Config;
    .registers 13

    .line 1762
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Config;

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mVariant:I

    iget v2, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannelCount:I

    iget-boolean v4, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqInUse:Z

    iget v5, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    iget-boolean v6, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcInUse:Z

    iget v7, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    iget-boolean v8, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqInUse:Z

    iget v9, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    iget-boolean v10, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mLimiterInUse:Z

    iget-object v11, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct/range {v0 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Config;-><init>(IFIZIZIZIZ[Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    return-object v0
.end method

.method public whitelist setAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1707
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1708
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1710
    :cond_c
    return-object p0
.end method

.method public whitelist setChannelTo(ILandroid/media/audiofx/DynamicsProcessing$Channel;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 6

    .line 1689
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1691
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    const-string v2, " to "

    if-ne v0, v1, :cond_89

    .line 1695
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_5e

    .line 1699
    iget v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 1703
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Channel;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;-><init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V

    aput-object v1, v0, p1

    .line 1704
    return-object p0

    .line 1700
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostEqBandCount changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPostEqBandCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1701
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1696
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreEqBandCount changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreEqBandCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1697
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1692
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MbcBandCount changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mMbcBandCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1693
    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setInputGainAllChannelsTo(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1682
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1683
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1685
    :cond_10
    return-object p0
.end method

.method public whitelist setInputGainByChannelIndex(IF)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1677
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1678
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setInputGain(F)V

    .line 1679
    return-object p0
.end method

.method public whitelist setLimiterAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1755
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1756
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1758
    :cond_c
    return-object p0
.end method

.method public whitelist setLimiterByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Limiter;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1750
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1751
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    .line 1752
    return-object p0
.end method

.method public whitelist setMbcAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1731
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1732
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1731
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1734
    :cond_c
    return-object p0
.end method

.method public whitelist setMbcByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Mbc;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1726
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1727
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    .line 1728
    return-object p0
.end method

.method public whitelist setPostEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1743
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1744
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1746
    :cond_c
    return-object p0
.end method

.method public whitelist setPostEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1738
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1739
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1740
    return-object p0
.end method

.method public whitelist setPreEqAllChannelsTo(Landroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1719
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1720
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;

    .line 1719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1722
    :cond_c
    return-object p0
.end method

.method public whitelist setPreEqByChannelIndex(ILandroid/media/audiofx/DynamicsProcessing$Eq;)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 4

    .line 1714
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->checkChannel(I)V

    .line 1715
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mChannel:[Landroid/media/audiofx/DynamicsProcessing$Channel;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Channel;->setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    .line 1716
    return-object p0
.end method

.method public whitelist setPreferredFrameDuration(F)Landroid/media/audiofx/DynamicsProcessing$Config$Builder;
    .registers 3

    .line 1669
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 1672
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Config$Builder;->mPreferredFrameDuration:F

    .line 1673
    return-object p0

    .line 1670
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected positive frameDuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
