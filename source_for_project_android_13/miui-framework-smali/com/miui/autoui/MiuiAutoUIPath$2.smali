.class Lcom/miui/autoui/MiuiAutoUIPath$2;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autoui/MiuiAutoUIPath;->clonePath(Landroid/graphics/Path;)Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/miui/autoui/MiuiAutoUIPath$Op;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/autoui/MiuiAutoUIPath;

.field final synthetic blacklist val$dst:Landroid/graphics/Path;


# direct methods
.method constructor blacklist <init>(Lcom/miui/autoui/MiuiAutoUIPath;Landroid/graphics/Path;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/autoui/MiuiAutoUIPath;

    .line 61
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUIPath$2;->this$0:Lcom/miui/autoui/MiuiAutoUIPath;

    iput-object p2, p0, Lcom/miui/autoui/MiuiAutoUIPath$2;->val$dst:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 7
    .param p1, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 64
    invoke-static {}, Lcom/miui/autoui/MiuiAutoUIPath;->-$$Nest$sfgetOP_MAP()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmName(Lcom/miui/autoui/MiuiAutoUIPath$Op;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    new-instance v3, Lcom/miui/autoui/MiuiAutoUIPath$2$1;

    invoke-direct {v3, p0}, Lcom/miui/autoui/MiuiAutoUIPath$2$1;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$2;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;-><init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;

    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUIPath$2;->val$dst:Landroid/graphics/Path;

    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;->exec(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V

    .line 70
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 61
    check-cast p1, Lcom/miui/autoui/MiuiAutoUIPath$Op;

    invoke-virtual {p0, p1}, Lcom/miui/autoui/MiuiAutoUIPath$2;->accept(Lcom/miui/autoui/MiuiAutoUIPath$Op;)V

    return-void
.end method
