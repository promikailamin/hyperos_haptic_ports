.class public final synthetic Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    return-void
.end method


# virtual methods
.method public final onHoverChanged(Z)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-interface {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;->onHoverChange(Z)V

    return-void
.end method
