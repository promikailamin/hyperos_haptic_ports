.class Landroid/widget/Editor$HandleView$HandleWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleWindow"
.end annotation


# static fields
.field private static final blacklist INSERT_HANDLE:I = 0x3e9

.field private static final blacklist SELECT_LEFT_HANDLE:I = 0x3ea

.field private static final blacklist SELECT_RIGHT_HANDLE:I = 0x3eb


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor$HandleView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 4894
    iput-object p1, p0, Landroid/widget/Editor$HandleView$HandleWindow;->this$1:Landroid/widget/Editor$HandleView;

    .line 4895
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4896
    return-void
.end method


# virtual methods
.method public whitelist test-api hashCode()I
    .registers 3

    .line 4900
    iget-object v0, p0, Landroid/widget/Editor$HandleView$HandleWindow;->this$1:Landroid/widget/Editor$HandleView;

    instance-of v1, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_9

    .line 4901
    const/16 v0, 0x3e9

    return v0

    .line 4902
    :cond_9
    instance-of v1, v0, Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_1b

    .line 4903
    check-cast v0, Landroid/widget/Editor$SelectionHandleView;

    invoke-static {v0}, Landroid/widget/Editor$SelectionHandleView;->-$$Nest$misStartHandle(Landroid/widget/Editor$SelectionHandleView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4904
    const/16 v0, 0x3ea

    goto :goto_1a

    :cond_18
    const/16 v0, 0x3eb

    .line 4903
    :goto_1a
    return v0

    .line 4906
    :cond_1b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
