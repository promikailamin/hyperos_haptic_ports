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

.method static bridge synthetic blacklist -$$Nest$sfgetPIVOT_X()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPIVOT_Y()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetROTATION()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSCALE_X()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSCALE_Y()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRANSLATE_X()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRANSLATE_Y()Landroid/util/Property;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1196
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 1219
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    const-string/jumbo v1, "translateX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    .line 1232
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    const-string/jumbo v1, "translateY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    .line 1245
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    .line 1258
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    .line 1271
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    const-string/jumbo v1, "pivotX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    .line 1284
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    const-string/jumbo v1, "pivotY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    .line 1297
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$8;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    .line 1310
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$9;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1373
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1374
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1375
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .registers 8
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
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

    .line 1339
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1341
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1342
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1343
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1344
    iget v1, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1345
    if-eqz v0, :cond_22

    .line 1346
    invoke-virtual {p2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    :cond_22
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1350
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1351
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 1352
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1353
    .local v2, "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v3, :cond_49

    .line 1354
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1355
    .local v3, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v4, v3, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1356
    .end local v3    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    goto :goto_6e

    .line 1358
    :cond_49
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v3, :cond_56

    .line 1359
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .local v3, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_62

    .line 1360
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_56
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v3, :cond_71

    .line 1361
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    .line 1365
    .restart local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_62
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1366
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v4, :cond_6e

    .line 1367
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_6e
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1363
    .restart local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_71
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unknown object in the tree!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1371
    .end local v1    # "i":I
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_79
    return-void
.end method

.method static greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 1210
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1211
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1214
    :cond_13
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .registers 6
    .param p1, "child"    # Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1391
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnAddChild(JJ)V

    .line 1392
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1394
    return-void
.end method

.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1520
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_10

    .line 1521
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1523
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1527
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_10
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1528
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_17
    if-ge v1, v2, :cond_34

    .line 1529
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1530
    .local v3, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1531
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1534
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1528
    .end local v3    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1537
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_34
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 7

    .line 1503
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1504
    return v1

    .line 1507
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1508
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_d
    if-ge v2, v3, :cond_1f

    .line 1509
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1510
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1511
    return v1

    .line 1508
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1515
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o getGroupName()Ljava/lang/String;
    .registers 2

    .line 1387
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1406
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 4

    .line 1494
    const/16 v0, 0x64

    .line 1495
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 1496
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1495
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1498
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public greylist-max-o getPivotX()F
    .registers 3

    .line 1555
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

    .line 1568
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
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1378
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1379
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    return-object v0

    .line 1382
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getRotation()F
    .registers 3

    .line 1542
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

    .line 1581
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

    .line 1593
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

    .line 1605
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

    .line 1618
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

    .line 1478
    const/4 v0, 0x0

    .line 1480
    .local v0, "result":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1481
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 1482
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1483
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1484
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->hasFocusStateSpecified()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1481
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1488
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1e
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1411
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1413
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1414
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1415
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1473
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 8
    .param p1, "stateSet"    # [I

    .line 1458
    const/4 v0, 0x0

    .line 1460
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1461
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 1462
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1463
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1464
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1461
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1468
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1e
    return v0
.end method

.method public greylist setPivotX(F)V
    .registers 4
    .param p1, "pivotX"    # F

    .line 1561
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1562
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotX(JF)V

    .line 1564
    :cond_b
    return-void
.end method

.method public greylist setPivotY(F)V
    .registers 4
    .param p1, "pivotY"    # F

    .line 1574
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1575
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotY(JF)V

    .line 1577
    :cond_b
    return-void
.end method

.method public greylist setRotation(F)V
    .registers 4
    .param p1, "rotation"    # F

    .line 1548
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1549
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRotation(JF)V

    .line 1551
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleX(F)V
    .registers 4
    .param p1, "scaleX"    # F

    .line 1586
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1587
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleX(JF)V

    .line 1589
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleY(F)V
    .registers 4
    .param p1, "scaleY"    # F

    .line 1598
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1599
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleY(JF)V

    .line 1601
    :cond_b
    return-void
.end method

.method public greylist setTranslateX(F)V
    .registers 4
    .param p1, "translateX"    # F

    .line 1611
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1612
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateX(JF)V

    .line 1614
    :cond_b
    return-void
.end method

.method public greylist setTranslateY(F)V
    .registers 4
    .param p1, "translateY"    # F

    .line 1624
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1625
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateY(JF)V

    .line 1627
    :cond_b
    return-void
.end method

.method public greylist-max-o setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .registers 4
    .param p1, "treeRoot"    # Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1398
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1400
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1399
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1402
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 22
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1422
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1423
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v3, 0x7

    if-nez v2, :cond_1c

    .line 1426
    new-array v2, v3, [F

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    .line 1428
    :cond_1c
    iget-wide v4, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    invoke-static {v4, v5, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetGroupProperties(J[FI)Z

    move-result v2

    .line 1429
    .local v2, "success":Z
    if-eqz v2, :cond_83

    .line 1432
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1434
    .local v4, "rotate":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .line 1436
    .local v16, "pivotX":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .line 1438
    .local v17, "pivotY":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .line 1440
    .local v18, "scaleX":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .line 1442
    .local v19, "scaleY":F
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v6, v7, v6

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1444
    .local v6, "translateX":F
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v7, v8, v7

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 1447
    .local v3, "translateY":F
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1448
    .local v5, "groupName":Ljava/lang/String;
    if-eqz v5, :cond_72

    .line 1449
    iput-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1450
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v7, v8, v5}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    .line 1452
    :cond_72
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    move v9, v4

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move v14, v6

    move v15, v3

    invoke-static/range {v7 .. v15}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateGroupProperties(JFFFFFFF)V

    .line 1454
    return-void

    .line 1430
    .end local v3    # "translateY":F
    .end local v4    # "rotate":F
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v6    # "translateX":F
    .end local v16    # "pivotX":F
    .end local v17    # "pivotY":F
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    :cond_83
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error: inconsistent property count"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
