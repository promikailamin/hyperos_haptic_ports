.class Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field private blacklist mTension:F

.field final synthetic blacklist this$0:Lmiui/view/ScreenView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmTension(Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;F)V
    .registers 2

    iput p1, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return-void
.end method

.method public constructor blacklist <init>(Lmiui/view/ScreenView;)V
    .registers 2

    .line 2200
    iput-object p1, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/view/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2201
    invoke-static {p1}, Lmiui/view/ScreenView;->-$$Nest$fgetmOvershootTension(Lmiui/view/ScreenView;)F

    move-result p1

    iput p1, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2202
    return-void
.end method


# virtual methods
.method public blacklist disableSettle()V
    .registers 2

    .line 2211
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2212
    return-void
.end method

.method public whitelist getInterpolation(F)F
    .registers 6
    .param p1, "t"    # F

    .line 2215
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 2216
    mul-float v1, p1, p1

    iget v2, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float v3, v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method

.method public blacklist setDistance(II)V
    .registers 5
    .param p1, "distance"    # I
    .param p2, "velocity"    # I

    .line 2205
    if-lez p1, :cond_b

    .line 2206
    iget-object v0, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/view/ScreenView;

    invoke-static {v0}, Lmiui/view/ScreenView;->-$$Nest$fgetmOvershootTension(Lmiui/view/ScreenView;)F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    goto :goto_11

    .line 2207
    :cond_b
    iget-object v0, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/view/ScreenView;

    invoke-static {v0}, Lmiui/view/ScreenView;->-$$Nest$fgetmOvershootTension(Lmiui/view/ScreenView;)F

    move-result v0

    :goto_11
    iput v0, p0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2208
    return-void
.end method
