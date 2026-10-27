.class public Lmiui/util/ResourceMapperUtil;
.super Ljava/lang/Object;
.source "ResourceMapperUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist resolveReference(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 11
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 13
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_f

    move v1, p1

    goto :goto_11

    :cond_f
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_11
    return v1
.end method
