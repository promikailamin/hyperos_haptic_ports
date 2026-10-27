.class public final Landroid/view/MotionEvent$FreeformProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FreeformProperties"
.end annotation


# instance fields
.field private blacklist freeFormScale:F

.field private blacklist freeformScaleIntercepted:Z

.field final synthetic blacklist this$0:Landroid/view/MotionEvent;

.field private blacklist topLeftX:F

.field private blacklist topLeftY:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfreeFormScale(Landroid/view/MotionEvent$FreeformProperties;)F
    .registers 1

    iget p0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeFormScale:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfreeformScaleIntercepted(Landroid/view/MotionEvent$FreeformProperties;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeformScaleIntercepted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettopLeftX(Landroid/view/MotionEvent$FreeformProperties;)F
    .registers 1

    iget p0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettopLeftY(Landroid/view/MotionEvent$FreeformProperties;)F
    .registers 1

    iget p0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftY:F

    return p0
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/MotionEvent;

    .line 4516
    iput-object p1, p0, Landroid/view/MotionEvent$FreeformProperties;->this$0:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4517
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeformScaleIntercepted:Z

    .line 4518
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeFormScale:F

    .line 4519
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftX:F

    .line 4520
    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftY:F

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 2

    .line 4532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeformScaleIntercepted:Z

    .line 4533
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftX:F

    .line 4534
    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftY:F

    .line 4535
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeFormScale:F

    .line 4536
    return-void
.end method

.method public blacklist set(FFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "scale"    # F

    .line 4524
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent$FreeformProperties;->freeformScaleIntercepted:Z

    .line 4525
    iput p1, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftX:F

    .line 4526
    iput p2, p0, Landroid/view/MotionEvent$FreeformProperties;->topLeftY:F

    .line 4527
    iput p3, p0, Landroid/view/MotionEvent$FreeformProperties;->freeFormScale:F

    .line 4528
    return-void
.end method
