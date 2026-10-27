.class Lcom/android/internal/lineage/util/palette/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/lineage/util/palette/Palette$Builder;->generate(Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/lineage/util/palette/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/lineage/util/palette/Palette$Builder;

.field final synthetic blacklist val$listener:Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/lineage/util/palette/Palette$Builder;Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->this$0:Lcom/android/internal/lineage/util/palette/Palette$Builder;

    iput-object p2, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->val$listener:Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/lineage/util/palette/Palette;
    .registers 2

    .line 622
    iget-object p1, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->this$0:Lcom/android/internal/lineage/util/palette/Palette$Builder;

    invoke-virtual {p1}, Lcom/android/internal/lineage/util/palette/Palette$Builder;->generate()Lcom/android/internal/lineage/util/palette/Palette;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 619
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->doInBackground([Landroid/graphics/Bitmap;)Lcom/android/internal/lineage/util/palette/Palette;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Lcom/android/internal/lineage/util/palette/Palette;)V
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->val$listener:Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Lcom/android/internal/lineage/util/palette/Palette$PaletteAsyncListener;->onGenerated(Lcom/android/internal/lineage/util/palette/Palette;)V

    .line 628
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 619
    check-cast p1, Lcom/android/internal/lineage/util/palette/Palette;

    invoke-virtual {p0, p1}, Lcom/android/internal/lineage/util/palette/Palette$Builder$1;->onPostExecute(Lcom/android/internal/lineage/util/palette/Palette;)V

    return-void
.end method
