.class public final synthetic Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda0;->f$0:F

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/android/server/UiModeManagerService$14$$ExternalSyntheticLambda0;->f$0:F

    check-cast p1, Landroid/app/IUiModeManagerCallback;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$14;->$r8$lambda$VzlvZp-BLObNiPJySDYwBDWD6Lk(FLandroid/app/IUiModeManagerCallback;)V

    return-void
.end method
