.class final Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;
.super Ljava/lang/Record;
.source "DisplayTopology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NodeDerivedInfo"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "node",
        "left",
        "top",
        "parent",
        "depth"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Landroid/hardware/display/DisplayTopology$TreeNode;,
        F,
        F,
        Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;,
        I
    }
.end annotation


# instance fields
.field private final blacklist depth:I

.field private final blacklist left:F

.field private final blacklist node:Landroid/hardware/display/DisplayTopology$TreeNode;

.field private final blacklist parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

.field private final blacklist top:F


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    if-eqz v0, :cond_32

    check-cast p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    iget v1, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    iget v1, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32

    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    iget v1, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v1, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    iget-object p1, p1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    iget v4, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdepth(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetparent(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F
    .registers 1

    iget p0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    return p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;FFLandroid/hardware/display/DisplayTopology$NodeDerivedInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "left",
            "top",
            "parent",
            "depth"
        }
    .end annotation

    .line 689
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    iput p2, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    iput p3, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    iput-object p4, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    iput p5, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;FFLandroid/hardware/display/DisplayTopology$NodeDerivedInfo;ILandroid/hardware/display/DisplayTopology-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;FFLandroid/hardware/display/DisplayTopology$NodeDerivedInfo;I)V

    return-void
.end method


# virtual methods
.method blacklist absoluteBounds()Landroid/graphics/RectF;
    .registers 7

    .line 692
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    iget v2, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    iget v3, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    iget-object v4, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    iget-object v5, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public blacklist depth()I
    .registers 2

    .line 689
    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 689
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 689
    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->depth:I

    iget v1, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    iget v2, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    iget-object v3, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v4, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo$$ExternalSyntheticRecord0;->m(IFFLjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist left()F
    .registers 2

    .line 689
    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->left:F

    return v0
.end method

.method public blacklist node()Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->node:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object v0
.end method

.method public blacklist parent()Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;
    .registers 2

    .line 689
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->parent:Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 689
    invoke-direct {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    const-string v2, "node;left;top;parent;depth"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist top()F
    .registers 2

    .line 689
    iget v0, p0, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->top:F

    return v0
.end method
