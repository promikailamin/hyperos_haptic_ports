.class public Lcom/android/server/display/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReduceBrightColorsActivationChanged(ZZ)V
    .registers 3

    .line 666
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method

.method public onReduceBrightColorsStrengthChanged(I)V
    .registers 2

    .line 672
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->-$$Nest$mapplyReduceBrightColorsSplineAdjustment(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method
