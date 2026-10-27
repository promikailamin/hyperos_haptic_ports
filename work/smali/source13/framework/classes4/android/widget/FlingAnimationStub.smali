.class public interface abstract Landroid/widget/FlingAnimationStub;
.super Ljava/lang/Object;
.source "FlingAnimationStub.java"


# static fields
.field public static final blacklist FLING_END:I = 0x0

.field public static final blacklist FLING_START:I = 0x1


# direct methods
.method public static blacklist newInstance()Landroid/widget/FlingAnimationStub;
    .registers 1

    .line 21
    const-class v0, Landroid/widget/FlingAnimationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FlingAnimationStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getFlingFlag()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOptimizeOfVelocityY(FI)I
    .registers 3
    .param p1, "oldVelocityY"    # F
    .param p2, "velocityY"    # I

    .line 44
    return p2
.end method

.method public blacklist initialize(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    return-void
.end method

.method public blacklist isOptimizeEnable()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFlingFlag(I)V
    .registers 2
    .param p1, "flingState"    # I

    .line 37
    return-void
.end method
