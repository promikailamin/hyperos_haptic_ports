.class public Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathOpDefinition"
.end annotation


# instance fields
.field private blacklist mArgLength:I

.field private blacklist mOperation:Lcom/miui/autoui/MiuiAutoUIPath$Operation;


# direct methods
.method constructor blacklist <init>(Lcom/miui/autoui/MiuiAutoUIPath$Operation;I)V
    .registers 3
    .param p1, "operation"    # Lcom/miui/autoui/MiuiAutoUIPath$Operation;
    .param p2, "argLength"    # I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;->mOperation:Lcom/miui/autoui/MiuiAutoUIPath$Operation;

    .line 103
    iput p2, p0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;->mArgLength:I

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist exec(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 107
    iget v0, p0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;->mArgLength:I

    invoke-static {p2, v0}, Lcom/miui/autoui/MiuiAutoUIPath;->checkArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;I)V

    .line 108
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUIPath$PathOpDefinition;->mOperation:Lcom/miui/autoui/MiuiAutoUIPath$Operation;

    invoke-interface {v0, p1, p2}, Lcom/miui/autoui/MiuiAutoUIPath$Operation;->apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V

    .line 109
    return-void
.end method
