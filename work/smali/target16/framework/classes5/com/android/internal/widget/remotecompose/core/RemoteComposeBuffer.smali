.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
.super Ljava/lang/Object;
.source "RemoteComposeBuffer.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EASING_CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist EASING_CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist EASING_CUBIC_CUSTOM:I = 0xb

.field public static final blacklist EASING_CUBIC_DECELERATE:I = 0x3

.field public static final blacklist EASING_CUBIC_LINEAR:I = 0x4

.field public static final blacklist EASING_CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist EASING_CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASING_EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASING_EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist EASING_SPLINE_CUSTOM:I = 0xc

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field private blacklist mApiLevel:I

.field private blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

.field private blacklist mGeneratedComponentId:I

.field private blacklist mLastComponentId:I

.field blacklist mMap:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<",
            "Lcom/android/internal/widget/remotecompose/core/CompanionOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 187
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 189
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mMap:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 193
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 187
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 189
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mMap:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 196
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 197
    return-void
.end method

.method public static blacklist fromFile(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>()V

    .line 899
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 900
    return-object v0
.end method

.method public static blacklist fromInputStream(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 2

    .line 925
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>()V

    .line 926
    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 927
    return-object v0
.end method

.method private blacklist getComponentId(I)I
    .registers 3

    .line 1470
    nop

    .line 1471
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 1472
    goto :goto_d

    .line 1474
    :cond_5
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1475
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1477
    :goto_d
    return p1
.end method

.method public static blacklist packAnimation(FI[FFF)[F
    .registers 5

    .line 1448
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object p0

    return-object p0
.end method

.method static blacklist read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 972
    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 973
    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 5

    .line 983
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 984
    array-length v0, p0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reset(I)V

    .line 985
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    array-length p0, p0

    iput p0, p1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 989
    nop

    .line 990
    return-void

    .line 987
    :catch_18
    move-exception p0

    .line 988
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    const v0, 0x8000

    new-array v0, v0, [B

    .line 1001
    const/4 v1, 0x0

    .line 1003
    :goto_6
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1004
    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 1005
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1006
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 1008
    :cond_17
    add-int/2addr v1, v2

    .line 1009
    array-length v2, v0

    if-ne v1, v2, :cond_22

    .line 1010
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1012
    :cond_22
    goto :goto_6
.end method

.method static blacklist version()Ljava/lang/String;
    .registers 1

    .line 886
    const-string/jumbo v0, "v1.0"

    return-object v0
.end method


# virtual methods
.method public varargs blacklist addAnimatedFloat(I[F)V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1169
    return-void
.end method

.method public blacklist addAnimatedFloat(I[F[F)V
    .registers 5

    .line 1179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1180
    return-void
.end method

.method public blacklist addAnimationSpecModifier(IFIFIII)V
    .registers 9

    .line 2376
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFIII)V

    .line 2384
    return-void
.end method

.method public blacklist addBitmapFont(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Ljava/util/Map;)V

    .line 470
    return p1
.end method

.method public blacklist addBitmapFont(I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;Ljava/util/Map;)V

    .line 487
    return p1
.end method

.method public blacklist addBoolean(IZ)V
    .registers 4

    .line 1148
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V

    .line 1149
    return-void
.end method

.method public blacklist addBoxStart(IIII)V
    .registers 6

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1680
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 1681
    return-void
.end method

.method public blacklist addCanvasContentStart(I)V
    .registers 3

    .line 1790
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1791
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1792
    return-void
.end method

.method public blacklist addCanvasOperationsStart()V
    .registers 2

    .line 1808
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1809
    return-void
.end method

.method public blacklist addCanvasStart(II)V
    .registers 4

    .line 1780
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1781
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CanvasLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1782
    return-void
.end method

.method public blacklist addClickArea(IIFFFFI)V
    .registers 9

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    .line 338
    return-void
.end method

.method public blacklist addClickModifierOperation()V
    .registers 2

    .line 2347
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2348
    return-void
.end method

.method public blacklist addClipPath(I)V
    .registers 3

    .line 1094
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1095
    return-void
.end method

.method public blacklist addClipRect(FFFF)V
    .registers 6

    .line 1106
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1107
    return-void
.end method

.method public blacklist addClipRectModifier()V
    .registers 2

    .line 1635
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1636
    return-void
.end method

.method public blacklist addCollapsibleColumnStart(IIIIF)V
    .registers 12

    .line 1768
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1769
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 1771
    return-void
.end method

.method public blacklist addCollapsiblePriorityModifier(IF)V
    .registers 4

    .line 2356
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 2357
    return-void
.end method

.method public blacklist addCollapsibleRowStart(IIIIF)V
    .registers 12

    .line 1737
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1738
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleRowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 1740
    return-void
.end method

.method public blacklist addColor(II)V
    .registers 4

    .line 1331
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;-><init>(II)V

    .line 1332
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1333
    return-void
.end method

.method public blacklist addColorExpression(IFFF)V
    .registers 6

    .line 1398
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IFFF)V

    .line 1399
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1400
    return-void
.end method

.method public blacklist addColorExpression(IFFFF)V
    .registers 13

    .line 1429
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    .line 1431
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1432
    return-void
.end method

.method public blacklist addColorExpression(IIFFF)V
    .registers 13

    .line 1413
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x4

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    .line 1415
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1416
    return-void
.end method

.method public blacklist addColorExpression(IIIF)V
    .registers 11

    .line 1344
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1345
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1346
    return-void
.end method

.method public blacklist addColorExpression(IISF)V
    .registers 11

    .line 1370
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x2

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1371
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1372
    return-void
.end method

.method public blacklist addColorExpression(ISIF)V
    .registers 11

    .line 1357
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x1

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1358
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1359
    return-void
.end method

.method public blacklist addColorExpression(ISSF)V
    .registers 11

    .line 1384
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x3

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1385
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1386
    return-void
.end method

.method public blacklist addColumnStart(IIIIF)V
    .registers 12

    .line 1753
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1754
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 1755
    return-void
.end method

.method public blacklist addComponentHeightValue(I)V
    .registers 5

    .line 1831
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1832
    return-void
.end method

.method public blacklist addComponentStart(I)V
    .registers 3

    .line 1497
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addComponentStart(II)V

    .line 1498
    return-void
.end method

.method public blacklist addComponentStart(II)V
    .registers 5

    .line 1487
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1488
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 1489
    return-void
.end method

.method public blacklist addComponentVisibilityOperation(I)V
    .registers 3

    .line 2258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2259
    return-void
.end method

.method public blacklist addComponentWidthValue(I)V
    .registers 5

    .line 1822
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1823
    return-void
.end method

.method public blacklist addConditionalOperations(BFF)V
    .registers 5

    .line 2082
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    .line 2083
    return-void
.end method

.method public blacklist addContainerEnd()V
    .registers 2

    .line 1502
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1503
    return-void
.end method

.method public blacklist addContentStart()V
    .registers 3

    .line 1802
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1803
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1804
    return-void
.end method

.method public blacklist addDebugMessage(IFI)V
    .registers 5

    .line 2093
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DebugMessage;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFI)V

    .line 2094
    return-void
.end method

.method public blacklist addDrawArc(FFFFFF)V
    .registers 8

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 376
    return-void
.end method

.method public blacklist addDrawBitmap(IFFFFI)V
    .registers 8

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 416
    return-void
.end method

.method public blacklist addDrawBitmapFontTextRun(IIIIFF)V
    .registers 8

    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    .line 661
    return-void
.end method

.method public blacklist addDrawBitmapFontTextRunOnPath(IIIIIF)V
    .registers 8

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIF)V

    .line 676
    return-void
.end method

.method public blacklist addDrawCircle(FFF)V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 510
    return-void
.end method

.method public blacklist addDrawContentOperation()V
    .registers 2

    .line 2320
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DrawContentOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2321
    return-void
.end method

.method public blacklist addDrawLine(FFFF)V
    .registers 6

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 523
    return-void
.end method

.method public blacklist addDrawOval(FFFF)V
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 535
    return-void
.end method

.method public blacklist addDrawPath(I)V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 581
    return-void
.end method

.method public blacklist addDrawRect(FFFF)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 593
    return-void
.end method

.method public blacklist addDrawRoundRect(FFFFFF)V
    .registers 8

    .line 607
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 608
    return-void
.end method

.method public blacklist addDrawSector(FFFFFF)V
    .registers 8

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 398
    return-void
.end method

.method public blacklist addDrawTextOnPath(IIFF)V
    .registers 6

    .line 619
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 620
    return-void
.end method

.method public blacklist addDrawTextRun(IIIIIFFZ)V
    .registers 10

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 645
    return-void
.end method

.method public blacklist addDrawTweenPath(IIFFF)V
    .registers 7

    .line 782
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    .line 783
    return-void
.end method

.method public blacklist addEndFloatFunctionDef()V
    .registers 2

    .line 1940
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1941
    return-void
.end method

.method public blacklist addFitBoxStart(IIII)V
    .registers 6

    .line 1692
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1693
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 1694
    return-void
.end method

.method public blacklist addFloat(IF)F
    .registers 4

    .line 1117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1118
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p1

    return p1
.end method

.method public blacklist addFloatArray(I[F)V
    .registers 4

    .line 1249
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1250
    return-void
.end method

.method public blacklist addFont(II[B)V
    .registers 5

    .line 2219
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[B)V

    .line 2220
    return-void
.end method

.method public blacklist addHeader([S[Ljava/lang/Object;)V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[S[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public blacklist addHeightInModifierOperation(FF)V
    .registers 4

    .line 2285
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 2286
    return-void
.end method

.method public blacklist addHeightModifierOperation(IF)V
    .registers 4

    .line 2276
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 2277
    return-void
.end method

.method public blacklist addImage(IIIIF)V
    .registers 7

    .line 1707
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1708
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 1709
    return-void
.end method

.method public blacklist addImpulse(FF)V
    .registers 4

    .line 1884
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1885
    return-void
.end method

.method public blacklist addImpulseEnd()V
    .registers 2

    .line 1894
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1895
    return-void
.end method

.method public blacklist addImpulseProcess()V
    .registers 2

    .line 1889
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1890
    return-void
.end method

.method public blacklist addInteger(II)V
    .registers 4

    .line 1128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1129
    return-void
.end method

.method public blacklist addIntegerExpression(II[I)V
    .registers 5

    .line 1321
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    .line 1322
    return-void
.end method

.method public blacklist addList(I[I)V
    .registers 4

    .line 1259
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 1260
    return-void
.end method

.method public blacklist addLong(IJ)V
    .registers 5

    .line 1138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V

    .line 1139
    return-void
.end method

.method public blacklist addLoopEnd()V
    .registers 2

    .line 1652
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1653
    return-void
.end method

.method public blacklist addLoopStart(IFFF)V
    .registers 6

    .line 1647
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1648
    return-void
.end method

.method public blacklist addMap(I[Ljava/lang/String;[B[I)V
    .registers 6

    .line 1272
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    .line 1273
    return-void
.end method

.method public blacklist addMatrixConst(I[F)V
    .registers 5

    .line 2185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V

    .line 2186
    return-void
.end method

.method public blacklist addMatrixExpression(I[F)V
    .registers 5

    .line 2195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[F)V

    .line 2196
    return-void
.end method

.method public blacklist addMatrixRestore()V
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1032
    return-void
.end method

.method public blacklist addMatrixRotate(FFF)V
    .registers 5

    .line 1053
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 1054
    return-void
.end method

.method public blacklist addMatrixSave()V
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1043
    return-void
.end method

.method public blacklist addMatrixScale(FF)V
    .registers 5

    .line 1073
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1074
    return-void
.end method

.method public blacklist addMatrixScale(FFFF)V
    .registers 6

    .line 1085
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1086
    return-void
.end method

.method public blacklist addMatrixSkew(FF)V
    .registers 4

    .line 1022
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1023
    return-void
.end method

.method public blacklist addMatrixTranslate(FF)V
    .registers 4

    .line 1063
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1064
    return-void
.end method

.method public blacklist addMatrixVectorMath(FS[F[I)V
    .registers 6

    .line 2208
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    invoke-static {v0, p2, p4, p1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/matrix/MatrixVectorMath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;S[II[F)V

    .line 2209
    return-void
.end method

.method public blacklist addModifierBackground(II)V
    .registers 15

    .line 1523
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    .line 1524
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v8, v0, v1

    .line 1525
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float v9, v0, v1

    .line 1526
    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float v10, p1, v1

    .line 1527
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, p2

    invoke-static/range {v2 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V

    .line 1528
    return-void
.end method

.method public blacklist addModifierBorder(FFII)V
    .registers 20

    .line 1540
    move/from16 v0, p3

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v10, v1, v2

    .line 1541
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v11, v1, v2

    .line 1542
    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float v12, v1, v2

    .line 1543
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v13, v0, v2

    .line 1544
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v14, p4

    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V

    .line 1546
    return-void
.end method

.method public blacklist addModifierGraphicsLayer(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1617
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/HashMap;)V

    .line 1618
    return-void
.end method

.method public blacklist addModifierMarquee(IIFFFF)V
    .registers 8

    .line 1601
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    .line 1609
    return-void
.end method

.method public blacklist addModifierOffset(FF)V
    .registers 4

    .line 1567
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1568
    return-void
.end method

.method public blacklist addModifierPadding(FFFF)V
    .registers 6

    .line 1557
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1558
    return-void
.end method

.method public blacklist addModifierRipple()V
    .registers 2

    .line 1581
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1582
    return-void
.end method

.method public blacklist addModifierScroll(IF)V
    .registers 5

    .line 1512
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1513
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1514
    return-void
.end method

.method public blacklist addModifierZIndex(F)V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    .line 1577
    return-void
.end method

.method public blacklist addPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 818
    return-void
.end method

.method public blacklist addParticleLoopEnd()V
    .registers 2

    .line 1927
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1928
    return-void
.end method

.method public blacklist addParticles(I[I[[FI)V
    .registers 6

    .line 1910
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 1911
    return-void
.end method

.method public blacklist addParticlesLoop(I[F[[F)V
    .registers 5

    .line 1922
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 1923
    return-void
.end method

.method public blacklist addPathData(I[F)I
    .registers 4

    .line 793
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 794
    return p1
.end method

.method public blacklist addPathData(I[FI)I
    .registers 6

    .line 805
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_11

    if-nez p3, :cond_8

    goto :goto_11

    .line 806
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "winding not supported in API level < 7"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 808
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    shl-int/lit8 p3, p3, 0x18

    or-int/2addr p3, p1

    invoke-static {v0, p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 809
    return p1
.end method

.method public blacklist addPathExpression(I[F[FFFFI)V
    .registers 9

    .line 2250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/PathExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[FFFFI)V

    .line 2251
    return-void
.end method

.method public blacklist addRootContentDescription(I)V
    .registers 3

    .line 249
    if-eqz p1, :cond_7

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 252
    :cond_7
    return-void
.end method

.method public blacklist addRootStart()V
    .registers 3

    .line 1796
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1797
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1798
    return-void
.end method

.method public blacklist addRoundClipRectModifier(FFFF)V
    .registers 6

    .line 1630
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1631
    return-void
.end method

.method public blacklist addRowStart(IIIIF)V
    .registers 12

    .line 1722
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1723
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 1724
    return-void
.end method

.method public blacklist addRunActionsStart()V
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1814
    return-void
.end method

.method public blacklist addSemanticsModifier(IBIIIZZ)V
    .registers 9

    .line 2333
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IBIIIZZ)V

    .line 2341
    return-void
.end method

.method public blacklist addStateLayout(IIIII)V
    .registers 12

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1667
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 1668
    return-void
.end method

.method public blacklist addText(ILjava/lang/String;)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ILjava/lang/String;)V

    .line 316
    return-void
.end method

.method public blacklist addTextComponentStart(IIIIFIFIIII)V
    .registers 24

    .line 1861
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1862
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    .line 1875
    return-void
.end method

.method public blacklist addTouchCancelModifierOperation()V
    .registers 2

    .line 2306
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchCancelModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2307
    return-void
.end method

.method public blacklist addTouchDownModifierOperation()V
    .registers 2

    .line 2292
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchDownModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2293
    return-void
.end method

.method public blacklist addTouchExpression(IFFFFI[FI[F[F)V
    .registers 12

    .line 1207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    .line 1219
    return-void
.end method

.method public blacklist addTouchUpModifierOperation()V
    .registers 2

    .line 2299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchUpModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2300
    return-void
.end method

.method public blacklist addValueFloatChangeActionOperation(IF)V
    .registers 4

    .line 2412
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueFloatChangeActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 2413
    return-void
.end method

.method public blacklist addValueFloatExpressionChangeActionOperation(II)V
    .registers 4

    .line 2430
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueFloatExpressionChangeActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 2431
    return-void
.end method

.method public blacklist addValueIntegerChangeActionOperation(II)V
    .registers 4

    .line 2421
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerChangeActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 2422
    return-void
.end method

.method public blacklist addValueIntegerExpressionChangeActionOperation(JJ)V
    .registers 6

    .line 2403
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueIntegerExpressionChangeActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;JJ)V

    .line 2404
    return-void
.end method

.method public blacklist addValueStringChangeActionOperation(II)V
    .registers 4

    .line 2392
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ValueStringChangeActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 2393
    return-void
.end method

.method public blacklist addWidthInModifierOperation(FF)V
    .registers 4

    .line 2313
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 2314
    return-void
.end method

.method public blacklist addWidthModifierOperation(IF)V
    .registers 4

    .line 2267
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 2268
    return-void
.end method

.method public blacklist asFloatId(I)F
    .registers 2

    .line 1158
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result p1

    return p1
.end method

.method public blacklist bitmapAttribute(IIS)V
    .registers 6

    .line 1959
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 1960
    return-void
.end method

.method public blacklist bitmapTextMeasure(IIII)V
    .registers 6

    .line 2142
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapTextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 2143
    return-void
.end method

.method public blacklist callFloatFunction(I[F)V
    .registers 4

    .line 1950
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1951
    return-void
.end method

.method blacklist copy()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 3

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 871
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>()V

    .line 872
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;",
            ")",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;"
        }
    .end annotation

    .line 940
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 941
    iget-object v1, p2, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 942
    goto :goto_4

    .line 943
    :cond_16
    return-object p2
.end method

.method public blacklist createBitmap(ISS)I
    .registers 11

    .line 2010
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    new-array v6, v1, [B

    const/4 v2, 0x3

    const/4 v4, 0x3

    move v1, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V

    .line 2018
    return v1
.end method

.method public blacklist createTextFromFloat(IFSSI)I
    .registers 7

    .line 744
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    .line 745
    return p1
.end method

.method public blacklist defineFloatFunction(I[I)V
    .registers 4

    .line 1935
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 1936
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIIIII)V
    .registers 13

    .line 283
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, p2

    move p2, p4

    move p3, p5

    move p4, p6

    move p5, p7

    move p6, p8

    move p7, p9

    move p8, p10

    move p9, p11

    move p10, p12

    invoke-static/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    .line 295
    return-void
.end method

.method public blacklist drawBitmapTextAnchored(IIFFFFFF)V
    .registers 10

    .line 709
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFFF)V

    .line 710
    return-void
.end method

.method public blacklist drawComponentContent()V
    .registers 2

    .line 1983
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1984
    return-void
.end method

.method public blacklist drawOnBitmap(III)V
    .registers 5

    .line 2027
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawToBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 2028
    return-void
.end method

.method public blacklist drawScaledBitmap(IFFFFFFFFIFI)V
    .registers 14

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p12}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 459
    return-void
.end method

.method public blacklist drawTextAnchored(IFFFFI)V
    .registers 8

    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 770
    return-void
.end method

.method public blacklist fromFile(Ljava/io/File;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>()V

    .line 913
    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 914
    return-object v0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-object v0
.end method

.method public blacklist getColorAttribute(IIS)V
    .registers 5

    .line 2105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 2106
    return-void
.end method

.method public blacklist getLastComponentId()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    return v0
.end method

.method public blacklist header(IIFJ)V
    .registers 7

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move-object p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 241
    return-void
.end method

.method public blacklist idLookup(IFF)V
    .registers 5

    .line 1297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/IdLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIF)V

    .line 1298
    return-void
.end method

.method public blacklist inflateFromBuffer(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readApiLevel(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 829
    nop

    .line 830
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_21

    .line 832
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readDirect(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)Lcom/android/internal/widget/remotecompose/core/operations/Header;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getProfiles()I

    move-result v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a

    .line 836
    goto :goto_22

    .line 834
    :catch_1a
    move-exception p1

    .line 835
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 830
    :cond_21
    move v0, v2

    .line 838
    :goto_22
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 839
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 841
    return-void

    .line 843
    :cond_2d
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 844
    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations;->getOperations(II)Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    move-result-object v0

    .line 845
    if-nez v0, :cond_36

    .line 847
    return-void

    .line 849
    :cond_36
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mMap:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    .line 850
    :goto_38
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 851
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    .line 855
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mMap:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 856
    if-eqz v1, :cond_56

    .line 859
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 860
    goto :goto_38

    .line 857
    :cond_56
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 861
    :cond_6f
    return-void
.end method

.method public blacklist mapLookup(III)V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 306
    return-void
.end method

.method public varargs blacklist pathAppend(I[F)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 572
    return-void
.end method

.method public blacklist pathCombine(IIIB)V
    .registers 6

    .line 2062
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V

    .line 2063
    return-void
.end method

.method public blacklist pathCreate(IFF)I
    .registers 5

    .line 560
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 561
    return p1
.end method

.method public blacklist pathTween(IIIF)I
    .registers 6

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/PathTween;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIF)V

    .line 548
    return p1
.end method

.method public blacklist performHaptic(I)V
    .registers 3

    .line 2071
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2072
    return-void
.end method

.method public blacklist rem(Ljava/lang/String;)V
    .registers 3

    .line 2151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Rem;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method public blacklist reset(I)V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 206
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 207
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 208
    return-void
.end method

.method public blacklist setBitmapName(ILjava/lang/String;)V
    .registers 5

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 498
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 220
    return-void
.end method

.method public blacklist setMatrixFromPath(IFFI)V
    .registers 6

    .line 2117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixFromPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFI)V

    .line 2118
    return-void
.end method

.method public blacklist setNamedVariable(ILjava/lang/String;I)V
    .registers 5

    .line 1459
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 1460
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 354
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 882
    return-void
.end method

.method public blacklist setVersion(II)V
    .registers 4

    .line 2161
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 2162
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setVersion(II)V

    .line 2163
    return-void
.end method

.method public blacklist setVersion(ILjava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2172
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mApiLevel:I

    .line 2174
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setValidOperations(Ljava/util/Set;)V

    .line 2175
    return-void
.end method

.method public blacklist storeBitmap(III[B)I
    .registers 6

    .line 1996
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 1997
    return p1
.end method

.method public blacklist storeBitmapA8(III[B)I
    .registers 12

    .line 2040
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    int-to-short v3, p2

    const/4 v4, 0x0

    int-to-short v5, p3

    const/4 v2, 0x4

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V

    .line 2048
    return v1
.end method

.method public blacklist textAttribute(IIS)V
    .registers 5

    .line 1968
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 1969
    return-void
.end method

.method public blacklist textLength(II)V
    .registers 4

    .line 1239
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1240
    return-void
.end method

.method public blacklist textLookup(IFF)V
    .registers 5

    .line 1286
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIF)V

    .line 1287
    return-void
.end method

.method public blacklist textLookup(IFI)V
    .registers 5

    .line 1310
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1311
    return-void
.end method

.method public blacklist textMeasure(III)V
    .registers 5

    .line 1229
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1230
    return-void
.end method

.method public blacklist textMerge(III)I
    .registers 5

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 722
    return p1
.end method

.method public blacklist textSubtext(IIFF)V
    .registers 6

    .line 2129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TextSubtext;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 2130
    return-void
.end method

.method public varargs blacklist timeAttribute(IIS[I)V
    .registers 6

    .line 1978
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 1979
    return-void
.end method

.method public blacklist wakeIn(F)V
    .registers 3

    .line 2228
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/WakeIn;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    .line 2229
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;Ljava/io/File;)V
    .registers 5

    .line 954
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 955
    iget-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getBuffer()[B

    move-result-object p2

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 956
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 957
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 960
    nop

    .line 961
    return-void

    .line 958
    :catch_1d
    move-exception p1

    .line 959
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
