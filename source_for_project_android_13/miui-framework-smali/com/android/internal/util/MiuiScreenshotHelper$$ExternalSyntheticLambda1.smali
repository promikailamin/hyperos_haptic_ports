.class public final synthetic Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/MiuiScreenshotHelper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/MiuiScreenshotHelper;ILjava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    iput p2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/MiuiScreenshotHelper;

    iget v1, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/internal/util/MiuiScreenshotHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/MiuiScreenshotHelper;->lambda$takeScreenshot$0$com-android-internal-util-MiuiScreenshotHelper(ILjava/util/function/Consumer;)V

    return-void
.end method
