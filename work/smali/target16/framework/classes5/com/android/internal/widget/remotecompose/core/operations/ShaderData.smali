.class public Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ShaderData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ShaderData"

.field private static final blacklist MAX_FLOAT_LEN:I = 0xc8

.field private static final blacklist OP_CODE:I = 0x2d


# instance fields
.field blacklist mShaderID:I

.field blacklist mShaderTextId:I

.field private blacklist mShaderValid:Z

.field blacklist mUniformBitmapMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mUniformFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field blacklist mUniformIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mUniformRawFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 53
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 55
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    .line 64
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    .line 65
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    .line 66
    if-eqz p3, :cond_4c

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 68
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 70
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    goto :goto_29

    .line 76
    :cond_4c
    if-eqz p4, :cond_75

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    .line 78
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 79
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    goto :goto_5d

    .line 82
    :cond_75
    if-eqz p5, :cond_9e

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 84
    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 85
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    goto :goto_86

    .line 88
    :cond_9e
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[F>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 247
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 251
    const/4 p1, 0x0

    if-nez p3, :cond_10

    move p2, p1

    goto :goto_14

    :cond_10
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p2

    .line 252
    :goto_14
    if-nez p4, :cond_18

    move v0, p1

    goto :goto_1c

    :cond_18
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 253
    :goto_1c
    if-nez p5, :cond_20

    move v1, p1

    goto :goto_24

    :cond_20
    invoke-virtual {p5}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 254
    :goto_24
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, p2

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 257
    if-lez p2, :cond_5d

    .line 259
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 262
    array-length v3, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 264
    array-length v3, v2

    move v4, p1

    :goto_52
    if-ge v4, v3, :cond_5c

    aget v5, v2, v4

    .line 265
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 267
    :cond_5c
    goto :goto_37

    .line 270
    :cond_5d
    if-lez v0, :cond_8d

    .line 271
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_67
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 272
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 274
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 275
    array-length v0, p3

    move v2, p1

    :goto_82
    if-ge v2, v0, :cond_8c

    aget v3, p3, v2

    .line 276
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 278
    :cond_8c
    goto :goto_67

    .line 280
    :cond_8d
    if-lez v1, :cond_b4

    .line 281
    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_97
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 282
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 284
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 285
    goto :goto_97

    .line 287
    :cond_b4
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 7

    .line 359
    const/16 v0, 0x2d

    const-string v1, "ShaderData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 360
    const-string v0, "Shader"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 361
    const/4 v0, 0x0

    const-string/jumbo v1, "shaderID"

    const-string v2, "id of shader"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 362
    const/4 v1, 0x6

    const-string v2, " floatSize"

    const-string v3, "number of float uniforms"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 363
    const-string v2, " intSize"

    const-string v3, "number of int uniform"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 364
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 365
    const/4 v1, 0x5

    const-string v2, "floatName"

    const-string v3, "name of float uniform"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 366
    const-string v2, "length"

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 367
    const/16 v3, 0xa

    const-string v4, "VALUE"

    const-string v5, "float uniform (max 4)"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 368
    const-string v3, "IntName"

    const-string v5, "id of shader text"

    invoke-virtual {p0, v1, v3, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 369
    const-string v3, "length of uniform"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 370
    const/16 v2, 0xb

    const-string v3, "int uniform (max 4)"

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 371
    const-string v2, "bitmapName"

    const-string v3, "name of bitmap"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 372
    const-string v1, "id of bitmap"

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 373
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 227
    const/16 v0, 0x2d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 218
    const-string v0, "ShaderData"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 304
    and-int/lit16 v3, v0, 0xff

    .line 305
    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v3, :cond_47

    .line 306
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 307
    move v8, v5

    :goto_1d
    if-ge v8, v3, :cond_45

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v9

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 310
    if-gt v10, v4, :cond_3d

    .line 313
    new-array v11, v10, [F

    .line 315
    move v12, v5

    :goto_2c
    if-ge v12, v10, :cond_37

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v13

    aput v13, v11, v12

    .line 315
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    .line 319
    :cond_37
    invoke-virtual {v7, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 311
    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Float array too long"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_45
    move-object v3, v7

    goto :goto_48

    .line 305
    :cond_47
    move-object v3, v6

    .line 322
    :goto_48
    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 324
    if-lez v7, :cond_7e

    .line 326
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 327
    move v9, v5

    :goto_54
    if-ge v9, v7, :cond_7c

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v10

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 330
    if-gt v11, v4, :cond_74

    .line 333
    new-array v12, v11, [I

    .line 334
    move v13, v5

    :goto_63
    if-ge v13, v11, :cond_6e

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v14

    aput v14, v12, v13

    .line 334
    add-int/lit8 v13, v13, 0x1

    goto :goto_63

    .line 337
    :cond_6e
    invoke-virtual {v8, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    .line 331
    :cond_74
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "int array too long"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_7c
    move-object v4, v8

    goto :goto_7f

    .line 324
    :cond_7e
    move-object v4, v6

    .line 340
    :goto_7f
    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 342
    if-lez v0, :cond_a1

    .line 343
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 344
    nop

    :goto_8b
    if-ge v5, v0, :cond_9f

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v7

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 347
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    :cond_9f
    move-object v5, v6

    goto :goto_a2

    .line 342
    :cond_a1
    move-object v5, v6

    .line 350
    :goto_a2
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;-><init>(IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 p0, p1

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 377
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    if-eqz v0, :cond_9

    .line 378
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V

    .line 380
    :cond_9
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enable(Z)V
    .registers 2

    .line 394
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderValid:Z

    .line 395
    return-void
.end method

.method public blacklist getShaderTextId()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    return v0
.end method

.method public blacklist getUniformBitmapId(Ljava/lang/String;)I
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_12

    .line 156
    :cond_11
    const/4 p1, -0x1

    .line 154
    :goto_12
    return p1
.end method

.method public blacklist getUniformBitmapNames()[Ljava/lang/String;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloatNames()[Ljava/lang/String;
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformFloats(Ljava/lang/String;)[F
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_10

    :cond_d
    const/4 p1, 0x0

    new-array p1, p1, [F

    :goto_10
    return-object p1
.end method

.method public blacklist getUniformIntegerNames()[Ljava/lang/String;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUniformInts(Ljava/lang/String;)[I
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_10

    :cond_d
    const/4 p1, 0x0

    new-array p1, p1, [I

    :goto_10
    return-object p1
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v0, :cond_9

    goto :goto_3f

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 203
    array-length v2, v1

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_3d

    aget v4, v1, v3

    .line 204
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 205
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 203
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 208
    :cond_3d
    goto :goto_13

    .line 209
    :cond_3e
    return-void

    .line 199
    :cond_3f
    :goto_3f
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 399
    nop

    .line 400
    const-string v0, "ShaderData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "shaderTextId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "shaderID"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    .line 403
    const-string/jumbo v1, "uniformRawFloatMap"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    .line 404
    const-string/jumbo v1, "uniformFloatMap"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    .line 405
    const-string/jumbo v1, "uniformBitmapMap"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/Map;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 406
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHADER DATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v0, :cond_9

    goto :goto_56

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformRawFloatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 183
    nop

    .line 184
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    array-length v5, v2

    if-ge v4, v5, :cond_4b

    .line 185
    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 186
    if-nez v3, :cond_3c

    .line 187
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 189
    :cond_3c
    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v5

    aput v5, v3, v4

    .line 184
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 192
    :cond_4b
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    if-nez v3, :cond_50

    goto :goto_51

    :cond_50
    move-object v2, v3

    :goto_51
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_13

    .line 194
    :cond_55
    return-void

    .line 179
    :cond_56
    :goto_56
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 161
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mShaderTextId:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformFloatMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformIntMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->mUniformBitmapMap:Ljava/util/HashMap;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 168
    return-void
.end method
