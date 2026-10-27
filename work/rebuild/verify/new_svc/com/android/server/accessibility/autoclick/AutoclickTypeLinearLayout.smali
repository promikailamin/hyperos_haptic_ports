.class public Lcom/android/server/accessibility/autoclick/AutoclickTypeLinearLayout;
.super Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;
.source "AutoclickTypeLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
