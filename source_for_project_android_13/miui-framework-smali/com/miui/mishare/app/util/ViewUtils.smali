.class public Lcom/miui/mishare/app/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider;,
        Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0x96

.field private static final blacklist FOREGROUND_ALPHA:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist handleTouchOf(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 18
    new-instance v0, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener;-><init>(Lcom/miui/mishare/app/util/ViewUtils$CustomOnTouchListener-IA;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .local v0, "foreground":Landroid/graphics/drawable/ColorDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    return-void
.end method

.method public static blacklist makeRoundCorner(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 26
    new-instance v0, Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider;-><init>(Lcom/miui/mishare/app/util/ViewUtils$RoundOutlineProvider-IA;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 27
    return-void
.end method
