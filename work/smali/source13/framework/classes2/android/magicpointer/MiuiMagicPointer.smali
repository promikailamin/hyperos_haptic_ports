.class public interface abstract Landroid/magicpointer/MiuiMagicPointer;
.super Ljava/lang/Object;
.source "MiuiMagicPointer.java"


# virtual methods
.method public blacklist getService()Landroid/magicpointer/IMiuiMagicPointer;
    .registers 2

    .line 6
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist performMiuiMagicPointerPolicy(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "policy"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .line 8
    return-void
.end method
