.class public Landroid/view/HandWritingAllyKeyboardTypeStubImpl;
.super Ljava/lang/Object;
.source "HandWritingAllyKeyboardTypeStubImpl.java"

# interfaces
.implements Landroid/view/HandWritingAllyKeyboardTypeStub;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-class v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist recordHandWritingKeyboardType(Landroid/view/ViewRootImpl;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 19
    if-nez p2, :cond_a

    .line 20
    sget-object v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;->TAG:Ljava/lang/String;

    const-string v1, "isInterceptPerformAccessibilityActionUiThread: arguments == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 23
    :cond_a
    const/4 v0, 0x0

    const-string v1, "GESTURE_TYPE_ACCESSIBILITY_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "gestureTypeAccessibilityType":I
    sget-object v1, Landroid/view/HandWritingAllyKeyboardTypeStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInterceptPerformAccessibilityActionUiThread gesture type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_31

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/ViewRootImpl;->setHandWritingCurrentKeyboardType(I)V

    goto :goto_39

    .line 27
    :cond_31
    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    .line 29
    :cond_36
    invoke-virtual {p1, v2}, Landroid/view/ViewRootImpl;->setHandWritingCurrentKeyboardType(I)V

    .line 31
    :cond_39
    :goto_39
    return-void
.end method
