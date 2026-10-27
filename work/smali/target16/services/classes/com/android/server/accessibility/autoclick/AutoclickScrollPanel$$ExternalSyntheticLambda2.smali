.class public final synthetic Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/widget/ImageButton;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ImageButton;

    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ImageButton;

    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->$r8$lambda$E6_SHoojNKH_pyZNu1hnsLh3-yg(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;Landroid/widget/ImageButton;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
