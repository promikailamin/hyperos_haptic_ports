.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;
.super Ljava/lang/Object;
.source "AndroidPaintContext.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field blacklist mTileModes:[Landroid/graphics/Shader$TileMode;

.field final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 937
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Shader$TileMode;

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method private blacklist createFontBuilder([BIZ)Landroid/graphics/fonts/Font$Builder;
    .registers 5

    .line 719
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 722
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 723
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 724
    new-instance p1, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {p1, v0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 725
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {p1, p2}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 726
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 727
    nop

    .line 726
    invoke-virtual {p1, p3}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 728
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->setAxis([Landroid/graphics/fonts/FontVariationAxis;)V

    .line 729
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    return-object p1
.end method

.method private blacklist getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 754
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_66

    .line 760
    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 761
    if-nez v0, :cond_23

    .line 762
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Unable to list font files"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    return-object v2

    .line 765
    :cond_23
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 766
    array-length v1, v0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_47

    aget-object v4, v0, v3

    .line 767
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 768
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 766
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 771
    :cond_47
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    return-object v2

    .line 756
    :cond_66
    :goto_66
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "System fonts directory not found"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    return-object v2
.end method

.method private blacklist setAxis([Landroid/graphics/fonts/FontVariationAxis;)V
    .registers 3

    .line 733
    nop

    .line 735
    if-eqz p1, :cond_8

    .line 736
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 738
    :cond_8
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_30

    .line 742
    nop

    .line 744
    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 745
    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    .line 746
    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v0, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 748
    const-string/jumbo p1, "sans-serif"

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p1

    .line 749
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 751
    return-void

    .line 739
    :catch_30
    move-exception p1

    .line 740
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 741
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public blacklist clear(J)V
    .registers 5

    .line 932
    const-wide/16 v0, 0x2000

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_11

    .line 933
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 935
    :cond_11
    return-void
.end method

.method public blacklist setAlpha(F)V
    .registers 4

    .line 907
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 908
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .registers 3

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 928
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smremoteToAndroidBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 903
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .registers 5

    .line 986
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smremoteToAndroidPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 987
    if-eqz p2, :cond_12

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 990
    :cond_12
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .registers 3

    .line 922
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 923
    return-void
.end method

.method public blacklist setFontVariationAxes([Ljava/lang/String;[F)V
    .registers 8

    .line 783
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    .line 784
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 785
    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    aget-object v3, p1, v1

    aget v4, p2, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    aput-object v2, v0, v1

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 787
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->setAxis([Landroid/graphics/fonts/FontVariationAxis;)V

    .line 788
    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .registers 4

    .line 897
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 898
    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .registers 11

    .line 951
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object p7, v2, p7

    move p0, p5

    move-object p5, p1

    move p1, p3

    move p3, p0

    move p0, p6

    move-object p6, p2

    move p2, p4

    move p4, p0

    move-object p0, v1

    invoke-direct/range {p0 .. p7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object p1, p0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 960
    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .registers 10

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object p6, v2, p6

    move p0, p4

    move-object p4, p1

    move p1, p3

    move p3, p5

    move-object p5, p2

    move p2, p0

    move-object p0, v1

    invoke-direct/range {p0 .. p6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object p1, p0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 973
    return-void
.end method

.method public blacklist setShader(I)V
    .registers 10

    .line 860
    if-nez p1, :cond_b

    .line 861
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 862
    return-void

    .line 864
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p1

    .line 865
    if-nez p1, :cond_14

    .line 866
    return-void

    .line 868
    :cond_14
    new-instance v0, Landroid/graphics/RuntimeShader;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloatNames()[Ljava/lang/String;

    move-result-object v1

    .line 870
    const/4 v2, 0x0

    move v3, v2

    :goto_29
    array-length v4, v1

    if-ge v3, v4, :cond_38

    .line 871
    aget-object v4, v1, v3

    .line 872
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 873
    invoke-virtual {v0, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    .line 870
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 875
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformIntegerNames()[Ljava/lang/String;

    move-result-object v1

    .line 876
    move v3, v2

    :goto_3d
    array-length v4, v1

    if-ge v3, v4, :cond_4c

    .line 877
    aget-object v4, v1, v3

    .line 878
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformInts(Ljava/lang/String;)[I

    move-result-object v5

    .line 879
    invoke-virtual {v0, v4, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;[I)V

    .line 876
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 881
    :cond_4c
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapNames()[Ljava/lang/String;

    move-result-object v1

    .line 882
    nop

    :goto_51
    array-length v3, v1

    if-ge v2, v3, :cond_79

    .line 883
    aget-object v3, v1, v2

    .line 884
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapId(Ljava/lang/String;)I

    move-result v4

    .line 885
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$400(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 886
    iget-object v5, v5, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 887
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v4, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 890
    invoke-virtual {v0, v3, v5}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    .line 882
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 892
    :cond_79
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 893
    return-void
.end method

.method public blacklist setShaderMatrix(F)V
    .registers 3

    .line 692
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    .line 693
    if-nez p1, :cond_13

    .line 694
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 695
    return-void

    .line 697
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$100(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/MatrixAccess;

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/MatrixAccess;->get()[F

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/MatrixAccess;->to3x3([F)[F

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 699
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 701
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 4

    .line 848
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 849
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 918
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .registers 3

    .line 912
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 913
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 3

    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 839
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 854
    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .registers 7

    .line 981
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 982
    return-void
.end method

.method public blacklist setTextSize(F)V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 638
    return-void
.end method

.method public blacklist setTextureShader(ISSSS)V
    .registers 8

    .line 807
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    .line 809
    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$200(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    add-int/lit16 v1, p1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapShader;

    .line 811
    if-eqz v0, :cond_1a

    .line 812
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 813
    return-void

    .line 815
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$300(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 816
    if-nez p1, :cond_2b

    .line 817
    return-void

    .line 819
    :cond_2b
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 822
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v1

    aget-object p2, v1, p2

    .line 823
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v1

    aget-object p3, v1, p3

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 825
    if-lez p4, :cond_41

    .line 826
    invoke-virtual {v0, p4}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    .line 829
    :cond_41
    if-lez p5, :cond_46

    .line 830
    invoke-virtual {v0, p5}, Landroid/graphics/BitmapShader;->setMaxAnisotropy(I)V

    .line 833
    :cond_46
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 834
    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .registers 5

    .line 642
    const/16 v0, 0x190

    packed-switch p1, :pswitch_data_98

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    .line 677
    # getter for: Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;

    .line 678
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->fontBuilder:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/fonts/Font$Builder;

    .line 679
    if-nez v0, :cond_91

    .line 680
    iget-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->mFontData:[B

    .line 681
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->createFontBuilder([BIZ)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->fontBuilder:Ljava/lang/Object;

    goto/16 :goto_91

    .line 667
    :pswitch_21
    if-ne p2, v0, :cond_2f

    if-nez p3, :cond_2f

    .line 668
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_97

    .line 670
    :cond_2f
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 671
    invoke-static {v0, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    .line 670
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 674
    goto :goto_97

    .line 652
    :pswitch_3d
    if-ne p2, v0, :cond_4b

    if-nez p3, :cond_4b

    .line 653
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_97

    .line 655
    :cond_4b
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 657
    goto :goto_97

    .line 659
    :pswitch_59
    if-ne p2, v0, :cond_67

    if-nez p3, :cond_67

    .line 660
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_97

    .line 662
    :cond_67
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 663
    invoke-static {v0, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    .line 662
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 665
    goto :goto_97

    .line 644
    :pswitch_75
    if-ne p2, v0, :cond_83

    if-nez p3, :cond_83

    .line 645
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_97

    .line 647
    :cond_83
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 648
    invoke-static {v0, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p2

    .line 647
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 650
    goto :goto_97

    .line 683
    :cond_91
    :goto_91
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 684
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->setAxis([Landroid/graphics/fonts/FontVariationAxis;)V

    .line 688
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_75
        :pswitch_59
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setTypeFace(Ljava/lang/String;IZ)V
    .registers 6

    .line 710
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 711
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 712
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {p1, p2}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 713
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 714
    nop

    .line 713
    invoke-virtual {p1, p3}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 715
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->setAxis([Landroid/graphics/fonts/FontVariationAxis;)V

    .line 716
    return-void
.end method
