.class public Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;
.super Landroid/database/ContentObserver;
.source "BrightnessMinModeModifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Landroid/os/Handler;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 76
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;

    invoke-static {p1}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->-$$Nest$fgetmContext(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;)Landroid/content/Context;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 77
    const-string/jumbo v0, "minmode_active"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    move v1, v2

    :cond_18
    invoke-static {v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->-$$Nest$fputmIsActive(Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;Z)V

    .line 82
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method
