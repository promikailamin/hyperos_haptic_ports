.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field greylist-max-o forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-o isEnabled:Z

.field greylist-max-o itemId:J

.field greylist-max-o recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-r scrappedFromPosition:I

.field greylist-max-p viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 3

    .line 7146
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7136
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7147
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4

    .line 7150
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7136
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7151
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 7142
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7136
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 7155
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7136
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7156
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 7161
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7163
    const-string v0, "list:viewType"

    iget v1, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7164
    const-string v0, "list:recycledHeaderFooter"

    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7165
    const-string v0, "list:forceAdd"

    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7166
    const-string v0, "list:isEnabled"

    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7167
    return-void
.end method
