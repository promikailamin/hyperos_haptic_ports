.class Landroid/util/MiuiMultiWindowUtils$1PositionItem;
.super Ljava/lang/Object;
.source "MiuiMultiWindowUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/MiuiMultiWindowUtils;->avoidAsPossibleOnPad(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/util/MiuiMultiWindowUtils$1PositionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mPosition:Landroid/graphics/Rect;

.field private blacklist mTransactRegion:Landroid/graphics/Rect;

.field private blacklist mTranslateLength:I

.field private blacklist updated:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPosition(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdated(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->updated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->updatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "translateLength"    # I
    .param p3, "transactRegion"    # Landroid/graphics/Rect;

    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2627
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->updated:Z

    .line 2630
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mPosition:Landroid/graphics/Rect;

    .line 2631
    iput p2, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTranslateLength:I

    .line 2632
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    .line 2633
    return-void
.end method

.method private blacklist updatePositionIfNeeded(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)V
    .registers 4
    .param p1, "newPosition"    # Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    .line 2643
    invoke-virtual {p1, p0}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->compareTo(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)I

    move-result v0

    if-gez v0, :cond_1c

    .line 2644
    iget-object v0, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mPosition:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mPosition:Landroid/graphics/Rect;

    .line 2645
    iget v0, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTranslateLength:I

    iput v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTranslateLength:I

    .line 2646
    iget-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2647
    iget-boolean v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->updated:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->updated:Z

    .line 2649
    :cond_1c
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)I
    .registers 5
    .param p1, "item"    # Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    .line 2637
    iget-object v0, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    .line 2638
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTransactRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2639
    .local v0, "temp":I
    if-nez v0, :cond_23

    iget v1, p0, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTranslateLength:I

    iget v2, p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->mTranslateLength:I

    sub-int/2addr v1, v2

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 2623
    check-cast p1, Landroid/util/MiuiMultiWindowUtils$1PositionItem;

    invoke-virtual {p0, p1}, Landroid/util/MiuiMultiWindowUtils$1PositionItem;->compareTo(Landroid/util/MiuiMultiWindowUtils$1PositionItem;)I

    move-result p1

    return p1
.end method
