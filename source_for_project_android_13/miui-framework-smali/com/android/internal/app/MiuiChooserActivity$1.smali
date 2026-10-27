.class Lcom/android/internal/app/MiuiChooserActivity$1;
.super Landroid/app/SharedElementCallback;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MiuiChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;

    .line 915
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 918
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/MiuiChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 919
    const-string v0, "screenshot_preview_image"

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 923
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$1;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/MiuiChooserActivity;Z)V

    .line 924
    return-void
.end method
