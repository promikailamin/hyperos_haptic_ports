.class Lcom/miui/mishare/app/view/MiShareTransmissionView$1;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "MiShareTransmissionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

.field final synthetic blacklist val$space:I


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareTransmissionView;

    .line 159
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    iput p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$space:I

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 162
    iget v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;->val$space:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 163
    return-void
.end method
