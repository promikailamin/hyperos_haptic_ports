.class public Landroid/view/WindowLayoutStubImpl;
.super Ljava/lang/Object;
.source "WindowLayoutStubImpl.java"

# interfaces
.implements Landroid/view/WindowLayoutStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 13
    if-nez p1, :cond_4

    .line 14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_4
    iget-boolean v0, p1, Landroid/view/WindowManager$LayoutParams;->miuiAlwaysDisplayInCutout:Z

    if-eqz v0, :cond_a

    .line 17
    const/4 v0, 0x3

    return v0

    .line 19
    :cond_a
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v0
.end method
