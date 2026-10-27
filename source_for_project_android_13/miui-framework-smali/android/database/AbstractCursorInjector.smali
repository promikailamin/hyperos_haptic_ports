.class final Landroid/database/AbstractCursorInjector;
.super Ljava/lang/Object;
.source "AbstractCursorInjector.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static blacklist before_moveToPosition(Landroid/database/AbstractCursor;I)V
    .registers 4
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .line 24
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 25
    .local v0, "count":I
    if-lt p1, v0, :cond_7

    .line 26
    return-void

    .line 30
    :cond_7
    if-gez p1, :cond_a

    .line 31
    return-void

    .line 35
    :cond_a
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_f

    .line 36
    return-void

    .line 39
    :cond_f
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v1, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 40
    return-void
.end method

.method public static blacklist calibRowCountForReadRow(Landroid/database/AbstractCursor;I)V
    .registers 2
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .line 43
    invoke-static {p0, p1}, Landroid/database/AbstractCursorInjector;->before_moveToPosition(Landroid/database/AbstractCursor;I)V

    .line 44
    return-void
.end method

.method public static blacklist checkPosition(Landroid/database/AbstractCursor;I)Z
    .registers 4
    .param p0, "thiz"    # Landroid/database/AbstractCursor;
    .param p1, "position"    # I

    .line 47
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 48
    .local v0, "count":I
    if-lt p1, v0, :cond_a

    .line 49
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 50
    const/4 v1, 0x0

    return v1

    .line 52
    :cond_a
    const/4 v1, 0x1

    return v1
.end method
