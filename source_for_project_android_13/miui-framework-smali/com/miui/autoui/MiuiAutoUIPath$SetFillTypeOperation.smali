.class Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"

# interfaces
.implements Lcom/miui/autoui/MiuiAutoUIPath$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetFillTypeOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 374
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$SetFillTypeOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 378
    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toPathFillType(Ljava/lang/Object;)Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 379
    return-void
.end method
