.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VGroup"
.end annotation


# static fields
.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x64

.field private static final greylist-max-o PIVOT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PIVOT_X_INDEX:I = 0x1

.field private static final greylist-max-o PIVOT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PIVOT_Y_INDEX:I = 0x2

.field private static final greylist-max-o ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ROTATION_INDEX:I = 0x0

.field private static final greylist-max-o SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o SCALE_X_INDEX:I = 0x3

.field private static final greylist-max-o SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o SCALE_Y_INDEX:I = 0x4

.field private static final greylist-max-o TRANSFORM_PROPERTY_COUNT:I = 0x7

.field private static final greylist-max-o TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRANSLATE_X_INDEX:I = 0x5

.field private static final greylist-max-o TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRANSLATE_Y_INDEX:I = 0x6

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
.field private greylist-max-o mChangingConfigurations:I

.field private final greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/VectorDrawable$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGroupName:Ljava/lang/String;

.field private greylist-max-o mIsStateful:Z

.field private final greylist-max-o mNativePtr:J

.field private greylist-max-o mThemeAttrs:[I

.field private greylist-max-o mTransform:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 16

    .line 1175
    nop

    .line 1176
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1177
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1178
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1179
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1181
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1182
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1175
    const-string/jumbo v1, "translateX"

    const-string/jumbo v3, "translateY"

    const-string/jumbo v5, "scaleX"

    const-string/jumbo v7, "scaleY"

    const-string/jumbo v9, "pivotX"

    const-string/jumbo v11, "pivotY"

    const-string/jumbo v13, "rotation"

    invoke-static/range {v1 .. v14}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    .line 1194
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    const-string/jumbo v1, "translateX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    .line 1207
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    const-string/jumbo v1, "translateY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    .line 1220
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    .line 1233
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    .line 1246
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    const-string/jumbo v1, "pivotX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    .line 1259
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    const-string/jumbo v1, "pivotY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    .line 1272
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    .line 1285
    sget-object v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    sget-object v5, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    sget-object v7, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    sget-object v9, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    sget-object v11, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    sget-object v13, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    const-string/jumbo v14, "rotation"

    sget-object v15, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    const-string/jumbo v2, "translateX"

    const-string/jumbo v4, "translateY"

    const-string/jumbo v6, "scaleX"

    const-string/jumbo v8, "scaleY"

    const-string/jumbo v10, "pivotX"

    const-string/jumbo v12, "pivotY"

    invoke-static/range {v2 .. v15}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1345
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1346
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1347
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1311
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1313
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1314
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1315
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1316
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1317
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1318
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    :cond_26
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1322
    iget-object p1, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1323
    const/4 v0, 0x0

    :goto_31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 1324
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1325
    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_4c

    .line 1326
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1327
    new-instance v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v2, v1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1328
    goto :goto_6f

    .line 1330
    :cond_4c
    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v2, :cond_58

    .line 1331
    new-instance v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    goto :goto_63

    .line 1332
    :cond_58
    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v2, :cond_72

    .line 1333
    new-instance v2, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    .line 1337
    :goto_63
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1338
    iget-object v1, v2, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v1, :cond_6f

    .line 1339
    iget-object v1, v2, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1335
    :cond_72
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1343
    :cond_7a
    return-void
.end method

.method static greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 2

    .line 1185
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1186
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1189
    :cond_15
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .registers 6

    .line 1363
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnAddChild(JJ)V

    .line 1364
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1366
    return-void
.end method

.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 1492
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_12

    .line 1493
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1495
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1496
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1499
    :cond_12
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1500
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 1501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1502
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1503
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1506
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v3

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1500
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1509
    :cond_36
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 7

    .line 1475
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1476
    return v1

    .line 1479
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_20

    .line 1481
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1482
    invoke-virtual {v5}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1483
    return v1

    .line 1480
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1487
    :cond_20
    return v3
.end method

.method public greylist-max-o getGroupName()Ljava/lang/String;
    .registers 2

    .line 1359
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1378
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 4

    .line 1466
    nop

    .line 1467
    const/16 v0, 0x64

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1468
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1470
    :cond_1c
    return v0
.end method

.method public greylist-max-o getPivotX()F
    .registers 3

    .line 1527
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetPivotX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getPivotY()F
    .registers 3

    .line 1540
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetPivotY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 3

    .line 1350
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1351
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Property;

    return-object p1

    .line 1354
    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getRotation()F
    .registers 3

    .line 1514
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetRotation(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getScaleX()F
    .registers 3

    .line 1553
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetScaleX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getScaleY()F
    .registers 3

    .line 1565
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetScaleY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getTranslateX()F
    .registers 3

    .line 1577
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTranslateX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getTranslateY()F
    .registers 3

    .line 1590
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTranslateY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 7

    .line 1450
    nop

    .line 1452
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1f

    .line 1454
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1455
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1456
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->hasFocusStateSpecified()Z

    move-result v4

    or-int/2addr v3, v4

    .line 1453
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1460
    :cond_1f
    return v3
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1383
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1385
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1386
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1387
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1445
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 8

    .line 1430
    nop

    .line 1432
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1f

    .line 1434
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1435
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1436
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1433
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1440
    :cond_1f
    return v3
.end method

.method public greylist setPivotX(F)V
    .registers 4

    .line 1533
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1534
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotX(JF)V

    .line 1536
    :cond_b
    return-void
.end method

.method public greylist setPivotY(F)V
    .registers 4

    .line 1546
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1547
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotY(JF)V

    .line 1549
    :cond_b
    return-void
.end method

.method public greylist setRotation(F)V
    .registers 4

    .line 1520
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1521
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRotation(JF)V

    .line 1523
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleX(F)V
    .registers 4

    .line 1558
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1559
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleX(JF)V

    .line 1561
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleY(F)V
    .registers 4

    .line 1570
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1571
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleY(JF)V

    .line 1573
    :cond_b
    return-void
.end method

.method public greylist setTranslateX(F)V
    .registers 4

    .line 1583
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1584
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateX(JF)V

    .line 1586
    :cond_b
    return-void
.end method

.method public greylist setTranslateY(F)V
    .registers 4

    .line 1596
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1597
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateY(JF)V

    .line 1599
    :cond_b
    return-void
.end method

.method public greylist-max-o setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .registers 4

    .line 1370
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1371
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1372
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1374
    :cond_1a
    return-void
.end method

.method greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 15

    .line 1391
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1394
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1395
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x7

    if-nez v0, :cond_18

    .line 1398
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    .line 1400
    :cond_18
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetGroupProperties(J[FI)Z

    move-result v0

    .line 1401
    if-eqz v0, :cond_76

    .line 1404
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1406
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 1408
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1410
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 1412
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v4, 0x4

    aget v0, v0, v4

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 1414
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v0, v0, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 1416
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 1419
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1420
    if-eqz p1, :cond_70

    .line 1421
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1422
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    .line 1424
    :cond_70
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static/range {v4 .. v12}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateGroupProperties(JFFFFFFF)V

    .line 1426
    return-void

    .line 1402
    :cond_76
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error: inconsistent property count"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
