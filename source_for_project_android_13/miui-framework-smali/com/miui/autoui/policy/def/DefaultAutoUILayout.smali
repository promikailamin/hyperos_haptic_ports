.class public Lcom/miui/autoui/policy/def/DefaultAutoUILayout;
.super Ljava/lang/Object;
.source "DefaultAutoUILayout.java"

# interfaces
.implements Lcom/miui/autoui/policy/api/IAutoUILayout;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist postViewLayout(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 11
    return-void
.end method

.method public blacklist preViewLayout(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 16
    return-void
.end method
