.class Landroid/graphics/improve/SuperResolution$2;
.super Ljava/lang/Object;
.source "SuperResolution.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/improve/SuperResolution;->showToast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/improve/SuperResolution;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;

    .line 293
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$2;->this$0:Landroid/graphics/improve/SuperResolution;

    iput-object p2, p0, Landroid/graphics/improve/SuperResolution$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 296
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$2;->val$context:Landroid/content/Context;

    const v1, 0x110f03a5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method
