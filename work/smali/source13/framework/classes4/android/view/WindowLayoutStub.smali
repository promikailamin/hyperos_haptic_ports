.class public interface abstract Landroid/view/WindowLayoutStub;
.super Ljava/lang/Object;
.source "WindowLayoutStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowLayoutStub$Instance;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/view/WindowLayoutStub;
    .registers 1

    .line 22
    invoke-static {}, Landroid/view/WindowLayoutStub$Instance;->-$$Nest$sfgetsInstance()Landroid/view/WindowLayoutStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 26
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v0
.end method
