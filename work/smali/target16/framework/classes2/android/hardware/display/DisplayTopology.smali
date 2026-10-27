.class public final Landroid/hardware/display/DisplayTopology;
.super Ljava/lang/Object;
.source "DisplayTopology.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopology$TreeNode;,
        Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;,
        Landroid/hardware/display/DisplayTopology$Position;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MAX_GAP:F = 5.0f

.field public static final blacklist POSITION_BOTTOM:I = 0x3

.field public static final blacklist POSITION_LEFT:I = 0x0

.field public static final blacklist POSITION_RIGHT:I = 0x2

.field public static final blacklist POSITION_TOP:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "DisplayTopology"


# instance fields
.field private blacklist mPrimaryDisplayId:I

.field private blacklist mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    nop

    .line 84
    new-instance v0, Landroid/hardware/display/DisplayTopology$1;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DisplayTopology;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V
    .registers 4

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 138
    iput-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 139
    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p1, :cond_18

    .line 144
    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 145
    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 148
    :cond_18
    iput p2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 155
    sget-object v0, Landroid/hardware/display/DisplayTopology$TreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 156
    return-void
.end method

.method private blacklist clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V
    .registers 7

    .line 869
    if-nez p1, :cond_3

    .line 870
    return-void

    .line 872
    :cond_3
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 873
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    goto :goto_48

    .line 876
    :cond_25
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5c

    .line 877
    :cond_33
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    .line 878
    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    .line 877
    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_5c

    .line 874
    :cond_48
    :goto_48
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    .line 875
    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v4

    .line 874
    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 880
    :cond_5c
    :goto_5c
    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 881
    goto :goto_b

    .line 882
    :cond_60
    return-void
.end method

.method public static blacklist dpToPx(FI)F
    .registers 2

    .line 114
    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static blacklist findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 4

    .line 674
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 675
    return-object v0

    .line 677
    :cond_4
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    if-ne v1, p0, :cond_b

    .line 678
    return-object p1

    .line 680
    :cond_b
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 681
    invoke-static {p0, v1}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_26

    .line 683
    return-object v1

    .line 685
    :cond_26
    goto :goto_13

    .line 686
    :cond_27
    return-object v0
.end method

.method private blacklist findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5f

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5f

    .line 749
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3c

    .line 750
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_3c
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_5f

    .line 753
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_5f
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    .line 757
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_94

    .line 758
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_94
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_b7

    .line 761
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_b7
    return-object v0
.end method

.method private static blacklist findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "F)",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 648
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 651
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    packed-switch v3, :pswitch_data_86

    .line 656
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 655
    :pswitch_41
    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v3

    add-float/2addr v3, p1

    goto :goto_5e

    .line 654
    :pswitch_47
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_5e

    .line 652
    :pswitch_58
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v3

    sub-float v3, p1, v3

    .line 660
    :goto_5e
    invoke-static {v2, v3}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v2

    .line 662
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_83

    .line 663
    new-instance v0, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 665
    :cond_83
    goto :goto_11

    .line 666
    :cond_84
    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_58
        :pswitch_47
        :pswitch_41
        :pswitch_47
    .end packed-switch
.end method

.method private static blacklist floatEquals(FF)Z
    .registers 3

    .line 836
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_1f

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_10
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private blacklist getInfo()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v1, :cond_18

    .line 703
    new-instance v2, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    iget-object v3, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;FFLandroid/hardware/display/DisplayTopology$NodeDerivedInfo;ILandroid/hardware/display/DisplayTopology-IA;)V

    .line 705
    invoke-static {v0, v2}, Landroid/hardware/display/DisplayTopology;->getSubTreeInfo(Ljava/util/List;Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)V

    .line 707
    :cond_18
    return-object v0
.end method

.method private static blacklist getSubTreeInfo(Ljava/util/List;Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;",
            ">;",
            "Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;",
            ")V"
        }
    .end annotation

    .line 717
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 719
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 722
    :pswitch_23
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v1

    goto :goto_36

    .line 721
    :pswitch_28
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v1

    goto :goto_36

    .line 720
    :pswitch_31
    invoke-virtual {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v1

    neg-float v1, v1

    .line 724
    :goto_36
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    packed-switch v2, :pswitch_data_7a

    .line 727
    :pswitch_3d
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v2

    goto :goto_50

    .line 726
    :pswitch_42
    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v2

    goto :goto_50

    .line 725
    :pswitch_4b
    invoke-virtual {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v2

    neg-float v2, v2

    .line 729
    :goto_50
    move v4, v2

    new-instance v2, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result v5

    add-float/2addr v5, v1

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetdepth(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    move v4, v5

    move v5, v1

    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;FFLandroid/hardware/display/DisplayTopology$NodeDerivedInfo;ILandroid/hardware/display/DisplayTopology-IA;)V

    .line 731
    invoke-static {p0, v2}, Landroid/hardware/display/DisplayTopology;->getSubTreeInfo(Ljava/util/List;Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)V

    .line 732
    goto :goto_f

    .line 733
    :cond_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_31
        :pswitch_23
        :pswitch_28
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_3d
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic blacklist lambda$getGraph$2(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I
    .registers 4

    .line 775
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result v0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 776
    if-eqz v0, :cond_f

    .line 777
    return v0

    .line 779
    :cond_f
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result p0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$normalize$0(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I
    .registers 6

    .line 437
    if-ne p0, p1, :cond_4

    .line 438
    const/4 p0, 0x0

    return p0

    .line 441
    :cond_4
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetdepth(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I

    move-result v0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetdepth(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 442
    if-eqz v0, :cond_13

    .line 443
    return v0

    .line 446
    :cond_13
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetleft(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgettop(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)F

    move-result p0

    float-to-double p0, p0

    .line 447
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    .line 446
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$normalize$1(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/hardware/display/DisplayTopology$TreeNode;)I
    .registers 2

    .line 558
    invoke-static {p0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p0

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static blacklist pxToDp(FI)F
    .registers 3

    .line 104
    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public blacklist addDisplay(IIII)V
    .registers 13

    .line 199
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v1}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 200
    return-void

    .line 202
    :cond_9
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_1d

    .line 203
    new-instance v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIF)V

    iput-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 206
    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_71

    .line 207
    :cond_1d
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 209
    int-to-float v1, p2

    invoke-static {v1, p4}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v1

    .line 210
    iget-object v4, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    div-float/2addr v1, v6

    sub-float v7, v4, v1

    .line 211
    new-instance v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIF)V

    .line 213
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    goto :goto_71

    .line 215
    :cond_4e
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v0

    invoke-static {v1, v0}, Landroid/hardware/display/DisplayTopology;->findRightMostDisplay(Landroid/hardware/display/DisplayTopology$TreeNode;F)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 216
    new-instance v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIF)V

    .line 219
    invoke-static {v7}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_71
    return-void
.end method

.method public blacklist allNodesIdMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            ">;"
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 848
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_a

    .line 849
    return-object v0

    .line 852
    :cond_a
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 853
    iget-object v2, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 856
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 857
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 859
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 861
    return-object v0
.end method

.method public blacklist copy()Landroid/hardware/display/DisplayTopology;
    .registers 4

    .line 570
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->copy()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 571
    :goto_c
    new-instance v1, Landroid/hardware/display/DisplayTopology;

    iget v2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, v2}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 606
    const-string v0, "DisplayTopology:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v0, "Topology tree:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v0, :cond_39

    .line 614
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 615
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 616
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 618
    :cond_39
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 622
    instance-of v0, p1, Landroid/hardware/display/DisplayTopology;

    if-nez v0, :cond_6

    .line 623
    const/4 p1, 0x0

    return p1

    .line 625
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAbsoluteBounds()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Landroid/hardware/display/DisplayTopology;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 582
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 583
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    .line 584
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 585
    goto :goto_d

    .line 586
    :cond_29
    return-object v1
.end method

.method public blacklist getGraph()Landroid/hardware/display/DisplayTopologyGraph;
    .registers 18

    .line 773
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;->getInfo()Ljava/util/List;

    move-result-object v1

    .line 774
    new-instance v2, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda2;-><init>()V

    .line 781
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 784
    nop

    .line 785
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    .line 786
    const/4 v5, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 787
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    .line 788
    new-instance v7, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v8

    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v9

    .line 789
    invoke-virtual {v6}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;-><init>(IILandroid/graphics/RectF;)V

    aput-object v7, v3, v5

    .line 786
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 792
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/List;

    .line 793
    const/4 v6, 0x0

    :goto_47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_61

    .line 794
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v7, v5, v6

    .line 793
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 798
    :cond_61
    const/4 v6, 0x0

    :goto_62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_106

    .line 799
    aget-object v7, v3, v6

    .line 800
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 801
    aget-object v9, v5, v6

    .line 802
    add-int/lit8 v6, v6, 0x1

    move v10, v6

    :goto_79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_100

    .line 803
    aget-object v11, v3, v10

    .line 804
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    invoke-virtual {v12}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v12

    .line 805
    aget-object v13, v5, v10

    .line 807
    invoke-direct {v0, v8, v12}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_95
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_be

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 808
    new-instance v4, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    move-object/from16 v16, v1

    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 809
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-direct {v4, v11, v1, v15}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;-><init>(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;IF)V

    .line 808
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    move-object/from16 v1, v16

    goto :goto_95

    .line 811
    :cond_be
    move-object/from16 v16, v1

    invoke-direct {v0, v12, v8}, Landroid/hardware/display/DisplayTopology;->findDisplayPlacements(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 812
    new-instance v11, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    iget-object v14, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    .line 813
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v11, v7, v14, v4}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;-><init>(Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;IF)V

    .line 812
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    goto :goto_c8

    .line 815
    :cond_ed
    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    const v11, 0x38d1b717    # 1.0E-4f

    add-float/2addr v4, v11

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_fa

    .line 817
    goto :goto_102

    .line 802
    :cond_fa
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_79

    :cond_100
    move-object/from16 v16, v1

    .line 798
    :goto_102
    move-object/from16 v1, v16

    goto/16 :goto_62

    .line 822
    :cond_106
    const/4 v1, 0x0

    :goto_107
    if-ge v1, v2, :cond_11c

    .line 823
    aget-object v4, v3, v1

    aget-object v6, v5, v1

    const/4 v7, 0x0

    new-array v8, v7, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    .line 824
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;

    .line 823
    invoke-virtual {v4, v6}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->setAdjacentEdges([Landroid/hardware/display/DisplayTopologyGraph$AdjacentEdge;)V

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    .line 826
    :cond_11c
    new-instance v1, Landroid/hardware/display/DisplayTopologyGraph;

    iget v0, v0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-direct {v1, v0, v3}, Landroid/hardware/display/DisplayTopologyGraph;-><init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V

    return-object v1
.end method

.method public blacklist getPrimaryDisplayId()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    return v0
.end method

.method public blacklist getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    return-object v0
.end method

.method public blacklist hasMultipleDisplays()Z
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 630
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist normalize()V
    .registers 18

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v1, :cond_7

    .line 427
    return-void

    .line 429
    :cond_7
    iget-object v1, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayTopology;->clampOffsets(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 431
    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;->getInfo()Ljava/util/List;

    move-result-object v0

    .line 436
    new-instance v1, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda0;-><init>()V

    .line 449
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 451
    const/4 v1, 0x1

    move v2, v1

    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b8

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    .line 453
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v4

    .line 454
    invoke-virtual {v3}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 455
    nop

    .line 456
    nop

    .line 457
    nop

    .line 459
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    move v10, v7

    move v11, v10

    :goto_37
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ge v9, v2, :cond_c3

    .line 460
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    .line 461
    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v15

    .line 463
    invoke-static {v15, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    if-nez v16, :cond_4d

    .line 464
    goto/16 :goto_bf

    .line 469
    :cond_4d
    iget v8, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v7

    if-ltz v8, :cond_59

    .line 470
    iget v8, v15, Landroid/graphics/RectF;->right:F

    iget v10, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v10

    goto :goto_5e

    .line 471
    :cond_59
    iget v8, v15, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v10

    .line 472
    :goto_5e
    iget v10, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_6a

    .line 473
    iget v10, v15, Landroid/graphics/RectF;->bottom:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    goto :goto_6f

    .line 474
    :cond_6a
    iget v10, v15, Landroid/graphics/RectF;->top:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    .line 475
    :goto_6f
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v11, v11, v15

    if-gtz v11, :cond_9c

    .line 476
    iget v10, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v8

    iput v10, v5, Landroid/graphics/RectF;->left:F

    .line 477
    iget v10, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v8

    iput v10, v5, Landroid/graphics/RectF;->right:F

    .line 479
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    if-eq v10, v1, :cond_91

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    if-ne v10, v12, :cond_99

    .line 481
    :cond_91
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v10

    add-float/2addr v10, v8

    invoke-static {v4, v10}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 483
    :cond_99
    move v11, v7

    move v10, v8

    goto :goto_bc

    .line 485
    :cond_9c
    iget v8, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v10

    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 486
    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v10

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 488
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v8

    if-eqz v8, :cond_b2

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v8

    if-ne v8, v13, :cond_ba

    .line 490
    :cond_b2
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;)F

    move-result v8

    add-float/2addr v8, v10

    invoke-static {v4, v8}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 492
    :cond_ba
    move v11, v10

    move v10, v7

    .line 495
    :goto_bc
    nop

    .line 496
    nop

    .line 497
    move-object v8, v14

    .line 459
    :goto_bf
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_37

    .line 502
    :cond_c3
    if-nez v8, :cond_c7

    .line 504
    goto/16 :goto_1b3

    .line 506
    :cond_c7
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetparent(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    move-result-object v3

    .line 507
    invoke-virtual {v3}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 508
    if-ne v3, v8, :cond_d3

    .line 512
    goto/16 :goto_1b3

    .line 515
    :cond_d3
    nop

    .line 517
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v14

    const-string v15, "Unexpected value: "

    packed-switch v14, :pswitch_data_1da

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :pswitch_f8
    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    iget v1, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v14, v1}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v1

    goto :goto_11b

    .line 519
    :pswitch_101
    iget v1, v9, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v14}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v1

    goto :goto_11b

    .line 520
    :pswitch_10a
    iget v1, v9, Landroid/graphics/RectF;->top:F

    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v14}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v1

    goto :goto_11b

    .line 518
    :pswitch_113
    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v14, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v14}, Landroid/hardware/display/DisplayTopology;->floatEquals(FF)Z

    move-result v1

    .line 526
    :goto_11b
    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v14

    const v16, 0x38d1b717    # 1.0E-4f

    packed-switch v14, :pswitch_data_1e6

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :pswitch_140
    iget v14, v5, Landroid/graphics/RectF;->right:F

    add-float v14, v14, v16

    iget v15, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_156

    iget v14, v5, Landroid/graphics/RectF;->left:F

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float v9, v9, v16

    cmpg-float v9, v14, v9

    if-gez v9, :cond_156

    const/4 v9, 0x1

    goto :goto_16f

    :cond_156
    move v9, v6

    goto :goto_16f

    .line 528
    :pswitch_158
    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    add-float v14, v14, v16

    iget v15, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_16e

    iget v14, v5, Landroid/graphics/RectF;->top:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float v9, v9, v16

    cmpg-float v9, v14, v9

    if-gez v9, :cond_16e

    const/4 v9, 0x1

    goto :goto_16f

    :cond_16e
    move v9, v6

    .line 533
    :goto_16f
    and-int/2addr v1, v9

    .line 537
    if-nez v1, :cond_1b3

    .line 539
    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    nop

    .line 541
    invoke-virtual {v8}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->absoluteBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 542
    invoke-static {v8}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    cmpl-float v3, v10, v7

    if-eqz v3, :cond_1a0

    .line 545
    if-lez v3, :cond_194

    move v6, v13

    :cond_194
    invoke-static {v4, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 546
    iget v3, v5, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    invoke-static {v4, v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    goto :goto_1b3

    .line 548
    :cond_1a0
    cmpl-float v3, v11, v7

    if-eqz v3, :cond_1b3

    .line 549
    if-lez v3, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    const/4 v12, 0x1

    :goto_1a8
    invoke-static {v4, v12}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 550
    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    invoke-static {v4, v3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 451
    :cond_1b3
    :goto_1b3
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_1a

    .line 557
    :cond_1b8
    new-instance v1, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/hardware/display/DisplayTopology$$ExternalSyntheticLambda1;-><init>()V

    .line 560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;

    .line 561
    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;->-$$Nest$fgetnode(Landroid/hardware/display/DisplayTopology$NodeDerivedInfo;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 562
    goto :goto_1c1

    .line 563
    :cond_1d9
    return-void

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_113
        :pswitch_10a
        :pswitch_101
        :pswitch_f8
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_158
        :pswitch_140
        :pswitch_158
        :pswitch_140
    .end packed-switch
.end method

.method public blacklist rearrange(Ljava/util/Map;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-nez v2, :cond_9

    .line 302
    return-void

    .line 304
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    iget-object v3, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->allNodesIdMap()Ljava/util/Map;

    move-result-object v3

    .line 312
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v4, v5, :cond_1a8

    .line 316
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 317
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 318
    invoke-static {v5}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 319
    goto :goto_32

    .line 321
    :cond_46
    iget-object v4, v0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_53
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a4

    .line 335
    nop

    .line 336
    nop

    .line 338
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v7, v6

    move-object v6, v5

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_172

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 339
    invoke-static {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 340
    iget v11, v10, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v12

    add-float/2addr v11, v12

    .line 341
    iget v12, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v13

    add-float/2addr v12, v13

    .line 342
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_94
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_166

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 343
    invoke-static {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    .line 344
    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v16

    add-float v0, v0, v16

    .line 345
    move-object/from16 v16, v4

    iget v4, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v17

    add-float v4, v4, v17

    .line 352
    nop

    .line 353
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v19, v5

    iget v5, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v17, v0

    .line 354
    nop

    .line 355
    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v17, v4

    iget v4, v15, Landroid/graphics/PointF;->y:F

    move/from16 v20, v5

    iget v5, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v5, v20, v4

    .line 360
    cmpl-float v4, v0, v5

    move/from16 v20, v4

    const/4 v4, 0x0

    if-lez v20, :cond_111

    .line 371
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 372
    iget v4, v10, Landroid/graphics/PointF;->y:F

    iget v5, v15, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_ff

    .line 373
    iget v4, v15, Landroid/graphics/PointF;->y:F

    sub-float v4, v12, v4

    .line 374
    const/4 v5, 0x1

    goto :goto_104

    .line 376
    :cond_ff
    iget v4, v10, Landroid/graphics/PointF;->y:F

    sub-float v4, v17, v4

    .line 377
    const/4 v5, 0x3

    .line 379
    :goto_104
    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v15

    move v15, v5

    move v5, v4

    move v4, v0

    move/from16 v0, v17

    goto :goto_134

    .line 381
    :cond_111
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 382
    iget v0, v10, Landroid/graphics/PointF;->x:F

    iget v5, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_123

    .line 383
    iget v0, v15, Landroid/graphics/PointF;->x:F

    sub-float v0, v11, v0

    .line 384
    const/4 v5, 0x0

    goto :goto_128

    .line 386
    :cond_123
    iget v0, v10, Landroid/graphics/PointF;->x:F

    sub-float v0, v18, v0

    .line 387
    const/4 v5, 0x2

    .line 389
    :goto_128
    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/PointF;->y:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v15

    move v15, v5

    move v5, v4

    move v4, v0

    move/from16 v0, v17

    .line 392
    :goto_134
    move-object/from16 v17, v6

    move-wide/from16 v20, v7

    float-to-double v6, v0

    move-object v0, v10

    move v8, v11

    float-to-double v10, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    .line 393
    cmpl-double v7, v5, v20

    if-ltz v7, :cond_152

    .line 394
    move-object v10, v0

    move v11, v8

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v19

    move-wide/from16 v7, v20

    move-object/from16 v0, p0

    goto/16 :goto_94

    .line 397
    :cond_152
    nop

    .line 398
    nop

    .line 399
    nop

    .line 402
    invoke-static {v9, v15}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmPosition(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 403
    invoke-static {v9, v4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmOffset(Landroid/hardware/display/DisplayTopology$TreeNode;F)V

    .line 404
    move-object v10, v0

    move v11, v8

    move-object/from16 v4, v16

    move-object/from16 v0, p0

    move-wide v7, v5

    move-object v6, v9

    move-object v5, v14

    goto/16 :goto_94

    .line 405
    :cond_166
    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-wide/from16 v20, v7

    move-object/from16 v0, p0

    goto/16 :goto_68

    .line 407
    :cond_172
    nop

    .line 409
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->addChild(Landroid/hardware/display/DisplayTopology$TreeNode;)V

    .line 410
    invoke-static {v6}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18b

    .line 413
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    move-object/from16 v0, p0

    goto/16 :goto_53

    .line 411
    :cond_18b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child not in pending set! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1a4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 419
    return-void

    .line 313
    :cond_1a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newPos has wrong number of entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeDisplay(I)Z
    .registers 8

    .line 260
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    if-nez v0, :cond_a

    .line 261
    const/4 p1, 0x0

    return p1

    .line 265
    :cond_a
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 266
    iget-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 268
    :goto_17
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 269
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 270
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-eq v2, p1, :cond_3c

    .line 271
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v3

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v4

    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/display/DisplayTopology;->addDisplay(IIII)V

    .line 274
    :cond_3c
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmChildren(Landroid/hardware/display/DisplayTopology$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 275
    goto :goto_17

    .line 277
    :cond_44
    iget v0, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    if-ne v0, p1, :cond_58

    .line 278
    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    if-eqz p1, :cond_55

    .line 279
    iget-object p1, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmDisplayId(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result p1

    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    goto :goto_58

    .line 281
    :cond_55
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    .line 284
    :cond_58
    :goto_58
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 635
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 636
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayTopology;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 637
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateDisplay(IIII)Z
    .registers 8

    .line 234
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-static {p1, v0}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 235
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 236
    return v1

    .line 238
    :cond_a
    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalWidth(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-ne v2, p2, :cond_1d

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalHeight(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-ne v2, p3, :cond_1d

    invoke-static {v0}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fgetmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;)I

    move-result v2

    if-ne v2, p4, :cond_1d

    .line 240
    return v1

    .line 242
    :cond_1d
    invoke-static {v0, p2}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmLogicalWidth(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 243
    invoke-static {v0, p3}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmLogicalHeight(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 244
    invoke-static {v0, p4}, Landroid/hardware/display/DisplayTopology$TreeNode;->-$$Nest$fputmLogicalDensity(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    .line 245
    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " updated, new logical width: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", new logicalHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", new density: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayTopology"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 596
    iget-object v0, p0, Landroid/hardware/display/DisplayTopology;->mRoot:Landroid/hardware/display/DisplayTopology$TreeNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 597
    iget p2, p0, Landroid/hardware/display/DisplayTopology;->mPrimaryDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return-void
.end method
