.class Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;
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
    name = "AddRoundRectRadiiOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 231
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRoundRectRadiiOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 235
    invoke-static {p1, p2}, Lcom/miui/autoui/MiuiAutoUIPath;->addRoundRect(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V

    .line 236
    return-void
.end method
