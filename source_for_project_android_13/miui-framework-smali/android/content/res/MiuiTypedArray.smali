.class public Landroid/content/res/MiuiTypedArray;
.super Landroid/content/res/TypedArray;
.source "MiuiTypedArray.java"


# instance fields
.field private blacklist mIsMiuiResources:Z


# direct methods
.method constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 13
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    .line 14
    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/MiuiResources;

    iput-boolean v0, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    .line 15
    return-void
.end method

.method private blacklist loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "index"    # I

    .line 41
    iget-boolean v0, p0, Landroid/content/res/MiuiTypedArray;->mIsMiuiResources:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 42
    return-object v1

    .line 44
    :cond_6
    iget-object v0, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    aget v0, v0, v2

    .line 45
    .local v0, "type":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_22

    .line 46
    iget-object v2, p0, Landroid/content/res/MiuiTypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x3

    aget v2, v2, v3

    .line 47
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/content/res/MiuiTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources;

    invoke-virtual {v3, v2}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 48
    .local v3, "cs":Ljava/lang/CharSequence;
    if-eqz v3, :cond_22

    .line 49
    return-object v3

    .line 52
    .end local v2    # "id":I
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_22
    return-object v1
.end method


# virtual methods
.method public whitelist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 33
    mul-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 34
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 37
    :cond_d
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getText(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "index"    # I

    .line 24
    mul-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0}, Landroid/content/res/MiuiTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 25
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_9

    .line 26
    return-object v0

    .line 28
    :cond_9
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
