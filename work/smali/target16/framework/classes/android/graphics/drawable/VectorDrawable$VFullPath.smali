.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation


# static fields
.field private static final greylist-max-o FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_ALPHA_INDEX:I = 0x4

.field private static final greylist-max-o FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_COLOR_INDEX:I = 0x3

.field private static final greylist-max-o FILL_TYPE_INDEX:I = 0xb

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final greylist-max-o STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_ALPHA_INDEX:I = 0x2

.field private static final greylist-max-o STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_COLOR_INDEX:I = 0x1

.field private static final greylist-max-o STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final greylist-max-o STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final greylist-max-o STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final greylist-max-o STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_WIDTH_INDEX:I = 0x0

.field private static final greylist-max-o TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final greylist-max-o TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_END_INDEX:I = 0x6

.field private static final greylist-max-o TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final greylist-max-o TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_START_INDEX:I = 0x5

.field private static final blacklist sPropertyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mFillColors:Landroid/content/res/ComplexColor;

.field private final greylist-max-o mNativePtr:J

.field private greylist-max-o mPropertyData:[B

.field greylist-max-o mStrokeColors:Landroid/content/res/ComplexColor;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 1759
    nop

    .line 1760
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1761
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1762
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1763
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1764
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1765
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1766
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1767
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1759
    const-string/jumbo v1, "strokeWidth"

    const-string/jumbo v3, "strokeColor"

    const-string/jumbo v5, "strokeAlpha"

    const-string v7, "fillColor"

    const-string v9, "fillAlpha"

    const-string/jumbo v11, "trimPathStart"

    const-string/jumbo v13, "trimPathEnd"

    const-string/jumbo v15, "trimPathOffset"

    invoke-static/range {v1 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    .line 1770
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 1783
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 1796
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 1809
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 1822
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 1835
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 1848
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 1861
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 1874
    sget-object v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    sget-object v5, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    sget-object v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    sget-object v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    sget-object v11, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    sget-object v13, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    sget-object v15, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    const-string/jumbo v16, "trimPathOffset"

    sget-object v17, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    const-string/jumbo v2, "strokeWidth"

    const-string/jumbo v4, "strokeColor"

    const-string/jumbo v6, "strokeAlpha"

    const-string v8, "fillColor"

    const-string v10, "fillAlpha"

    const-string/jumbo v12, "trimPathStart"

    const-string/jumbo v14, "trimPathEnd"

    invoke-static/range {v2 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1894
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1890
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1891
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1895
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1896
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .registers 4

    .line 1899
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1890
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1891
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1900
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1901
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1902
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1903
    iget-object p1, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1904
    return-void
.end method

.method private greylist-max-o canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .registers 2

    .line 2147
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 36

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1986
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    const/16 v3, 0x30

    if-nez v2, :cond_e

    .line 1989
    new-array v2, v3, [B

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 1994
    :cond_e
    iget-wide v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFullPathProperties(J[BI)Z

    move-result v2

    .line 1995
    if-eqz v2, :cond_179

    .line 1999
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2000
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2001
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v4

    .line 2002
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 2003
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v8

    .line 2004
    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 2005
    const/16 v11, 0x10

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v11

    .line 2006
    const/16 v12, 0x14

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v12

    .line 2007
    const/16 v13, 0x18

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    .line 2008
    const/16 v14, 0x1c

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    .line 2009
    const/16 v15, 0x20

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    .line 2010
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 2011
    const/16 v7, 0x28

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 2012
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 2013
    nop

    .line 2014
    nop

    .line 2016
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v16

    or-int v9, v9, v16

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 2019
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v9

    iput-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2021
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2022
    if-eqz v3, :cond_90

    .line 2023
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 2024
    move v3, v10

    iget-wide v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v16, v3

    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    invoke-static {v9, v10, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    goto :goto_92

    .line 2022
    :cond_90
    move/from16 v16, v10

    .line 2027
    :goto_92
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2028
    if-eqz v3, :cond_ac

    .line 2029
    new-instance v9, Landroid/util/PathParser$PathData;

    invoke-direct {v9, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2030
    iget-wide v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v17, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v9, v10, v3, v6}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathString(JLjava/lang/String;I)V

    goto :goto_ae

    .line 2028
    :cond_ac
    move/from16 v17, v6

    .line 2033
    :goto_ae
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v3

    .line 2035
    const/4 v6, 0x0

    if-eqz v3, :cond_de

    .line 2038
    instance-of v9, v3, Landroid/content/res/GradientColor;

    if-eqz v9, :cond_c4

    .line 2039
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2040
    move-object v9, v3

    check-cast v9, Landroid/content/res/GradientColor;

    invoke-virtual {v9}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v9

    goto :goto_d7

    .line 2041
    :cond_c4
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v9

    if-nez v9, :cond_d4

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v9

    if-eqz v9, :cond_d1

    goto :goto_d4

    .line 2044
    :cond_d1
    iput-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_d6

    .line 2042
    :cond_d4
    :goto_d4
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2046
    :goto_d6
    move-object v9, v6

    :goto_d7
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v10

    move/from16 v23, v10

    goto :goto_e1

    .line 2035
    :cond_de
    move-object v9, v6

    move/from16 v23, v16

    .line 2049
    :goto_e1
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v3

    .line 2051
    if-eqz v3, :cond_10f

    .line 2054
    instance-of v10, v3, Landroid/content/res/GradientColor;

    if-eqz v10, :cond_f6

    .line 2055
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2056
    move-object v6, v3

    check-cast v6, Landroid/content/res/GradientColor;

    invoke-virtual {v6}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    goto :goto_108

    .line 2057
    :cond_f6
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v10

    if-nez v10, :cond_106

    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v10

    if-eqz v10, :cond_103

    goto :goto_106

    .line 2060
    :cond_103
    iput-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_108

    .line 2058
    :cond_106
    :goto_106
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2062
    :goto_108
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    move/from16 v21, v3

    goto :goto_111

    .line 2051
    :cond_10f
    move/from16 v21, v17

    .line 2065
    :goto_111
    move-object v3, v9

    iget-wide v9, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2066
    const-wide/16 v16, 0x0

    if-eqz v3, :cond_123

    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v18

    move-wide/from16 v32, v18

    move/from16 v18, v2

    move-wide/from16 v2, v32

    goto :goto_127

    :cond_123
    move/from16 v18, v2

    move-wide/from16 v2, v16

    .line 2065
    :goto_127
    invoke-static {v9, v10, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    .line 2067
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2068
    if-eqz v6, :cond_132

    invoke-virtual {v6}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v16

    :cond_132
    move-wide/from16 v9, v16

    .line 2067
    invoke-static {v2, v3, v9, v10}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    .line 2070
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v24

    .line 2072
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 2074
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 2076
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 2078
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 2080
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 2082
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 2084
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 2086
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v25

    .line 2088
    const/16 v2, 0xd

    move/from16 v3, v18

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v31

    .line 2090
    iget-wide v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v31}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V

    .line 2093
    return-void

    .line 1996
    :cond_179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: inconsistent property count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8

    .line 2113
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_12

    .line 2114
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2115
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2122
    :cond_12
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2123
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 2125
    if-eqz v0, :cond_51

    .line 2126
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v0, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2127
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/GradientColor;

    if-eqz v0, :cond_40

    .line 2128
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/GradientColor;

    .line 2129
    invoke-virtual {v0}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    .line 2128
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    goto :goto_51

    .line 2130
    :cond_40
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_51

    .line 2131
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v0}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2135
    :cond_51
    :goto_51
    if-eqz v1, :cond_84

    .line 2136
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v0, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2137
    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of p1, p1, Landroid/content/res/GradientColor;

    if-eqz p1, :cond_73

    .line 2138
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast p1, Landroid/content/res/GradientColor;

    .line 2139
    invoke-virtual {p1}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    .line 2138
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    goto :goto_84

    .line 2140
    :cond_73
    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of p1, p1, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_84

    .line 2141
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result p1

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2144
    :cond_84
    :goto_84
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 4

    .line 2097
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2098
    return v1

    .line 2101
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2102
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 2103
    if-nez v0, :cond_19

    if-eqz v2, :cond_17

    goto :goto_19

    .line 2106
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 2104
    :cond_19
    :goto_19
    return v1
.end method

.method greylist-max-o getFillAlpha()F
    .registers 3

    .line 2203
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillAlpha(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getFillColor()I
    .registers 3

    .line 2190
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillColor(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1973
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 2

    .line 1968
    const/16 v0, 0x108

    return v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 3

    .line 1907
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    .line 1908
    if-eqz v0, :cond_7

    .line 1909
    return-object v0

    .line 1911
    :cond_7
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1912
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Property;

    return-object p1

    .line 1915
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 3

    .line 1920
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1921
    const/4 p1, -0x1

    return p1

    .line 1923
    :cond_a
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method greylist-max-o getStrokeAlpha()F
    .registers 3

    .line 2178
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeAlpha(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getStrokeColor()I
    .registers 3

    .line 2153
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeColor(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getStrokeWidth()F
    .registers 3

    .line 2166
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeWidth(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathEnd()F
    .registers 3

    .line 2227
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathEnd(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathOffset()F
    .registers 3

    .line 2239
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathOffset(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathStart()F
    .registers 3

    .line 2215
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathStart(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 2

    .line 1960
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1961
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1963
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1960
    :goto_2b
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1978
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1980
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1981
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1982
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1955
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 9

    .line 1929
    nop

    .line 1931
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_27

    .line 1932
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v0

    .line 1933
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v3, Landroid/content/res/ColorStateList;

    .line 1934
    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1935
    if-eq v0, v3, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    or-int/2addr v4, v2

    .line 1936
    if-eq v0, v3, :cond_28

    .line 1937
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    goto :goto_28

    .line 1941
    :cond_27
    move v4, v2

    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4a

    .line 1942
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v0

    .line 1943
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v3, Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 1944
    if-eq v0, p1, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    or-int/2addr v4, v1

    .line 1945
    if-eq v0, p1, :cond_4a

    .line 1946
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 1950
    :cond_4a
    return v4
.end method

.method greylist-max-o setFillAlpha(F)V
    .registers 4

    .line 2208
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2209
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillAlpha(JF)V

    .line 2211
    :cond_b
    return-void
.end method

.method greylist-max-o setFillColor(I)V
    .registers 4

    .line 2195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2196
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2197
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2199
    :cond_e
    return-void
.end method

.method greylist-max-o setStrokeAlpha(F)V
    .registers 4

    .line 2183
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2184
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeAlpha(JF)V

    .line 2186
    :cond_b
    return-void
.end method

.method greylist-max-o setStrokeColor(I)V
    .registers 4

    .line 2158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2159
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2160
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2162
    :cond_e
    return-void
.end method

.method greylist-max-o setStrokeWidth(F)V
    .registers 4

    .line 2171
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2172
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeWidth(JF)V

    .line 2174
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathEnd(F)V
    .registers 4

    .line 2232
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2233
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathEnd(JF)V

    .line 2235
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathOffset(F)V
    .registers 4

    .line 2244
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2245
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathOffset(JF)V

    .line 2247
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathStart(F)V
    .registers 4

    .line 2220
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2221
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathStart(JF)V

    .line 2223
    :cond_b
    return-void
.end method
