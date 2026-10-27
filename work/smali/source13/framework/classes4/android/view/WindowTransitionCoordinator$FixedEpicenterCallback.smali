.class Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;
.super Landroid/transition/Transition$EpicenterCallback;
.source "WindowTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEpicenterCallback"
.end annotation


# instance fields
.field private blacklist mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 953
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 960
    iget-object v0, p0, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist setEpicenter(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "epicenter"    # Landroid/graphics/Rect;

    .line 956
    iput-object p1, p0, Landroid/view/WindowTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-void
.end method
