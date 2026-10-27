.class Landroid/widget/TranslationManager$TranslationRemoteCallback;
.super Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationRemoteCallback"
.end annotation


# instance fields
.field blacklist mTask:Landroid/widget/TranslationManager$TranslateTask;

.field final synthetic blacklist this$0:Landroid/widget/TranslationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;)V
    .registers 3
    .param p2, "task"    # Landroid/widget/TranslationManager$TranslateTask;

    .line 190
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Lcom/miui/translationservice/ITranslationRemoteCallback$Stub;-><init>()V

    .line 191
    iput-object p2, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->mTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist onTranslationFinished(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 4
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .line 196
    const-string v0, "TranslationManager"

    const-string v1, "translate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslationRemoteCallback;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-$$Nest$fgetmMainHandler(Landroid/widget/TranslationManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TranslationManager$TranslationRemoteCallback$1;-><init>(Landroid/widget/TranslationManager$TranslationRemoteCallback;Lcom/miui/translationservice/provider/TranslationResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method
