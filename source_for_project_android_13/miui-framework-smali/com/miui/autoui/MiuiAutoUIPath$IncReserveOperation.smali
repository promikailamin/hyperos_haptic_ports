.class Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;
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
    name = "IncReserveOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 365
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$IncReserveOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 369
    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->incReserve(I)V

    .line 370
    return-void
.end method
