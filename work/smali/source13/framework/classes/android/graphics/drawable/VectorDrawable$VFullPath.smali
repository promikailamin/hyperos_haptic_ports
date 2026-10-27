.class public Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

.field private static final greylist-max-o sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
.method static bridge synthetic blacklist -$$Nest$sfgetFILL_ALPHA()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFILL_COLOR()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_ALPHA()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_COLOR()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_WIDTH()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_END()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_OFFSET()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_START()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1790
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 1805
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 1818
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 1831
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 1844
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 1857
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 1870
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 1883
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 1896
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 1909
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1933
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1930
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1934
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1935
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .registers 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1938
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1929
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1930
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1939
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1940
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1941
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1942
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1943
    return-void
.end method

.method private greylist-max-o canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .registers 3
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    .line 2186
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 44
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 2024
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x30

    .line 2025
    .local v2, "byteCount":I
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_e

    .line 2028
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 2033
    :cond_e
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFullPathProperties(J[BI)Z

    move-result v3

    .line 2034
    .local v3, "success":Z
    if-eqz v3, :cond_1ab

    .line 2038
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2039
    .local v4, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2040
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    .line 2041
    .local v6, "strokeWidth":F
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 2042
    .local v8, "strokeColor":I
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    .line 2043
    .local v10, "strokeAlpha":F
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 2044
    .local v12, "fillColor":I
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    .line 2045
    .local v13, "fillAlpha":F
    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    .line 2046
    .local v14, "trimPathStart":F
    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    .line 2047
    .local v15, "trimPathEnd":F
    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 2048
    .local v7, "trimPathOffset":F
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 2049
    .local v9, "strokeLineCap":I
    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 2050
    .local v11, "strokeLineJoin":I
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    .line 2051
    .local v5, "strokeMiterLimit":F
    move/from16 v17, v2

    .end local v2    # "byteCount":I
    .local v17, "byteCount":I
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 2052
    .local v2, "fillType":I
    const/16 v18, 0x0

    .line 2053
    .local v18, "fillGradient":Landroid/graphics/Shader;
    const/16 v19, 0x0

    .line 2055
    .local v19, "strokeGradient":Landroid/graphics/Shader;
    move/from16 v20, v3

    .end local v3    # "success":Z
    .local v20, "success":Z
    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v21

    or-int v3, v3, v21

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 2058
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2060
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2061
    .local v3, "pathName":Ljava/lang/String;
    if-eqz v3, :cond_9a

    .line 2062
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 2063
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .local v16, "properties":Ljava/nio/ByteBuffer;
    .local v21, "pathName":Ljava/lang/String;
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v22, v8

    .end local v8    # "strokeColor":I
    .local v22, "strokeColor":I
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    goto :goto_a0

    .line 2061
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "strokeColor":I
    .restart local v3    # "pathName":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/nio/ByteBuffer;
    .restart local v8    # "strokeColor":I
    :cond_9a
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v22, v8

    .line 2066
    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .end local v8    # "strokeColor":I
    .restart local v16    # "properties":Ljava/nio/ByteBuffer;
    .restart local v21    # "pathName":Ljava/lang/String;
    .restart local v22    # "strokeColor":I
    :goto_a0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2067
    .local v3, "pathString":Ljava/lang/String;
    if-eqz v3, :cond_bb

    .line 2068
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2069
    move v4, v7

    .end local v7    # "trimPathOffset":F
    .local v4, "trimPathOffset":F
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v23, v12

    .end local v12    # "fillColor":I
    .local v23, "fillColor":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v7, v8, v3, v12}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathString(JLjava/lang/String;I)V

    goto :goto_be

    .line 2067
    .end local v4    # "trimPathOffset":F
    .end local v23    # "fillColor":I
    .restart local v7    # "trimPathOffset":F
    .restart local v12    # "fillColor":I
    :cond_bb
    move v4, v7

    move/from16 v23, v12

    .line 2072
    .end local v7    # "trimPathOffset":F
    .end local v12    # "fillColor":I
    .restart local v4    # "trimPathOffset":F
    .restart local v23    # "fillColor":I
    :goto_be
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v7

    .line 2074
    .local v7, "fillColors":Landroid/content/res/ComplexColor;
    const/4 v8, 0x0

    if-eqz v7, :cond_ed

    .line 2077
    instance-of v12, v7, Landroid/content/res/GradientColor;

    if-eqz v12, :cond_d6

    .line 2078
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2079
    move-object v12, v7

    check-cast v12, Landroid/content/res/GradientColor;

    invoke-virtual {v12}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    move-object/from16 v18, v12

    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .local v12, "fillGradient":Landroid/graphics/Shader;
    goto :goto_e8

    .line 2080
    .end local v12    # "fillGradient":Landroid/graphics/Shader;
    .restart local v18    # "fillGradient":Landroid/graphics/Shader;
    :cond_d6
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v12

    if-nez v12, :cond_e6

    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v12

    if-eqz v12, :cond_e3

    goto :goto_e6

    .line 2083
    :cond_e3
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_e8

    .line 2081
    :cond_e6
    :goto_e6
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2085
    :goto_e8
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    .end local v23    # "fillColor":I
    .local v12, "fillColor":I
    goto :goto_ef

    .line 2074
    .end local v12    # "fillColor":I
    .restart local v23    # "fillColor":I
    :cond_ed
    move/from16 v12, v23

    .line 2088
    .end local v23    # "fillColor":I
    .restart local v12    # "fillColor":I
    :goto_ef
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v8

    .line 2090
    .local v8, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v8, :cond_120

    .line 2093
    move-object/from16 v37, v3

    .end local v3    # "pathString":Ljava/lang/String;
    .local v37, "pathString":Ljava/lang/String;
    instance-of v3, v8, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_108

    .line 2094
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2095
    move-object v3, v8

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    move-object/from16 v19, v3

    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .local v3, "strokeGradient":Landroid/graphics/Shader;
    goto :goto_11b

    .line 2096
    .end local v3    # "strokeGradient":Landroid/graphics/Shader;
    .restart local v19    # "strokeGradient":Landroid/graphics/Shader;
    :cond_108
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v3

    if-nez v3, :cond_119

    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_115

    goto :goto_119

    .line 2099
    :cond_115
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_11b

    .line 2097
    :cond_119
    :goto_119
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2101
    :goto_11b
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    .end local v22    # "strokeColor":I
    .local v3, "strokeColor":I
    goto :goto_124

    .line 2090
    .end local v37    # "pathString":Ljava/lang/String;
    .local v3, "pathString":Ljava/lang/String;
    .restart local v22    # "strokeColor":I
    :cond_120
    move-object/from16 v37, v3

    .end local v3    # "pathString":Ljava/lang/String;
    .restart local v37    # "pathString":Ljava/lang/String;
    move/from16 v3, v22

    .line 2104
    .end local v22    # "strokeColor":I
    .local v3, "strokeColor":I
    :goto_124
    move-object/from16 v22, v7

    move-object/from16 v38, v8

    .end local v7    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v8    # "strokeColors":Landroid/content/res/ComplexColor;
    .local v22, "fillColors":Landroid/content/res/ComplexColor;
    .local v38, "strokeColors":Landroid/content/res/ComplexColor;
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2105
    const-wide/16 v23, 0x0

    if-eqz v18, :cond_13b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v25

    move/from16 v39, v3

    move-wide/from16 v40, v25

    move/from16 v25, v2

    move-wide/from16 v2, v40

    goto :goto_141

    :cond_13b
    move/from16 v25, v2

    move/from16 v39, v3

    move-wide/from16 v2, v23

    .line 2104
    .end local v2    # "fillType":I
    .end local v3    # "strokeColor":I
    .local v25, "fillType":I
    .local v39, "strokeColor":I
    :goto_141
    invoke-static {v7, v8, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    .line 2106
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2107
    if-eqz v19, :cond_14c

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v23

    :cond_14c
    move-wide/from16 v7, v23

    .line 2106
    invoke-static {v2, v3, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    .line 2109
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2111
    .end local v13    # "fillAlpha":F
    .local v2, "fillAlpha":F
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2113
    .end local v9    # "strokeLineCap":I
    .local v3, "strokeLineCap":I
    const/16 v7, 0x9

    invoke-virtual {v1, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2115
    .end local v11    # "strokeLineJoin":I
    .local v7, "strokeLineJoin":I
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2117
    const/16 v8, 0xb

    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 2119
    .end local v10    # "strokeAlpha":F
    .local v8, "strokeAlpha":F
    const/4 v9, 0x4

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 2121
    const/4 v9, 0x6

    invoke-virtual {v1, v9, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 2123
    .end local v15    # "trimPathEnd":F
    .local v9, "trimPathEnd":F
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 2125
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 2127
    .end local v14    # "trimPathStart":F
    .local v10, "trimPathStart":F
    const/16 v11, 0xd

    move/from16 v13, v25

    .end local v25    # "fillType":I
    .local v13, "fillType":I
    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2129
    .end local v13    # "fillType":I
    .local v11, "fillType":I
    iget-wide v13, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v23, v13

    move/from16 v25, v6

    move/from16 v26, v39

    move/from16 v27, v8

    move/from16 v28, v12

    move/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v3

    move/from16 v35, v7

    move/from16 v36, v11

    invoke-static/range {v23 .. v36}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V

    .line 2132
    return-void

    .line 2035
    .end local v4    # "trimPathOffset":F
    .end local v5    # "strokeMiterLimit":F
    .end local v6    # "strokeWidth":F
    .end local v7    # "strokeLineJoin":I
    .end local v8    # "strokeAlpha":F
    .end local v9    # "trimPathEnd":F
    .end local v10    # "trimPathStart":F
    .end local v11    # "fillType":I
    .end local v12    # "fillColor":I
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v17    # "byteCount":I
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .end local v20    # "success":Z
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v37    # "pathString":Ljava/lang/String;
    .end local v38    # "strokeColors":Landroid/content/res/ComplexColor;
    .end local v39    # "strokeColor":I
    .local v2, "byteCount":I
    .local v3, "success":Z
    :cond_1ab
    move/from16 v17, v2

    move/from16 v20, v3

    .end local v2    # "byteCount":I
    .end local v3    # "success":Z
    .restart local v17    # "byteCount":I
    .restart local v20    # "success":Z
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 2152
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_10

    .line 2153
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2154
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2161
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_10
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2162
    .local v0, "fillCanApplyTheme":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 2164
    .local v1, "strokeCanApplyTheme":Z
    if-eqz v0, :cond_47

    .line 2165
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2166
    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_3a

    .line 2167
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    .line 2168
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    .line 2167
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    goto :goto_47

    .line 2169
    :cond_3a
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_47

    .line 2170
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2174
    :cond_47
    :goto_47
    if-eqz v1, :cond_72

    .line 2175
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2176
    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_65

    .line 2177
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    .line 2178
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    .line 2177
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    goto :goto_72

    .line 2179
    :cond_65
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_72

    .line 2180
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2183
    :cond_72
    :goto_72
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 4

    .line 2136
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2137
    return v1

    .line 2140
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2141
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 2142
    .local v2, "strokeCanApplyTheme":Z
    if-nez v0, :cond_19

    if-eqz v2, :cond_17

    goto :goto_19

    .line 2145
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 2143
    :cond_19
    :goto_19
    return v1
.end method

.method greylist-max-o getFillAlpha()F
    .registers 3

    .line 2242
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

    .line 2229
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

    .line 2012
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 2

    .line 2007
    const/16 v0, 0x108

    return v0
.end method

.method public bridge synthetic blacklist getPathData()Landroid/util/PathParser$PathData;
    .registers 2

    .line 1773
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getPathData()Landroid/util/PathParser$PathData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getPathName()Ljava/lang/String;
    .registers 2

    .line 1773
    invoke-super {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;->getPathName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1946
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    .line 1947
    .local v0, "p":Landroid/util/Property;
    if-eqz v0, :cond_7

    .line 1948
    return-object v0

    .line 1950
    :cond_7
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1951
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    .line 1954
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1959
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1960
    const/4 v0, -0x1

    return v0

    .line 1962
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method greylist-max-o getStrokeAlpha()F
    .registers 3

    .line 2217
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

    .line 2192
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

    .line 2205
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

    .line 2266
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

    .line 2278
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

    .line 2254
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
    .registers 3

    .line 1999
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_22

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2000
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_22

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2002
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1999
    :goto_23
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 2017
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2019
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2020
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2021
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1994
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
    .param p1, "stateSet"    # [I

    .line 1968
    const/4 v0, 0x0

    .line 1970
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_24

    .line 1971
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    .line 1972
    .local v1, "oldStrokeColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    .line 1973
    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1974
    .local v4, "newStrokeColor":I
    if-eq v1, v4, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v3

    :goto_1c
    or-int/2addr v0, v5

    .line 1975
    if-eq v1, v4, :cond_24

    .line 1976
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 1980
    .end local v1    # "oldStrokeColor":I
    .end local v4    # "newStrokeColor":I
    :cond_24
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_44

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_44

    .line 1981
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    .line 1982
    .local v1, "oldFillColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1983
    .local v4, "newFillColor":I
    if-eq v1, v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    or-int/2addr v0, v2

    .line 1984
    if-eq v1, v4, :cond_44

    .line 1985
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 1989
    .end local v1    # "oldFillColor":I
    .end local v4    # "newFillColor":I
    :cond_44
    return v0
.end method

.method greylist-max-o setFillAlpha(F)V
    .registers 4
    .param p1, "fillAlpha"    # F

    .line 2247
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2248
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillAlpha(JF)V

    .line 2250
    :cond_b
    return-void
.end method

.method greylist-max-o setFillColor(I)V
    .registers 4
    .param p1, "fillColor"    # I

    .line 2234
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2235
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2236
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2238
    :cond_e
    return-void
.end method

.method public bridge synthetic blacklist setPathData(Landroid/util/PathParser$PathData;)V
    .registers 2

    .line 1773
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->setPathData(Landroid/util/PathParser$PathData;)V

    return-void
.end method

.method greylist-max-o setStrokeAlpha(F)V
    .registers 4
    .param p1, "strokeAlpha"    # F

    .line 2222
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2223
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeAlpha(JF)V

    .line 2225
    :cond_b
    return-void
.end method

.method greylist-max-o setStrokeColor(I)V
    .registers 4
    .param p1, "strokeColor"    # I

    .line 2197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2198
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2199
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2201
    :cond_e
    return-void
.end method

.method greylist-max-o setStrokeWidth(F)V
    .registers 4
    .param p1, "strokeWidth"    # F

    .line 2210
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2211
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeWidth(JF)V

    .line 2213
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathEnd(F)V
    .registers 4
    .param p1, "trimPathEnd"    # F

    .line 2271
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2272
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathEnd(JF)V

    .line 2274
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathOffset(F)V
    .registers 4
    .param p1, "trimPathOffset"    # F

    .line 2283
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2284
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathOffset(JF)V

    .line 2286
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathStart(F)V
    .registers 4
    .param p1, "trimPathStart"    # F

    .line 2259
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2260
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathStart(JF)V

    .line 2262
    :cond_b
    return-void
.end method
