.class public Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# static fields
.field public static final TYPE_REGULAR_BARS:I


# instance fields
.field public mActive:Z

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public mPreserveId:I

.field public mPreservedInsets:Ljava/util/ArrayList;

.field public mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field public mRegularBarsInsets:Ljava/util/ArrayList;

.field public mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2172
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    .line 2173
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->TYPE_REGULAR_BARS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2193
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    return-void
.end method

.method public static copyRegularBarInsets(Landroid/view/InsetsState;)Ljava/util/ArrayList;
    .registers 6

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2203
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_25

    .line 2204
    invoke-virtual {p0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 2205
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    sget v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->TYPE_REGULAR_BARS:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_22

    .line 2206
    new-instance v3, Landroid/view/InsetsSource;

    invoke-direct {v3, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_25
    return-object v0
.end method


# virtual methods
.method public canPreserve()Z
    .registers 3

    .line 2197
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 2198
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method
