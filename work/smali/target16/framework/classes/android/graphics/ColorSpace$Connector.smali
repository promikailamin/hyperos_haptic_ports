.class public Landroid/graphics/ColorSpace$Connector;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Connector$Rgb;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDestination:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mIntent:Landroid/graphics/ColorSpace$RenderIntent;

.field private final greylist-max-o mSource:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mTransform:[F

.field private final greylist-max-o mTransformDestination:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mTransformSource:Landroid/graphics/ColorSpace;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .registers 12

    .line 4021
    nop

    .line 4022
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_13

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v4, v0

    goto :goto_14

    :cond_13
    move-object v4, p1

    .line 4023
    :goto_14
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_26

    .line 4024
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v5, v0

    goto :goto_27

    :cond_26
    move-object v5, p2

    .line 4025
    :goto_27
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;->computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v7

    .line 4021
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    .line 4026
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V
    .registers 7

    .line 4037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4038
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    .line 4039
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    .line 4040
    iput-object p3, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    .line 4041
    iput-object p4, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    .line 4042
    iput-object p5, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    .line 4043
    iput-object p6, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    .line 4044
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private static greylist-max-o computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .registers 8

    .line 4053
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    return-object v1

    .line 4055
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object p2

    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_12

    move p2, v2

    goto :goto_13

    :cond_12
    move p2, v3

    .line 4056
    :goto_13
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v4, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v3

    .line 4058
    :goto_1e
    if-eqz p2, :cond_23

    if-eqz v0, :cond_23

    return-object v1

    .line 4060
    :cond_23
    if-nez p2, :cond_29

    if-eqz v0, :cond_28

    goto :goto_29

    .line 4071
    :cond_28
    return-object v1

    .line 4061
    :cond_29
    :goto_29
    if-eqz p2, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object p0, p1

    :goto_2d
    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .line 4062
    if-eqz p2, :cond_3a

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object p1

    goto :goto_3e

    :cond_3a
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object p1

    .line 4063
    :goto_3e
    if-eqz v0, :cond_49

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object p0

    goto :goto_4d

    :cond_49
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object p0

    .line 4064
    :goto_4d
    aget p2, p1, v3

    aget v0, p0, v3

    div-float/2addr p2, v0

    aget v0, p1, v2

    aget v1, p0, v2

    div-float/2addr v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    aget p0, p0, v1

    div-float/2addr p1, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    aput p2, p0, v3

    aput v0, p0, v2

    aput p1, p0, v1

    return-object p0
.end method

.method static greylist-max-o identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 3

    .line 4253
    new-instance v0, Landroid/graphics/ColorSpace$Connector$1;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-direct {v0, p0, p0, v1}, Landroid/graphics/ColorSpace$Connector$1;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getDestination()Landroid/graphics/ColorSpace;
    .registers 2

    .line 4095
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getRenderIntent()Landroid/graphics/ColorSpace$RenderIntent;
    .registers 2

    .line 4107
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public whitelist getSource()Landroid/graphics/ColorSpace;
    .registers 2

    .line 4083
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist transform(FFF)[F
    .registers 6

    .line 4129
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object p1

    return-object p1
.end method

.method public whitelist transform([F)[F
    .registers 5

    .line 4146
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object p1

    .line 4147
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    if-eqz v0, :cond_28

    .line 4148
    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 4149
    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 4150
    const/4 v0, 0x2

    aget v1, p1, v0

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 4152
    :cond_28
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object p1

    return-object p1
.end method
