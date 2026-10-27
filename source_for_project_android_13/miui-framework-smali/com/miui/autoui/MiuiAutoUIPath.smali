.class public Lcom/miui/autoui/MiuiAutoUIPath;
.super Lcom/miui/autoui/DefaultAutoUIPath;
.source "MiuiAutoUIPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autoui/MiuiAutoUIPath$SetOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$OpOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$Transform2Operation;,
        Lcom/miui/autoui/MiuiAutoUIPath$Transform1Operation;,
        Lcom/miui/autoui/MiuiAutoUIPath$SetLastPointOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$OffsetOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$ResetOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddPath2Operation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddPath1Operation;,
        Lcom/miui/autoui/MiuiAutoUIPath$LineToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$MoveToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$RMoveToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$RLineToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$QuadToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$RQuadToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$RCubicToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$CubicToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$ArcToOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddOvalOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddCircleOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;,
        Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;,
        Lcom/miui/autoui/MiuiAutoUIPath$Op;,
        Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;,
        Lcom/miui/autoui/MiuiAutoUIPath$Operation;
    }
.end annotation


# static fields
.field private static final blacklist OP_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RADII_SIZE:I = 0x8

.field private static final blacklist RADII_STEP:I = 0x2

.field private static final blacklist ROUND_RECT_OP_NAME:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AutoUI_MiuiAutoUIPath"


# instance fields
.field private blacklist mNeedClone:Z

.field private final blacklist mOpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autoui/MiuiAutoUIPath$Op;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetOP_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/miui/autoui/MiuiAutoUIPath;->OP_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$1;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$1;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath;->ROUND_RECT_OP_NAME:Ljava/util/Set;

    .line 27
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$AutoUIPathMap;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath;->OP_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/miui/autoui/DefaultAutoUIPath;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mOpList:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mNeedClone:Z

    return-void
.end method

.method public static blacklist addRoundRect(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 12
    .param p0, "dst"    # Landroid/graphics/Path;
    .param p1, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 155
    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloatArray(Ljava/lang/Object;)[F

    move-result-object v0

    .line 156
    .local v0, "radii":[F
    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_61

    .line 159
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 160
    .local v1, "newRadii":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v1

    if-ge v2, v3, :cond_24

    .line 161
    aget v3, v1, v2

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getCompRate()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 160
    add-int/lit8 v2, v2, 0x2

    goto :goto_15

    .line 163
    .end local v2    # "i":I
    :cond_24
    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 164
    invoke-static {v2}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/miui/autoui/MiuiAutoUIPath;->toPathDirection(Ljava/lang/Object;)Landroid/graphics/Path$Direction;

    move-result-object v9

    .line 163
    move-object v3, p0

    move-object v8, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 165
    return-void

    .line 157
    .end local v1    # "newRadii":[F
    :cond_61
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "radii[] needs 8 values"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist checkArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;I)V
    .registers 4
    .param p0, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 82
    if-nez p1, :cond_3

    .line 83
    return-void

    .line 85
    :cond_3
    invoke-static {p0}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 88
    invoke-static {p0}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-lt v0, p1, :cond_11

    .line 91
    return-void

    .line 89
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path op size is Illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path op is Illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toBoolean(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 182
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 185
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to boolean"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toFloat(Ljava/lang/Object;)F
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 168
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 169
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 171
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to float"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toFloatArray(Ljava/lang/Object;)[F
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 189
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 190
    move-object v0, p0

    check-cast v0, [F

    return-object v0

    .line 192
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to float[]"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toInt(Ljava/lang/Object;)I
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 175
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 176
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 178
    :cond_c
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to int"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toMatrix(Ljava/lang/Object;)Landroid/graphics/Matrix;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 224
    instance-of v0, p0, Landroid/graphics/Matrix;

    if-eqz v0, :cond_8

    .line 225
    move-object v0, p0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0

    .line 227
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to Matrix"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toPath(Ljava/lang/Object;)Landroid/graphics/Path;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 196
    instance-of v0, p0, Landroid/graphics/Path;

    if-eqz v0, :cond_8

    .line 197
    move-object v0, p0

    check-cast v0, Landroid/graphics/Path;

    return-object v0

    .line 199
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to Path"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toPathDirection(Ljava/lang/Object;)Landroid/graphics/Path$Direction;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 217
    instance-of v0, p0, Landroid/graphics/Path$Direction;

    if-eqz v0, :cond_8

    .line 218
    move-object v0, p0

    check-cast v0, Landroid/graphics/Path$Direction;

    return-object v0

    .line 220
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to Path.Direction"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toPathFillType(Ljava/lang/Object;)Landroid/graphics/Path$FillType;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 210
    instance-of v0, p0, Landroid/graphics/Path$FillType;

    if-eqz v0, :cond_8

    .line 211
    move-object v0, p0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0

    .line 213
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to Path.FillType"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toPathOp(Ljava/lang/Object;)Landroid/graphics/Path$Op;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 203
    instance-of v0, p0, Landroid/graphics/Path$Op;

    if-eqz v0, :cond_8

    .line 204
    move-object v0, p0

    check-cast v0, Landroid/graphics/Path$Op;

    return-object v0

    .line 206
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Object can\'t cast to Path.Op"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs blacklist addOp(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 34
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mOpList:Ljava/util/List;

    new-instance v1, Lcom/miui/autoui/MiuiAutoUIPath$Op;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/miui/autoui/MiuiAutoUIPath$Op-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/miui/autoui/MiuiAutoUIPath;->ROUND_RECT_OP_NAME:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mNeedClone:Z

    .line 38
    :cond_20
    return-void

    .line 40
    :cond_21
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUIPath;->addOp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 45
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mOpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mNeedClone:Z

    .line 48
    return-void

    .line 50
    :cond_13
    invoke-super {p0}, Lcom/miui/autoui/DefaultAutoUIPath;->clear()V

    .line 51
    return-void
.end method

.method public blacklist clonePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;

    .line 55
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 56
    iget-boolean v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mNeedClone:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mOpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2c

    .line 59
    :cond_17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 61
    .local v0, "dst":Landroid/graphics/Path;
    :try_start_1c
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUIPath;->mOpList:Ljava/util/List;

    new-instance v2, Lcom/miui/autoui/MiuiAutoUIPath$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/autoui/MiuiAutoUIPath$2;-><init>(Lcom/miui/autoui/MiuiAutoUIPath;Landroid/graphics/Path;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27

    .line 72
    return-object v0

    .line 73
    :catch_27
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    return-object p1

    .line 57
    .end local v0    # "dst":Landroid/graphics/Path;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    return-object p1

    .line 78
    :cond_2d
    invoke-super {p0, p1}, Lcom/miui/autoui/DefaultAutoUIPath;->clonePath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
