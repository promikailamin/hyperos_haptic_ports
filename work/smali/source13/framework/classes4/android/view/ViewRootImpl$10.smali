.class Landroid/view/ViewRootImpl$10;
.super Ljava/util/ArrayList;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 12070
    iput-object p1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12072
    const-string v0, "com.miui.gallery"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    .line 12073
    const-string v0, "com.miui.mediaeditor"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    .line 12074
    const-string v0, "com.miui.extraphoto"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$10;->add(Ljava/lang/Object;)Z

    .line 12075
    return-void
.end method
