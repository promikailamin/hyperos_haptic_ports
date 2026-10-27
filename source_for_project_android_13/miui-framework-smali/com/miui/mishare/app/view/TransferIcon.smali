.class public Lcom/miui/mishare/app/view/TransferIcon;
.super Landroid/widget/RelativeLayout;
.source "TransferIcon.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/TransferIcon;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/TransferIcon;->setClipToOutline(Z)V

    .line 34
    new-instance v0, Lcom/miui/mishare/app/view/TransferIcon$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/TransferIcon$1;-><init>(Lcom/miui/mishare/app/view/TransferIcon;)V

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/TransferIcon;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 40
    return-void
.end method
