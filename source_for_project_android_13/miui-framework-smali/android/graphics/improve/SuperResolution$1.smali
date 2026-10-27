.class Landroid/graphics/improve/SuperResolution$1;
.super Landroid/os/AsyncTask;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/improve/SuperResolution;->initAsync(Landroid/content/Context;)V
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
.field final synthetic blacklist this$0:Landroid/graphics/improve/SuperResolution;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;

    .line 218
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$1;->this$0:Landroid/graphics/improve/SuperResolution;

    iput-object p2, p0, Landroid/graphics/improve/SuperResolution$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 218
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/graphics/improve/SuperResolution$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 221
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$1;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v1, p0, Landroid/graphics/improve/SuperResolution$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/graphics/improve/SuperResolution;->-$$Nest$minitInChildThread(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method
