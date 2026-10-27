.class Lcom/miui/autoui/MiuiAutoUIPath$2$1;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"

# interfaces
.implements Lcom/miui/autoui/MiuiAutoUIPath$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autoui/MiuiAutoUIPath$2;->accept(Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/miui/autoui/MiuiAutoUIPath$2;


# direct methods
.method constructor blacklist <init>(Lcom/miui/autoui/MiuiAutoUIPath$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/miui/autoui/MiuiAutoUIPath$2;

    .line 64
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUIPath$2$1;->this$1:Lcom/miui/autoui/MiuiAutoUIPath$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown path Operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmName(Lcom/miui/autoui/MiuiAutoUIPath$Op;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoUI_MiuiAutoUIPath"

    invoke-static {v1, v0}, Lcom/miui/autoui/AutoUILogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
