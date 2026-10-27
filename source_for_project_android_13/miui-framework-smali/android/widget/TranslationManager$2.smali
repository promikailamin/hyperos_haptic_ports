.class Landroid/widget/TranslationManager$2;
.super Landroid/os/AsyncTask;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager;->doDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TranslationManager;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TranslationManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TranslationManager;

    .line 90
    iput-object p1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 90
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 93
    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-$$Nest$fgetmContext(Landroid/widget/TranslationManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v1}, Landroid/widget/TranslationManager;->-$$Nest$fgetmConnection(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 90
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/TranslationManager$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 99
    iget-object v0, p0, Landroid/widget/TranslationManager$2;->this$0:Landroid/widget/TranslationManager;

    invoke-static {v0}, Landroid/widget/TranslationManager;->-$$Nest$monDestroyed(Landroid/widget/TranslationManager;)V

    .line 100
    return-void
.end method
