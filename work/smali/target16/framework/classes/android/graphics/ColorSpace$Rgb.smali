.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;,
        Landroid/graphics/ColorSpace$Rgb$Native;,
        Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mInverseTransform:[F

.field private final greylist-max-o mIsSrgb:Z

.field private final greylist-max-o mIsWideGamut:Z

.field private final greylist-max-o mMax:F

.field private final greylist-max-o mMin:F

.field private final blacklist mNativePtr:J

.field private final greylist-max-o mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mPrimaries:[F

.field private final greylist-max-o mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final greylist-max-o mTransform:[F

.field private final greylist-max-o mWhitePoint:[F


# direct methods
.method public static synthetic blacklist $r8$lambda$cIGQ-czByRuI3xD2gBDbU3RBmkg(Landroid/graphics/ColorSpace$Rgb;D)D
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInverseTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferParameters(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .registers 15

    .line 3180
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v6, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget v7, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v8, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget-object v9, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v10, -0x1

    move-object v0, p0

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 3183
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FD)V
    .registers 14

    .line 2941
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2942
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12

    .line 2824
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetGRAY_PRIMARIES()[F

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v0

    :goto_f
    move-object v3, v0

    .line 2825
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v4

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    move-object v5, p2

    .line 2824
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2826
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .registers 16

    .line 2743
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2745
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FD)V
    .registers 15

    .line 2981
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2982
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;[F[FDFFI)V
    .registers 22

    .line 3029
    move-wide/from16 v9, p4

    .line 3030
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v9, v0

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    move-object v11, v1

    goto :goto_14

    .line 3031
    :cond_e
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v10}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;-><init>(D)V

    move-object v11, v1

    .line 3032
    :goto_14
    if-nez v0, :cond_1c

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    move-object v12, v0

    goto :goto_22

    .line 3033
    :cond_1c
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9, v10}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;-><init>(D)V

    move-object v12, v0

    :goto_22
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 3029
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move-object v7, v11

    move-object v8, v12

    move/from16 v12, p8

    move-object v11, v0

    invoke-direct/range {v2 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 3035
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12

    .line 2865
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2866
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .registers 19

    .line 2794
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2795
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 18

    .line 2911
    nop

    .line 2912
    invoke-static/range {p5 .. p5}, Landroid/graphics/ColorSpace$Rgb;->generateOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v5

    .line 2913
    invoke-static/range {p5 .. p5}, Landroid/graphics/ColorSpace$Rgb;->generateEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v6

    .line 2911
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2915
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 13

    .line 3090
    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p10}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 3092
    if-eqz p2, :cond_152

    array-length p1, p2

    const/4 v0, 0x6

    const/16 v1, 0x9

    if-eq p1, v0, :cond_10

    array-length p1, p2

    if-ne p1, v1, :cond_152

    .line 3097
    :cond_10
    if-eqz p3, :cond_14a

    array-length p1, p3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    array-length p1, p3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14a

    .line 3102
    :cond_1a
    if-eqz p5, :cond_142

    if-eqz p6, :cond_142

    .line 3107
    cmpl-float p1, p7, p8

    if-gez p1, :cond_117

    .line 3112
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 3113
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 3115
    if-nez p4, :cond_3b

    .line 3116
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    goto :goto_40

    .line 3118
    :cond_3b
    array-length p1, p4

    if-ne p1, v1, :cond_fd

    .line 3122
    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 3124
    :goto_40
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {p1}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 3126
    iput-object p5, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 3127
    iput-object p6, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 3129
    iput p7, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 3130
    iput p8, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 3132
    new-instance p1, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;-><init>(Landroid/graphics/ColorSpace$Rgb;)V

    .line 3133
    invoke-interface {p5, p1}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 3134
    invoke-interface {p1, p6}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 3136
    iput-object p9, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 3140
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {p1, p7, p8}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 3141
    iget-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    move-object p4, p5

    move-object p5, p6

    move p6, p7

    move p7, p8

    move p8, p10

    invoke-static/range {p2 .. p8}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 3143
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz p1, :cond_f8

    .line 3144
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    if-eqz p1, :cond_bf

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    if-eqz p1, :cond_bf

    .line 3152
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smadaptToIlluminantD50([F[F)[F

    move-result-object p10

    .line 3153
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    double-to-float p3, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    double-to-float p4, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    double-to-float p5, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    double-to-float p6, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    double-to-float p7, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    double-to-float p8, p1

    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide p1, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    double-to-float p9, p1

    invoke-static/range {p3 .. p10}, Landroid/graphics/ColorSpace$Rgb$Native;->nativeCreate(FFFFFFF[F)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 3161
    sget-object p1, Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide p2, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    invoke-virtual {p1, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 3162
    goto :goto_fc

    .line 3145
    :cond_bf
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ColorSpace ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") cannot create native object! mWhitePoint: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 3147
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " mTransform: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 3148
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3163
    :cond_f8
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 3165
    :goto_fc
    return-void

    .line 3119
    :cond_fd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transform must have 9 entries! Has "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3108
    :cond_117
    move p6, p7

    move p7, p8

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid range: min="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", max="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; min must be strictly < max"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3103
    :cond_142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The transfer functions of a color space cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3098
    :cond_14a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3093
    :cond_152
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private static greylist-max-o area([F)F
    .registers 8

    .line 3698
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 3699
    const/4 v1, 0x1

    aget v1, p0, v1

    .line 3700
    const/4 v2, 0x2

    aget v2, p0, v2

    .line 3701
    const/4 v3, 0x3

    aget v3, p0, v3

    .line 3702
    const/4 v4, 0x4

    aget v4, p0, v4

    .line 3703
    const/4 v5, 0x5

    aget p0, p0, v5

    .line 3704
    mul-float v5, v0, v3

    mul-float v6, v1, v4

    add-float/2addr v5, v6

    mul-float v6, v2, p0

    add-float/2addr v5, v6

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    mul-float/2addr v1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v0, p0

    sub-float/2addr v5, v0

    .line 3705
    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v5, p0

    .line 3706
    const/4 p0, 0x0

    cmpg-float p0, v5, p0

    if-gez p0, :cond_29

    neg-float v5, v5

    :cond_29
    return v5
.end method

.method private greylist-max-o clamp(D)D
    .registers 5

    .line 3562
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_b

    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    :goto_9
    float-to-double p1, p1

    goto :goto_15

    :cond_b
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_15

    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    goto :goto_9

    :cond_15
    :goto_15
    return-wide p1
.end method

.method private static blacklist compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z
    .registers 6

    .line 3662
    invoke-interface {p2, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 3663
    invoke-interface {p3, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    .line 3664
    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static greylist-max-o computePrimaries([F)[F
    .registers 11

    .line 3820
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_5c

    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v1

    .line 3821
    new-array v2, v0, [F

    fill-array-data v2, :array_66

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v2

    .line 3822
    new-array v3, v0, [F

    fill-array-data v3, :array_70

    invoke-static {p0, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object p0

    .line 3824
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v1, v6

    add-float/2addr v4, v7

    .line 3825
    aget v7, v2, v3

    aget v8, v2, v5

    add-float/2addr v7, v8

    aget v8, v2, v6

    add-float/2addr v7, v8

    .line 3826
    aget v8, p0, v3

    aget v9, p0, v5

    add-float/2addr v8, v9

    aget v9, p0, v6

    add-float/2addr v8, v9

    .line 3828
    aget v9, v1, v3

    div-float/2addr v9, v4

    aget v1, v1, v5

    div-float/2addr v1, v4

    aget v4, v2, v3

    div-float/2addr v4, v7

    aget v2, v2, v5

    div-float/2addr v2, v7

    aget v7, p0, v3

    div-float/2addr v7, v8

    aget p0, p0, v5

    div-float/2addr p0, v8

    const/4 v8, 0x6

    new-array v8, v8, [F

    aput v9, v8, v3

    aput v1, v8, v5

    aput v4, v8, v6

    aput v2, v8, v0

    const/4 v0, 0x4

    aput v7, v8, v0

    const/4 v0, 0x5

    aput p0, v8, v0

    return-object v8

    nop

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_66
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_70
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeWhitePoint([F)[F
    .registers 6

    .line 3847
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object p0

    .line 3848
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    add-float/2addr v1, v4

    .line 3849
    aget v4, p0, v0

    div-float/2addr v4, v1

    aget p0, p0, v2

    div-float/2addr p0, v1

    new-array v1, v3, [F

    aput v4, v1, v0

    aput p0, v1, v2

    return-object v1

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeXYZMatrix([F[F)[F
    .registers 27

    .line 3926
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 3927
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 3928
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 3929
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 3930
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 3931
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 3932
    aget v12, p1, v0

    .line 3933
    aget v13, p1, v2

    .line 3935
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float v16, v15, v3

    .line 3936
    sub-float v17, v14, v5

    div-float v18, v17, v7

    .line 3937
    sub-float v19, v14, v9

    div-float v20, v19, v11

    .line 3938
    sub-float v21, v14, v12

    div-float v21, v21, v13

    .line 3940
    div-float v22, v1, v3

    .line 3941
    div-float v23, v5, v7

    .line 3942
    div-float v24, v9, v11

    .line 3943
    div-float/2addr v12, v13

    .line 3945
    sub-float v21, v21, v16

    sub-float v23, v23, v22

    mul-float v21, v21, v23

    sub-float v12, v12, v22

    sub-float v18, v18, v16

    mul-float v13, v12, v18

    sub-float v21, v21, v13

    sub-float v20, v20, v16

    mul-float v20, v20, v23

    sub-float v24, v24, v22

    mul-float v18, v18, v24

    sub-float v20, v20, v18

    div-float v21, v21, v20

    .line 3948
    mul-float v24, v24, v21

    sub-float v12, v12, v24

    div-float v12, v12, v23

    .line 3949
    sub-float/2addr v14, v12

    sub-float v14, v14, v21

    .line 3951
    div-float v13, v14, v3

    .line 3952
    div-float v16, v12, v7

    .line 3953
    div-float v18, v21, v11

    .line 3955
    mul-float/2addr v1, v13

    sub-float/2addr v15, v3

    mul-float/2addr v13, v15

    mul-float v5, v5, v16

    sub-float v17, v17, v7

    mul-float v16, v16, v17

    mul-float v9, v9, v18

    sub-float v19, v19, v11

    mul-float v18, v18, v19

    const/16 v3, 0x9

    new-array v3, v3, [F

    aput v1, v3, v0

    aput v14, v3, v2

    aput v13, v3, v4

    aput v5, v3, v6

    aput v12, v3, v8

    aput v16, v3, v10

    const/4 v0, 0x6

    aput v9, v3, v0

    const/4 v0, 0x7

    aput v21, v3, v0

    const/16 v0, 0x8

    aput v18, v3, v0

    return-object v3
.end method

.method private static greylist-max-o contains([F[F)Z
    .registers 14

    .line 3785
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget v5, p0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    const/4 v6, 0x3

    aget v7, p0, v6

    aget v8, p1, v6

    sub-float/2addr v7, v8

    const/4 v8, 0x4

    aget v9, p0, v8

    aget v10, p1, v8

    sub-float/2addr v9, v10

    const/4 v10, 0x5

    aget p0, p0, v10

    aget v11, p1, v10

    sub-float/2addr p0, v11

    const/4 v11, 0x6

    new-array v11, v11, [F

    aput v1, v11, v0

    aput v3, v11, v2

    aput v5, v11, v4

    aput v7, v11, v6

    aput v9, v11, v8

    aput p0, v11, v10

    .line 3791
    aget p0, v11, v0

    aget v1, v11, v2

    aget v3, p1, v0

    aget v5, p1, v8

    sub-float/2addr v3, v5

    aget v5, p1, v2

    aget v7, p1, v10

    sub-float/2addr v5, v7

    invoke-static {p0, v1, v3, v5}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_be

    aget p0, p1, v0

    aget v3, p1, v4

    sub-float/2addr p0, v3

    aget v3, p1, v2

    aget v5, p1, v6

    sub-float/2addr v3, v5

    aget v5, v11, v0

    aget v7, v11, v2

    .line 3792
    invoke-static {p0, v3, v5, v7}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_61

    goto :goto_be

    .line 3796
    :cond_61
    aget p0, v11, v4

    aget v3, v11, v6

    aget v5, p1, v4

    aget v7, p1, v0

    sub-float/2addr v5, v7

    aget v7, p1, v6

    aget v9, p1, v2

    sub-float/2addr v7, v9

    invoke-static {p0, v3, v5, v7}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_bd

    aget p0, p1, v4

    aget v3, p1, v8

    sub-float/2addr p0, v3

    aget v3, p1, v6

    aget v5, p1, v10

    sub-float/2addr v3, v5

    aget v5, v11, v4

    aget v7, v11, v6

    .line 3797
    invoke-static {p0, v3, v5, v7}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_8e

    goto :goto_bd

    .line 3801
    :cond_8e
    aget p0, v11, v8

    aget v3, v11, v10

    aget v5, p1, v8

    aget v4, p1, v4

    sub-float/2addr v5, v4

    aget v4, p1, v10

    aget v6, p1, v6

    sub-float/2addr v4, v6

    invoke-static {p0, v3, v5, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_bc

    aget p0, p1, v8

    aget v3, p1, v0

    sub-float/2addr p0, v3

    aget v3, p1, v10

    aget p1, p1, v2

    sub-float/2addr v3, p1

    aget p1, v11, v8

    aget v4, v11, v10

    .line 3802
    invoke-static {p0, v3, p1, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_bb

    goto :goto_bc

    .line 3805
    :cond_bb
    return v2

    .line 3803
    :cond_bc
    :goto_bc
    return v0

    .line 3798
    :cond_bd
    :goto_bd
    return v0

    .line 3793
    :cond_be
    :goto_be
    return v0
.end method

.method private static greylist-max-o cross(FFFF)F
    .registers 4

    .line 3719
    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method private static blacklist generateEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;
    .registers 5

    .line 2703
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2704
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda7;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2705
    :cond_c
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2706
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda8;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2708
    :cond_18
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    .line 2709
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_31

    .line 2711
    :cond_2c
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda10;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    .line 2708
    :goto_31
    return-object v0
.end method

.method private static blacklist generateOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;
    .registers 5

    .line 2689
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2690
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2691
    :cond_c
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2692
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2694
    :cond_18
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    .line 2695
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_31

    .line 2697
    :cond_2c
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    .line 2694
    :goto_31
    return-object v0
.end method

.method private static blacklist isGray([F)Z
    .registers 4

    .line 3656
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x3

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x5

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x6

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x7

    aget p0, p0, v1

    cmpl-float p0, p0, v2

    if-nez p0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method private static greylist-max-o isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .registers 10

    .line 3627
    const/4 v0, 0x1

    if-nez p6, :cond_4

    return v0

    .line 3628
    :cond_4
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object p6

    invoke-static {p0, p6}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result p0

    const/4 p6, 0x0

    if-nez p0, :cond_10

    .line 3629
    return p6

    .line 3631
    :cond_10
    sget-object p0, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, p0}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result p0

    if-nez p0, :cond_19

    .line 3632
    return p6

    .line 3635
    :cond_19
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-eqz p0, :cond_1f

    return p6

    .line 3636
    :cond_1f
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p5, p0

    if-eqz p0, :cond_26

    return p6

    .line 3640
    :cond_26
    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .line 3642
    const-wide/16 p4, 0x0

    :goto_30
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p4, v1

    if-gtz p1, :cond_4f

    .line 3643
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {p4, p5, p2, p1}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result p1

    if-nez p1, :cond_3f

    return p6

    .line 3644
    :cond_3f
    iget-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {p4, p5, p3, p1}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result p1

    if-nez p1, :cond_48

    return p6

    .line 3642
    :cond_48
    const-wide v1, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr p4, v1

    goto :goto_30

    .line 3647
    :cond_4f
    return v0
.end method

.method private static greylist-max-o isWideGamut([FFF)Z
    .registers 5

    .line 3684
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetNTSC_1953_PRIMARIES()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object v0

    .line 3685
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result p0

    if-nez p0, :cond_29

    :cond_1e
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2b

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2b

    :cond_29
    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    .line 3684
    :goto_2c
    return p0
.end method

.method static synthetic blacklist lambda$generateEOTF$4(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    .line 2704
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateEOTF$5(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    .line 2706
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateEOTF$6(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15

    .line 2709
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateEOTF$7(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 21

    .line 2711
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v2, p1

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$generateOETF$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    .line 2690
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateOETF$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    .line 2692
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateOETF$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15

    .line 2695
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$generateOETF$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 21

    .line 2697
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v2, p1

    move-wide/from16 v16, v0

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$new$8(DD)D
    .registers 7

    .line 3031
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    move-wide p2, v0

    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$new$9(DD)D
    .registers 7

    .line 3033
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    move-wide p2, v0

    :cond_7
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static greylist-max-o xyPrimaries([F)[F
    .registers 9

    .line 3863
    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 3866
    array-length v2, p0

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ne v2, v3, :cond_48

    .line 3869
    aget v2, p0, v4

    const/4 v3, 0x1

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    add-float/2addr v2, v6

    .line 3870
    aget v6, p0, v4

    div-float/2addr v6, v2

    aput v6, v1, v4

    .line 3871
    aget v4, p0, v3

    div-float/2addr v4, v2

    aput v4, v1, v3

    .line 3873
    const/4 v2, 0x3

    aget v3, p0, v2

    const/4 v4, 0x4

    aget v6, p0, v4

    add-float/2addr v3, v6

    const/4 v6, 0x5

    aget v7, p0, v6

    add-float/2addr v3, v7

    .line 3874
    aget v7, p0, v2

    div-float/2addr v7, v3

    aput v7, v1, v5

    .line 3875
    aget v5, p0, v4

    div-float/2addr v5, v3

    aput v5, v1, v2

    .line 3877
    aget v2, p0, v0

    const/4 v3, 0x7

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    add-float/2addr v2, v5

    .line 3878
    aget v0, p0, v0

    div-float/2addr v0, v2

    aput v0, v1, v4

    .line 3879
    aget p0, p0, v3

    div-float/2addr p0, v2

    aput p0, v1, v6

    .line 3880
    goto :goto_4b

    .line 3881
    :cond_48
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3884
    :goto_4b
    return-object v1
.end method

.method private static greylist-max-o xyWhitePoint([F)[F
    .registers 7

    .line 3898
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3901
    array-length v2, p0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1c

    .line 3902
    aget v2, p0, v4

    const/4 v3, 0x1

    aget v5, p0, v3

    add-float/2addr v2, v5

    aget v0, p0, v0

    add-float/2addr v2, v0

    .line 3903
    aget v0, p0, v4

    div-float/2addr v0, v2

    aput v0, v1, v4

    .line 3904
    aget p0, p0, v3

    div-float/2addr p0, v2

    aput p0, v1, v3

    .line 3905
    goto :goto_1f

    .line 3906
    :cond_1c
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3909
    :goto_1f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3567
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3568
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6d

    .line 3569
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 3571
    :cond_19
    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    .line 3573
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_26

    return v1

    .line 3574
    :cond_26
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_31

    return v1

    .line 3575
    :cond_31
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_3c

    return v1

    .line 3576
    :cond_3c
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_47

    return v1

    .line 3577
    :cond_47
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v2, :cond_54

    .line 3578
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3579
    :cond_54
    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v2, :cond_59

    .line 3580
    return v0

    .line 3583
    :cond_59
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, v2}, Ljava/util/function/DoubleUnaryOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    return v1

    .line 3584
    :cond_64
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/DoubleUnaryOperator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3568
    :cond_6d
    :goto_6d
    return v1
.end method

.method public whitelist fromLinear(FFF)[F
    .registers 6

    .line 3511
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public whitelist fromLinear([F)[F
    .registers 6

    .line 3534
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3535
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3536
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3537
    return-object p1
.end method

.method public whitelist fromXyz([F)[F
    .registers 6

    .line 3554
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 3555
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3556
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3557
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3558
    return-object p1
.end method

.method public whitelist getEotf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    .line 3396
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getInverseTransform()[F
    .registers 3

    .line 3347
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInverseTransform([F)[F
    .registers 5

    .line 3327
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3328
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 2

    .line 3439
    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return p1
.end method

.method public whitelist getMinValue(I)F
    .registers 2

    .line 3434
    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return p1
.end method

.method blacklist getNativeInstance()J
    .registers 5

    .line 2669
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 2674
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    return-wide v0

    .line 2671
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorSpace must use an ICC parametric transfer function! used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOetf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    .line 3372
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getPrimaries()[F
    .registers 3

    .line 3263
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaries([F)[F
    .registers 5

    .line 3242
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3243
    return-object p1
.end method

.method public whitelist getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 3

    .line 3414
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetBT2020_PQ_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    .line 3415
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetBT2020_HLG_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    .line 3416
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3417
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0

    .line 3419
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransform()[F
    .registers 3

    .line 3305
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransform([F)[F
    .registers 5

    .line 3285
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3286
    return-object p1
.end method

.method public whitelist getWhitePoint()[F
    .registers 3

    .line 3219
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWhitePoint([F)[F
    .registers 4

    .line 3201
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3202
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3203
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 3589
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    .line 3590
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 3591
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 3592
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    add-int/2addr v0, v1

    .line 3593
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    add-int/2addr v0, v1

    .line 3594
    mul-int/lit8 v0, v0, 0x1f

    .line 3595
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v1, :cond_46

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v3

    :cond_46
    add-int/2addr v0, v3

    .line 3596
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_5d

    .line 3597
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v1}, Ljava/util/function/DoubleUnaryOperator;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3598
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v1}, Ljava/util/function/DoubleUnaryOperator;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3600
    :cond_5d
    return v0
.end method

.method public whitelist isSrgb()Z
    .registers 2

    .line 3424
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 3429
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public whitelist toLinear(FFF)[F
    .registers 6

    .line 3462
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public whitelist toLinear([F)[F
    .registers 6

    .line 3485
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3486
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3487
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3488
    return-object p1
.end method

.method public whitelist toXyz([F)[F
    .registers 6

    .line 3544
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3545
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3546
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3547
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object p1

    return-object p1
.end method
