.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;
.source "GraphicsLayerModifierOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;
    }
.end annotation


# static fields
.field public static final blacklist ALPHA:I = 0xb

.field public static final blacklist AMBIENT_SHADOW_COLOR:I = 0xf

.field public static final blacklist BLUR_RADIUS_X:I = 0x11

.field public static final blacklist BLUR_RADIUS_Y:I = 0x12

.field public static final blacklist BLUR_TILE_MODE:I = 0x13

.field public static final blacklist CAMERA_DISTANCE:I = 0xc

.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "GraphicsLayerModifierOperation"

.field public static final blacklist COMPOSITING_STRATEGY:I = 0xd

.field private static final blacklist DATA_TYPE_FLOAT:S = 0x1s

.field private static final blacklist DATA_TYPE_INT:S = 0x0s

.field static final blacklist FLOAT_VALUE:I = 0x0

.field public static final blacklist HAS_BLUR:I = 0x10

.field static final blacklist INT_VALUE:I = 0x1

.field private static final blacklist OP_CODE:I = 0xe0

.field public static final blacklist ROTATION_X:I = 0x2

.field public static final blacklist ROTATION_Y:I = 0x3

.field public static final blacklist ROTATION_Z:I = 0x4

.field public static final blacklist SCALE_X:I = 0x0

.field public static final blacklist SCALE_Y:I = 0x1

.field public static final blacklist SHADOW_ELEVATION:I = 0xa

.field public static final blacklist SHAPE:I = 0x14

.field public static final blacklist SHAPE_CIRCLE:I = 0x2

.field public static final blacklist SHAPE_RADIUS:I = 0x15

.field public static final blacklist SHAPE_RECT:I = 0x0

.field public static final blacklist SHAPE_ROUND_RECT:I = 0x1

.field public static final blacklist SPOT_SHADOW_COLOR:I = 0xe

.field public static final blacklist TILE_MODE_CLAMP:I = 0x0

.field public static final blacklist TILE_MODE_DECAL:I = 0x3

.field public static final blacklist TILE_MODE_MIRROR:I = 0x2

.field public static final blacklist TILE_MODE_REPEATED:I = 0x1

.field public static final blacklist TRANSFORM_ORIGIN_X:I = 0x5

.field public static final blacklist TRANSFORM_ORIGIN_Y:I = 0x6

.field public static final blacklist TRANSLATION_X:I = 0x7

.field public static final blacklist TRANSLATION_Y:I = 0x8

.field public static final blacklist TRANSLATION_Z:I = 0x9


# instance fields
.field blacklist mHasBlurEffect:Z

.field blacklist mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;


# direct methods
.method public constructor blacklist <init>()V
    .registers 8

    .line 37
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DecoratorModifierOperation;-><init>()V

    .line 79
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v2, 0x0

    const-string v3, "SCALE_X"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "SCALE_Y"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v3, 0x2

    const-string v5, "ROTATION_X"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "ROTATION_Y"

    const/4 v5, 0x3

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "ROTATION_Z"

    const/4 v5, 0x4

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "TRANSFORM_ORIGIN_X"

    const/4 v5, 0x5

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "TRANSFORM_ORIGIN_Y"

    const/4 v5, 0x6

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "TRANSLATION_X"

    const/4 v5, 0x7

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "TRANSLATION_Y"

    const/16 v5, 0x8

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "TRANSLATION_Z"

    const/16 v5, 0x9

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "SHADOW_ELEVATION"

    const/16 v5, 0xa

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "ALPHA"

    const/16 v5, 0xb

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "CAMERA_DISTANCE"

    const/high16 v4, 0x41000000    # 8.0f

    const/16 v5, 0xc

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "COMPOSITING_STRATEGY"

    const/16 v4, 0xd

    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "SPOT_SHADOW_COLOR"

    const/16 v4, 0xe

    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "AMBIENT_SHADOW_COLOR"

    const/16 v4, 0xf

    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "HAS_BLUR"

    const/16 v4, 0x10

    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "BLUR_RADIUS_X"

    const/16 v4, 0x11

    invoke-direct {v1, v4, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "BLUR_RADIUS_Y"

    const/16 v4, 0x12

    invoke-direct {v1, v4, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "BLUR_TILE_MODE"

    const/16 v4, 0x13

    invoke-direct {v1, v4, v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const-string v3, "SHAPE"

    const/4 v4, -0x1

    const/16 v5, 0x14

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v3, 0x15

    const-string v4, "SHAPE_RADIUS"

    invoke-direct {v1, v3, v4, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;-><init>(ILjava/lang/String;F)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mHasBlurEffect:Z

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 283
    const/16 v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 284
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 286
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 287
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 288
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_36

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->writeIntAttribute(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    goto :goto_47

    .line 290
    :cond_36
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_47

    .line 291
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->writeFloatAttribute(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 293
    :cond_47
    :goto_47
    goto :goto_14

    .line 294
    :cond_48
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 365
    const/16 v0, 0xe0

    const-string v1, "GraphicsLayerModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 366
    const-string v0, "define the GraphicsLayer Modifier"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 367
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 273
    const/16 v0, 0xe0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 264
    const-string v0, "GraphicsLayerModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 330
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;-><init>()V

    .line 331
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_12

    .line 332
    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->readAttributeValue(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 334
    :cond_12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method private blacklist readAttributeValue(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 7

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 344
    shr-int/lit8 v1, v0, 0xa

    .line 345
    and-int/lit8 v0, v0, 0x3f

    int-to-short v0, v0

    .line 346
    const/16 v2, 0x11

    const/4 v3, 0x1

    if-eq v0, v2, :cond_12

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1d

    .line 347
    :cond_12
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mHasBlurEffect:Z

    .line 348
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v4, 0x10

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->setValue(I)V

    .line 350
    :cond_1d
    if-ne v1, v3, :cond_2b

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p1

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->setValue(F)V

    goto :goto_39

    .line 353
    :cond_2b
    if-nez v1, :cond_39

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p1

    .line 355
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->setValue(I)V

    goto :goto_3a

    .line 353
    :cond_39
    :goto_39
    nop

    .line 357
    :goto_3a
    return-void
.end method

.method private static blacklist writeFloatAttribute(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V
    .registers 3

    .line 317
    or-int/lit16 p1, p1, 0x400

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 320
    return-void
.end method

.method private static blacklist writeIntAttribute(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V
    .registers 3

    .line 304
    or-int/lit8 p1, p1, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 306
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 307
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist fillInAttributes(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->needsToWrite()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_22
    return-void
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 374
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4

    .line 242
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 243
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v1, v1, v0

    .line 244
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->evaluate(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_10
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6

    .line 378
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 379
    invoke-interface {p1, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 380
    const-string v1, "GraphicsLayerModifierOperation"

    invoke-interface {p1, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v1, v1, v3

    .line 381
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scaleX"

    invoke-interface {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v0, v1, v0

    .line 382
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "scaleY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 383
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "rotationX"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 384
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "rotationY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "rotationZ"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "shadowElevation"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 387
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "transformOriginX"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "transformOriginY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "translationX"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "translationY"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "translationZ"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 392
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "alpha"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "cameraDistance"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    .line 394
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "compositingStrategy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "spotShadowColorId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ambientShadowColorId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 397
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GRAPHICS_LAYER = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 228
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 230
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphicsLayerModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 253
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5

    .line 213
    const/16 v0, 0xe0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 215
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->mValues:[Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;

    aget-object v1, v1, v0

    .line 217
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->needsToWrite()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 218
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation$AttributeValue;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 215
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 221
    :cond_21
    return-void
.end method
