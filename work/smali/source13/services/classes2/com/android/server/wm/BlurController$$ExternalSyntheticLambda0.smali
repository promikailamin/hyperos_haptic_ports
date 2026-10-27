.class public final synthetic Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BlurController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    return-void
.end method


# virtual methods
.method public final onThermalStatusChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlurController;->lambda$new$0$com-android-server-wm-BlurController(I)V

    return-void
.end method
