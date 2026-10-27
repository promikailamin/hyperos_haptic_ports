.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawBitmapScaled.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawBitmapScaled"

.field private static final blacklist OP_CODE:I = 0x95

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field blacklist mContentDescId:I

.field blacklist mDstBottom:F

.field blacklist mDstLeft:F

.field blacklist mDstRight:F

.field blacklist mDstTop:F

.field blacklist mImageId:I

.field blacklist mOutDstBottom:F

.field blacklist mOutDstLeft:F

.field blacklist mOutDstRight:F

.field blacklist mOutDstTop:F

.field blacklist mOutScaleFactor:F

.field blacklist mOutSrcBottom:F

.field blacklist mOutSrcLeft:F

.field blacklist mOutSrcRight:F

.field blacklist mOutSrcTop:F

.field blacklist mScaleFactor:F

.field blacklist mScaleType:I

.field blacklist mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

.field blacklist mSrcBottom:F

.field blacklist mSrcLeft:F

.field blacklist mSrcRight:F

.field blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>(IFFFFFFFFIFI)V
    .registers 14

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 76
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 77
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 78
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 79
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 80
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 81
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 82
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 83
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 84
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 85
    and-int/lit16 p1, p10, 0xff

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    .line 86
    shr-int/lit8 p1, p10, 0x8

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3d

    .line 87
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 89
    :cond_3d
    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iput p11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 90
    iput p12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    .line 91
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V
    .registers 14

    .line 253
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 256
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 257
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 258
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 259
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 261
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 262
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 263
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 264
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 266
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 267
    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 268
    invoke-virtual {p0, p12}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 269
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5

    .line 316
    const/16 v0, 0x95

    const-string v1, "DrawBitmapScaled"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 317
    const-string v0, "Draw a bitmap using integer coordinates"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 318
    const/4 v0, 0x0

    const-string v1, "id"

    const-string v2, "id of bitmap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 319
    const/4 v1, 0x1

    const-string/jumbo v2, "srcLeft"

    const-string v3, "The left side of the image"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 320
    const-string/jumbo v2, "srcTop"

    const-string v3, "The top of the image"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 321
    const-string/jumbo v2, "srcRight"

    const-string v3, "The right side of the image"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 322
    const-string/jumbo v2, "srcBottom"

    const-string v3, "The bottom of the output"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 323
    const-string v2, "dstLeft"

    const-string v3, "The left side of the output"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 324
    const-string v2, "dstTop"

    const-string v3, "The top of the output"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 325
    const-string v2, "dstRight"

    const-string v3, "The right side of the output"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 326
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type of auto scaling"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 327
    const-string/jumbo v1, "scaleFactor"

    const-string v2, "for allowed"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 328
    const-string v1, "cdId"

    const-string v2, "id of string"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 329
    return-void
.end method

.method private blacklist getScaleTypeString()Ljava/lang/String;
    .registers 2

    .line 394
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    packed-switch v0, :pswitch_data_20

    .line 412
    const-string v0, "INVALID_SCALE_TYPE"

    return-object v0

    .line 410
    :pswitch_8
    const-string v0, "SCALE_FIXED_SCALE"

    return-object v0

    .line 408
    :pswitch_b
    const-string v0, "SCALE_FILL_BOUNDS"

    return-object v0

    .line 406
    :pswitch_e
    const-string v0, "SCALE_CROP"

    return-object v0

    .line 404
    :pswitch_11
    const-string v0, "SCALE_FIT"

    return-object v0

    .line 402
    :pswitch_14
    const-string v0, "SCALE_FILL_HEIGHT"

    return-object v0

    .line 400
    :pswitch_17
    const-string v0, "SCALE_FILL_WIDTH"

    return-object v0

    .line 398
    :pswitch_1a
    const-string v0, "SCALE_INSIDE"

    return-object v0

    .line 396
    :pswitch_1d
    const-string v0, "SCALE_NONE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 219
    const/16 v0, 0x95

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 210
    const-string v0, "DrawBitmapScaled"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    .line 292
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;-><init>(IFFFFFFFFIFI)V

    .line 307
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method private blacklist register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V
    .registers 4

    .line 133
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 136
    :cond_d
    return-void
.end method

.method static blacklist str(F)Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 200
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 14

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->setup(FFFFFFFFIF)V

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 359
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 361
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 362
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->getId(ILcom/android/internal/widget/remotecompose/core/PaintContext;)I

    move-result v2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    float-to-int v3, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    float-to-int v4, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    float-to-int v5, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v9, v0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v10, v0

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    .line 361
    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    .line 372
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 373
    return-void
.end method

.method blacklist print(Ljava/lang/String;FFFF)V
    .registers 8

    .line 145
    nop

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-float/2addr p4, p2

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-float/2addr p5, p3

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->str(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 122
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 124
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 126
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 128
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 129
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->register(Lcom/android/internal/widget/remotecompose/core/RemoteContext;F)V

    .line 130
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 377
    nop

    .line 378
    const-string v0, "DrawBitmapScaled"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imageId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contentDescriptionId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 381
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->getScaleTypeString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scaleType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 382
    const-string/jumbo v2, "scaleFactor"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 383
    const-string/jumbo v2, "srcLeft"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 384
    const-string/jumbo v2, "srcTop"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 385
    const-string/jumbo v2, "srcRight"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 386
    const-string/jumbo v2, "srcBottom"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 387
    const-string v2, "dstLeft"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 388
    const-string v2, "dstTop"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 389
    const-string v2, "dstRight"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 390
    const-string v2, "dstBottom"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 391
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawBitmapScaled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 175
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 177
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 179
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 181
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] - ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 184
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 186
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 188
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 190
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 195
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 95
    nop

    .line 96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_16

    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    :goto_16
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcLeft:F

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2d

    :cond_2b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    :goto_2d
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcTop:F

    .line 98
    nop

    .line 99
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_45

    :cond_43
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    :goto_45
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcRight:F

    .line 100
    nop

    .line 101
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_5d

    .line 103
    :cond_5b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    :goto_5d
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutSrcBottom:F

    .line 104
    nop

    .line 105
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_75

    :cond_73
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    :goto_75
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstLeft:F

    .line 106
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_8c

    :cond_8a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    :goto_8c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstTop:F

    .line 107
    nop

    .line 108
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_a4

    :cond_a2
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    :goto_a4
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstRight:F

    .line 109
    nop

    .line 110
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 111
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_bc

    .line 112
    :cond_ba
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    :goto_bc
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutDstBottom:F

    .line 113
    nop

    .line 114
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 115
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_d4

    .line 116
    :cond_d2
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    :goto_d4
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mOutScaleFactor:F

    .line 117
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 15

    .line 153
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mImageId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcLeft:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcTop:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcRight:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mSrcBottom:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstLeft:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstTop:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstRight:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mDstBottom:F

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleType:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mScaleFactor:F

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->mContentDescId:I

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 167
    return-void
.end method
