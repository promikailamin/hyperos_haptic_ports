.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDurationMs:D

.field private greylist-max-o mId:I

.field private greylist-max-o mInterpolatorType:I

.field private greylist-max-o mOptionFlags:I

.field private greylist-max-o mTimes:[F

.field private greylist-max-o mType:I

.field private greylist-max-o mVolumes:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 869
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 870
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 871
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 872
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 874
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 880
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/VolumeShaper$Configuration;)V
    .registers 4

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 869
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 870
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 871
    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 872
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 874
    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 889
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    .line 890
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 891
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 892
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 893
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 894
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 895
    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object p1

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 896
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/VolumeShaper$Configuration;
    .registers 15

    .line 1145
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1146
    :goto_9
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1147
    new-instance v4, Landroid/media/VolumeShaper$Configuration;

    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iget v10, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v11, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v12, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper-IA;)V

    return-object v4
.end method

.method public whitelist invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 6

    .line 1052
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1053
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1054
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v0, v0, v2

    .line 1055
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 1056
    nop

    :goto_1a
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    if-ge v1, v4, :cond_3b

    .line 1057
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v1

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2c

    .line 1058
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v0, v0, v1

    goto :goto_38

    .line 1059
    :cond_2c
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v3

    if-lez v4, :cond_38

    .line 1060
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v1

    .line 1056
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1064
    :cond_3b
    add-float/2addr v3, v0

    .line 1065
    nop

    :goto_3d
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v0, v0

    if-ge v2, v0, :cond_4f

    .line 1066
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v1, v1, v2

    sub-float v1, v3, v1

    aput v1, v0, v2

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1068
    :cond_4f
    return-object p0
.end method

.method public whitelist reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 8

    .line 1027
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1028
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1030
    nop

    :goto_12
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v2, v0, :cond_55

    .line 1031
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v0, v0, v2

    .line 1032
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget v5, v5, v6

    sub-float v5, v3, v5

    aput v5, v4, v2

    .line 1033
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    sub-float/2addr v3, v0

    aput v3, v4, v5

    .line 1034
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v0, v0, v2

    .line 1035
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    aget v4, v4, v5

    aput v4, v3, v2

    .line 1036
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    aput v0, v3, v4

    .line 1030
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1038
    :cond_55
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v0, v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_64

    .line 1039
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v1, v1, v2

    sub-float/2addr v3, v1

    aput v3, v0, v2

    .line 1041
    :cond_64
    return-object p0
.end method

.method public whitelist scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 8

    .line 1083
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1084
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1085
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    .line 1086
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 1087
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    aget v1, v4, v5

    .line 1088
    cmpl-float v4, v1, v3

    if-nez v4, :cond_3d

    .line 1090
    sub-float/2addr p1, v3

    .line 1091
    nop

    :goto_26
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v1, v1

    if-ge v2, v1, :cond_3c

    .line 1092
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v4, v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1094
    :cond_3c
    goto :goto_54

    .line 1096
    :cond_3d
    sub-float/2addr p1, v3

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    .line 1097
    nop

    :goto_41
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v1, v1

    if-ge v2, v1, :cond_54

    .line 1098
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    aput v4, v1, v2

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1101
    :cond_54
    :goto_54
    iget-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    .line 1102
    return-object p0
.end method

.method public whitelist scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 8

    .line 1117
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1118
    :goto_a
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1119
    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    .line 1120
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    .line 1121
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    aget v1, v4, v5

    .line 1122
    cmpl-float v4, v1, v3

    if-nez v4, :cond_40

    .line 1124
    sub-float/2addr p1, v3

    .line 1125
    nop

    :goto_26
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v1, v1

    if-ge v2, v1, :cond_3f

    .line 1126
    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v4, v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 1125
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1128
    :cond_3f
    goto :goto_57

    .line 1129
    :cond_40
    sub-float/2addr p1, v1

    sub-float/2addr v3, v1

    div-float/2addr p1, v3

    .line 1130
    nop

    :goto_44
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v3, v3

    if-ge v2, v3, :cond_57

    .line 1131
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v2

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    aput v4, v3, v2

    .line 1130
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 1134
    :cond_57
    :goto_57
    iget-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    .line 1135
    return-object p0
.end method

.method public whitelist setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 6

    .line 1011
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    goto :goto_9

    :cond_8
    move v1, v2

    .line 1012
    :goto_9
    invoke-static {p1, p2, v1, v2}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    .line 1013
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    .line 1014
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    .line 1015
    return-object p0
.end method

.method public whitelist setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 6

    .line 974
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 978
    long-to-double p1, p1

    iput-wide p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    .line 979
    return-object p0

    .line 975
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5

    .line 907
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 910
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    .line 911
    return-object p0

    .line 908
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5

    .line 928
    packed-switch p1, :pswitch_data_20

    .line 936
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :pswitch_1c
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    .line 934
    nop

    .line 939
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .registers 5

    .line 956
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_c

    .line 959
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr p1, v0

    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    .line 960
    return-object p0

    .line 957
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
