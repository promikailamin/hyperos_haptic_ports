.class public Landroid/powerconsumption/MiuiDrawableImpl;
.super Ljava/lang/Object;
.source "MiuiDrawableImpl.java"

# interfaces
.implements Landroid/powerconsumption/MiuiDrawableStub;


# instance fields
.field private blacklist mShouldDeclineWhiteColor:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/powerconsumption/MiuiDrawableImpl;->mShouldDeclineWhiteColor:Z

    return-void
.end method


# virtual methods
.method public blacklist getDeclineColor(I)I
    .registers 3
    .param p1, "color"    # I

    .line 25
    invoke-static {p1}, Landroid/util/MiuiDeclineWhiteColorUtil;->getDeclineColor(I)I

    move-result v0

    return v0
.end method

.method public blacklist getShouldDeclineWhiteColor()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Landroid/powerconsumption/MiuiDrawableImpl;->mShouldDeclineWhiteColor:Z

    return v0
.end method

.method public blacklist isShouldDeclineColor(I)Z
    .registers 3
    .param p1, "color"    # I

    .line 29
    invoke-static {p1}, Landroid/util/MiuiDeclineWhiteColorUtil;->isShouldDeclineColor(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setShouldDeclineWhiteColor(Z)V
    .registers 2
    .param p1, "should"    # Z

    .line 15
    iput-boolean p1, p0, Landroid/powerconsumption/MiuiDrawableImpl;->mShouldDeclineWhiteColor:Z

    .line 16
    return-void
.end method
