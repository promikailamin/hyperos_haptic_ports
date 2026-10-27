.class public Landroid/app/ActionBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public whitelist gravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800003
                to = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x800005
                to = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4

    .line 1406
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1407
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 1395
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1362
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1396
    const p1, 0x800013

    iput p1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1397
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4

    .line 1400
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1362
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1402
    iput p3, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1403
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/ActionBar$LayoutParams;)V
    .registers 3

    .line 1410
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1362
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1411
    iget p1, p1, Landroid/app/ActionBar$LayoutParams;->gravity:I

    iput p1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1412
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1384
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1362
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1386
    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1388
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1391
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 1415
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1362
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1416
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 1431
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1433
    const-string v0, "gravity"

    iget v1, p0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1434
    return-void
.end method
