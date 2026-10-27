.class public interface abstract Landroid/widget/EditorStub;
.super Ljava/lang/Object;
.source "EditorStub.java"


# direct methods
.method public static blacklist newInstance()Landroid/widget/EditorStub;
    .registers 1

    .line 14
    const-class v0, Landroid/widget/EditorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditorStub;

    return-object v0
.end method


# virtual methods
.method public blacklist init(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 19
    return-void
.end method

.method public blacklist insertionHandlePositionChanged(ILandroid/graphics/RectF;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 27
    return-void
.end method

.method public blacklist needSendHandlePosition()Z
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V
    .registers 4
    .param p1, "startHandle"    # Z
    .param p2, "type"    # I
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 31
    return-void
.end method
