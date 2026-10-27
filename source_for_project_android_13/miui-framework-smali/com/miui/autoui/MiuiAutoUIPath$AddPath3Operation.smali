.class Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;
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
    name = "AddPath3Operation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 410
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddPath3Operation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 414
    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toPath(Ljava/lang/Object;)Landroid/graphics/Path;

    move-result-object v0

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/miui/autoui/MiuiAutoUIPath;->toMatrix(Ljava/lang/Object;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 415
    return-void
.end method
